.class public final Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;
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
    name = "z1OoOtry"
.end annotation


# instance fields
.field public final z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

.field public final synthetic z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

.field public z1OoOif:I


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    return-void
.end method


# virtual methods
.method public final z1OoOdo()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOif:I

    return p0
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOif:I

    return-void
.end method

.method public final z1OoOdo(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    invoke-virtual {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$200(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    const-string p1, "BounceEffect"

    const-string v0, "touch up overscroll"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public final z1OoOfor(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

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

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v1, v2

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    const-string v0, "BounceEffect"

    const-string v1, "touch down overscroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$100(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v3
.end method

.method public final z1OoOif(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOdo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$300(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    return v3

    :cond_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$000(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aget v5, v2, v1

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    aget v0, v2, v3

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    return v1

    :cond_1
    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    invoke-virtual {v2, v0, p1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)Z

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    iget v6, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    iget-boolean v7, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    iget-object v8, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v8, v8, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    if-ne v7, v8, :cond_2

    move v7, v3

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    iget v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOnew:F

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getFrictionFactor(FFZZ)F

    move-result v2

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    mul-float/2addr v5, v2

    iget v2, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v6, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    iget-object v7, v6, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iput-boolean v1, v7, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    iget-object v9, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v9, v9, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    if-eqz v9, :cond_4

    iget-boolean v10, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-nez v10, :cond_4

    cmpg-float v10, v2, v8

    if-lez v10, :cond_5

    :cond_4
    if-nez v9, :cond_6

    iget-boolean v9, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-eqz v9, :cond_6

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_6

    :cond_5
    iput-boolean v3, v7, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    iget-boolean v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    iput-boolean v4, v7, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoObyte:Z

    invoke-virtual {v5, v6}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v4, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->clampOffsetToBoundary(F)F

    move-result v2

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v4, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->shouldHandOffMoveToScroll(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v0, p1, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->performOverscrollHandoff(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    move-result v1

    :cond_6
    if-nez v1, :cond_7

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    invoke-virtual {p1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->accumulateInterceptedScrollDelta(F)V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    :cond_7
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method
