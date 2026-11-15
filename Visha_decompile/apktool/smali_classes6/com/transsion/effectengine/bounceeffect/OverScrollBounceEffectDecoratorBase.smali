.class public abstract Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
.implements Landroid/view/View$OnTouchListener;
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;,
        Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;,
        Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;,
        Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;,
        Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;,
        Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TOUCH_DRAG_MOVE_DIALOG_RATIO:F = 0.4f

.field protected static final DEFAULT_TOUCH_DRAG_MOVE_RATIO:F = 0.8f

.field protected static final DEFAULT_TOUCH_DRAG_MOVE_SMALL_SCREEN_RATIO:F = 0.4f

.field protected static final MAXIMUM_VELOCITY:F = 5000.0f

.field protected static final MAX_SINGLE_DRAG_DISTANCE:I = 0x3e8

.field protected static final MINIUM_VELOCITY:F = 500.0f

.field protected static final OPTIMIZED_DRAG_DAMPING:F = 1.11f

.field protected static final OPTIMIZED_DRAG_STIFF:F = 311.0f

.field protected static final OPTIMIZED_FLING_DAMPING:F = 1.005f

.field protected static final OPTIMIZED_FLING_DAMPING_H:F = 0.94f

.field protected static final OPTIMIZED_FLING_STIFF:F = 105.0f

.field protected static final OPTIMIZED_FLING_STIFF_H:F = 80.0f

.field protected static final OPTIMIZED_FRACTION_FACTOR:F = 0.65f

.field protected static final OPTIMIZED_FRACTION_FACTOR_DIFF_TTB:F = 1.1f

.field protected static final OPTIMIZED_FRACTION_FACTOR_H:F = 0.94f

.field protected static final SPRING_MAX_VELOCITY:F = 3000.0f

.field public static final TAG:Ljava/lang/String; = "BounceEffect"

.field protected static final VELOCITY_UNIT:I = 0x3e8

.field protected static damping:F = 1.2f

.field protected static stiffness:F = 400.0f


# instance fields
.field protected mAccumulatedMissedScrollDelta:F

.field protected mAvoidVelocity:Z

.field protected mBigDpModeEnabled:Z

.field protected final mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

.field protected mBounceEdgeEffect:Lcom/transsion/effectengine/bounceeffect/z1OoOfor;

.field protected mCardModeEnabled:Z

.field protected mCenterDisplayModeEnabled:Z

.field protected mCurIsFlingBounceBackState:Z

.field protected mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

.field protected mCustomDragBounceParameters:Z

.field protected mCustomDragSpringParameters:Z

.field protected mCustomFlingBounceParameters:Z

.field protected mDamping:F

.field protected mDialogModeEnabled:Z

.field protected mDiffFrictionFactor:Z

.field protected mDirectionYRaw:F

.field protected mDoubleFrictionEnabled:Z

.field protected mDragDampingHigh:F

.field protected mDragDampingLow:F

.field protected mDragDampingMedium:F

.field protected mDragIndex:F

.field protected mDragMoveRatio:F

.field protected mDragStiffnessHigh:F

.field protected mDragStiffnessLow:F

.field protected mDragStiffnessMedium:F

.field protected mFullDragFollowEnabled:Z

.field protected mGridModeEnabled:Z

.field protected final mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

.field protected mInitialTouchX:I

.field protected mInitialTouchY:I

.field protected mIsFirstEnterFlingBounceBack:Z

.field protected mJustCancelAnimation:Z

.field protected mLastTouchPassedToRecyclerViewX:I

.field protected mLastTouchPassedToRecyclerViewY:I

.field protected mLastTouchX:I

.field protected mLastTouchY:I

.field protected mLastYRaw:F

.field protected mMidDpModeEnabled:Z

.field protected mNestedEdgeReached:Z

.field protected mNestedEdgeReachedNeedUpdateFirstPoint:Z

.field protected mNestedFarEdgeReached:Z

.field protected mNestedFarEdgeReachedNeedUpdateFirstPoint:Z

.field protected mNestedScrollEnabled:Z

.field protected mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

.field protected final mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

.field protected mRefreshRateLimited:Z

.field protected mScreenHeight:F

.field protected mScreenWidth:F

.field protected mScrollMode:I

.field protected mSmallDpModeEnabled:Z

.field protected final mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

.field protected mStiffness:F

.field protected mTouchSlop:I

.field protected mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field protected mUseInitialFrictionFactor:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVibrateEnable:Z

.field protected final mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReachedNeedUpdateFirstPoint:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReachedNeedUpdateFirstPoint:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDoubleFrictionEnabled:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScrollMode:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewX:I

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTouchSlop:I

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAvoidVelocity:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mJustCancelAnimation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceEdgeEffect:Lcom/transsion/effectengine/bounceeffect/z1OoOfor;

    iput-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurIsFlingBounceBackState:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIsFirstEnterFlingBounceBack:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDialogModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCenterDisplayModeEnabled:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragBounceParameters:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragSpringParameters:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomFlingBounceParameters:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mUseInitialFrictionFactor:Z

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDiffFrictionFactor:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mRefreshRateLimited:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVibrateEnable:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mFullDragFollowEnabled:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragMoveRatio:F

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragIndex:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStiffness:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDamping:F

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;-><init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;-><init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    new-instance v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    invoke-direct {v1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;-><init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iput-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    iput-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {p1}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    const/4 v1, 0x3

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTouchSlop:I

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->initOrResetVelocityTracker()V

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->enable()V

    invoke-interface {p1}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->initFoldScreenState(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->setVibrateEnable(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->initVelocityTrackerIfNotExists()V

    return-void
.end method

.method public static synthetic access$100(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->initOrResetVelocityTracker()V

    return-void
.end method

.method public static synthetic access$200(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->recycleVelocityTracker()V

    return-void
.end method

.method public static synthetic access$300(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetState()V

    return-void
.end method

.method private initFoldScreenState(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenWidth:F

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenWidth:F

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    div-float/2addr p1, v0

    div-float/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initFoldScreenState maxWidthDp="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " minWidthDp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BounceEffect"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    goto :goto_0

    :cond_0
    const/high16 p1, 0x44160000    # 600.0f

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    :goto_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetOverScrollLastState()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    return-void
.end method

.method private resetState()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    iput-boolean v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iput-boolean v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewX:I

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewY:I

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetAccumulatedMissedScrollDelta()V

    return-void
.end method


# virtual methods
.method public accumulateInterceptedScrollDelta(F)V
    .locals 1

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    return-void
.end method

.method public applyOverscrollHandoff(Landroidx/recyclerview/widget/RecyclerView;FF)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    float-to-int p2, p2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p3}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    :cond_3
    return-void
.end method

.method public clampOffsetToBoundary(F)F
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public computeMissedRecyclerViewScrollDelta(Landroid/view/View;Landroid/view/MotionEvent;)F
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->hasRecyclerViewHandoffAnchor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aget v2, v0, p1

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 p2, 0x1

    aget p2, v0, p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewY:I

    sub-int/2addr p0, p1

    :goto_0
    int-to-float p0, p0

    return p0

    :cond_1
    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewX:I

    sub-int/2addr p0, v1

    goto :goto_0
.end method

.method public abstract createAnimation()V
.end method

.method public abstract createMotionAttributes()Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;
.end method

.method public disable()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    if-eq v0, v1, :cond_0

    const-string p0, "BounceEffect"

    const-string v0, "detaching while overscroll is in effect."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public enable()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public enableNestedScrollMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    return-void
.end method

.method public frictionFactor(F)F
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragSpringParameters:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragMoveRatio:F

    float-to-double v2, v0

    sub-float/2addr v1, p1

    float-to-double v0, v1

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragIndex:F

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    :goto_0
    mul-double/2addr p0, v2

    :goto_1
    double-to-float p0, p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDialogModeEnabled:Z

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    if-eqz v0, :cond_1

    sub-float/2addr v1, p1

    float-to-double p0, v1

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    sub-float/2addr v1, p1

    if-eqz p0, :cond_2

    float-to-double p0, v1

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_2
    float-to-double p0, v1

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr p0, v0

    goto :goto_1
.end method

.method public getCurrentState()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOdo()I

    move-result p0

    return p0
.end method

.method public abstract getFrictionFactor(FFZZ)F
.end method

.method public abstract getTranslationProperty(Landroid/view/View;)F
.end method

.method public abstract getVelocity(Landroid/view/VelocityTracker;)F
.end method

.method public getVibrateEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVibrateEnable:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {p0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getYDirection()F
    .locals 0

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDirectionYRaw:F

    return p0
.end method

.method public hasRecyclerViewHandoffAnchor()Z
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7fffffff

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewY:I

    if-eq p0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewX:I

    if-eq p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public abstract synthetic isBounceEdgeAnimRunning(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z
.end method

.method public isInIdleState()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRefreshRateLimited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mRefreshRateLimited:Z

    return p0
.end method

.method public isVertical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "from:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOdo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "to"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOdo()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyNestedScrollEdgeReached(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReachedNeedUpdateFirstPoint:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public notifyNestedScrollFarEdgeReached(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReachedNeedUpdateFirstPoint:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {p0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOfor(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x6

    const/4 p2, 0x0

    if-eq v0, p1, :cond_0

    return p2

    :cond_0
    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetState()V

    return p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastYRaw:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDirectionYRaw:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastYRaw:F

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {v0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOif(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->recordLastTouchPassedToRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_2
    return v0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetState()V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {p0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOdo(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastYRaw:F

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetOverScrollLastState()V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    invoke-interface {v0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;->z1OoOfor(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->recordLastTouchPassedToRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_5
    return v0
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public performOverscrollHandoff(Landroid/view/View;Landroid/view/MotionEvent;F)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getTranslationProperty(Landroid/view/View;)F

    move-result v0

    sub-float/2addr v0, p3

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resolveMissedRecyclerViewScrollDelta(Landroid/view/View;Landroid/view/MotionEvent;)F

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    add-float/2addr v2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetAccumulatedMissedScrollDelta()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->reanchorTouchPoints(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3, v2, p3}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->applyOverscrollHandoff(Landroidx/recyclerview/widget/RecyclerView;FF)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->recordLastTouchPassedToRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "overscroll handoff "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "vertical"

    goto :goto_0

    :cond_1
    const-string p0, "horizontal"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " missedScrollDelta="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " pendingTranslation="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " accumulated="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " targetOffset="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public reanchorTouchPoints(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aget v2, v0, p1

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 p2, 0x1

    aget v0, v0, p2

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iput-boolean p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    return-void
.end method

.method public recordLastTouchPassedToRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    aget v2, v0, p1

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewX:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 p2, 0x1

    aget p2, v0, p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchPassedToRecyclerViewY:I

    return-void
.end method

.method public requireOptParams()Z
    .locals 1

    sget-boolean v0, Lvyd;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragSpringParameters:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDialogModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAccumulatedMissedScrollDelta()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    return-void
.end method

.method public resolveMissedRecyclerViewScrollDelta(Landroid/view/View;Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->computeMissedRecyclerViewScrollDelta(Landroid/view/View;Landroid/view/MotionEvent;)F

    move-result p1

    iget p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAccumulatedMissedScrollDelta:F

    return p0

    :cond_0
    return p1
.end method

.method public abstract sanityCheck(Landroid/view/View;)Z
.end method

.method public setAvoidVelocity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAvoidVelocity:Z

    return-void
.end method

.method public setBounceEdgeEffect(Lcom/transsion/effectengine/bounceeffect/z1OoOfor;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceEdgeEffect:Lcom/transsion/effectengine/bounceeffect/z1OoOfor;

    return-void
.end method

.method public setCardMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    return-void
.end method

.method public setCenterDisplayMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCenterDisplayModeEnabled:Z

    return-void
.end method

.method public setDialogMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDialogModeEnabled:Z

    return-void
.end method

.method public setDiffFrictionFactor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDiffFrictionFactor:Z

    return-void
.end method

.method public setDoubleFriction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDoubleFrictionEnabled:Z

    return-void
.end method

.method public setDragBounceParameters(FFFFFF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragBounceParameters:Z

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragStiffnessLow:F

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragDampingLow:F

    iput p3, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragStiffnessMedium:F

    iput p4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragDampingMedium:F

    iput p5, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragStiffnessHigh:F

    iput p6, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragDampingHigh:F

    return-void
.end method

.method public setDragSpringParameters(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragSpringParameters:Z

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragMoveRatio:F

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragIndex:F

    return-void
.end method

.method public setFlingBounceParameters(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomFlingBounceParameters:Z

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStiffness:F

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDamping:F

    return-void
.end method

.method public setFullDragFollowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mFullDragFollowEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {p1}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTouchSlop:I

    return-void
.end method

.method public setGridMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    return-void
.end method

.method public setIsRefreshRateLimited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mRefreshRateLimited:Z

    return-void
.end method

.method public setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    return-void
.end method

.method public setUseInitialFrictionFactor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mUseInitialFrictionFactor:Z

    return-void
.end method

.method public setVibrateEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVibrateEnable:Z

    return-void
.end method

.method public setmCustomDragBounceParameters(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragBounceParameters:Z

    return-void
.end method

.method public shouldHandOffMoveToScroll(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView;

    return p0
.end method

.method public abstract translateView(Landroid/view/View;F)V
.end method

.method public abstract translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method
