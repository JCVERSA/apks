.class public Lcom/transsion/widgets/CustomSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/CustomSwipeRefreshLayout$SavedState;,
        Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;,
        Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CustomSwipeRefreshLayout"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Lcom/transsion/widgets/SwipeImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mEditMode:Z

.field private mEnableLegacyRequestDisallowInterceptTouch:Z

.field protected mFrom:I

.field private mHandleViewPressed:Z

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mPlatformBasicColor:I

.field mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101000e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    const/4 v1, 0x2

    .line 5
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 6
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 7
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    .line 9
    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleViewIndex:I

    .line 10
    new-instance v1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$1;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 11
    new-instance v1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$5;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 12
    new-instance v1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$6;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$6;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 13
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$attr;->os_platform_basic_color:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    iget v1, v1, Landroid/util/TypedValue;->data:I

    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mPlatformBasicColor:I

    .line 16
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTouchSlop:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 21
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleDiameter:I

    .line 22
    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->createProgressView()V

    .line 23
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v2, 0x42800000    # 64.0f

    .line 24
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 25
    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    .line 26
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 27
    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 28
    invoke-virtual {p0, v4}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->moveToStart(F)V

    .line 30
    sget-object v1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/SwipeImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/SwipeImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private createProgressView()V
    .locals 2

    new-instance v0, Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgets/SwipeImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mPlatformBasicColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ensureTarget()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private finishSpinner(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishSpinner overscrollTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mTotalDragDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomSwipeRefreshLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moveSpinner(F)V
    .locals 11

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCustomSlingshotDistance:I

    if-lez v4, :cond_1

    :goto_0
    int-to-float v4, v4

    goto :goto_1

    :cond_1
    iget-boolean v4, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v5, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v4

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v0, v4

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setAnimationProgress(F)V

    :cond_5
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v6, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setArrowScale(F)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setProgressRotation(F)V

    iget p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRefreshing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomSwipeRefreshLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNotify:Z

    .line 14
    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->ensureTarget()V

    .line 15
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_0

    .line 16
    iget p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$4;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/SwipeImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private startDragging(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDragging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomSwipeRefreshLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez p1, :cond_0

    int-to-float p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mInitialMotionY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 p1, 0x4c

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mStartingScale:F

    new-instance p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$7;

    invoke-direct {p1, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$7;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/SwipeImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    new-instance v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$2;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/SwipeImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ListView;

    invoke-static {p0, v1}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public changeEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mEditMode:Z

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 0

    if-nez p5, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p6, :cond_0

    .line 1
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    :cond_0
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    if-nez p6, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleViewIndex:I

    if-gez p0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return p0

    :cond_1
    if-lt p2, p0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method public getProgressCircleDiameter()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleDiameter:I

    return p0
.end method

.method public getProgressViewEndOffset()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return p0
.end method

.method public getProgressViewStartOffset()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->hasNestedScrollingParent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public isRefreshing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method public moveToStart(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mFrom:I

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->ensureTarget()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mHandleViewPressed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_7

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    if-ne v0, v3, :cond_4

    const-string p0, "CustomSwipeRefreshLayout"

    const-string p1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startDragging(F)V

    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    iput v3, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mInitialDownY:F

    :goto_0
    iget-boolean p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    return p0

    :cond_9
    :goto_1
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->ensureTarget()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    div-int/lit8 p5, p1, 0x2

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p5, v0

    iget p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    add-int/2addr p3, p0

    invoke-virtual {p4, p5, p0, p1, p3}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error msg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->ensureTarget()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleViewIndex:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    if-ne p2, v0, :cond_2

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_1

    .line 2
    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    float-to-int v1, v1

    .line 3
    aput v1, p4, v0

    .line 4
    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    .line 5
    iput v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 6
    aput p3, p4, v0

    .line 7
    :goto_0
    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->moveSpinner(F)V

    .line 8
    :cond_1
    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mParentScrollConsumed:[I

    const/4 v1, 0x0

    .line 11
    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 12
    aget p0, p4, v1

    aget p2, p1, v1

    add-int/2addr p0, p2

    aput p0, p4, v1

    .line 13
    aget p0, p4, v0

    aget p1, p1, v0

    add-int/2addr p0, p1

    aput p0, p4, v0

    :cond_3
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0

    if-nez p5, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 8

    const/4 v6, 0x0

    .line 10
    iget-object v7, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    .line 9
    iget-object v7, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v8, p0

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x1

    .line 1
    aget v10, p7, v9

    .line 2
    iget-object v5, v8, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 3
    aget v0, p7, v9

    sub-int/2addr v0, v10

    sub-int v0, p5, v0

    if-nez v0, :cond_1

    .line 4
    iget-object v1, v8, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mParentOffsetInWindow:[I

    aget v1, v1, v9

    add-int v1, p5, v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    iget v2, v8, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v8, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 7
    invoke-direct {p0, v2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->moveSpinner(F)V

    .line 8
    aget v1, p7, v9

    add-int/2addr v1, v0

    aput v1, p7, v9

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollInProgress:Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->moveSpinner(F)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$SavedState;->mRefreshing:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgets/CustomSwipeRefreshLayout$SavedState;

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    invoke-direct {v1, v0, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-nez p0, :cond_0

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    if-nez p4, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 4
    iget p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->finishSpinner(F)V

    .line 6
    iput v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalUnconsumed:F

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mEditMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mHandleViewPressed:Z

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x1

    if-eqz v0, :cond_e

    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "CustomSwipeRefreshLayout"

    if-eq v0, v1, :cond_b

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v0, v5, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-gez v0, :cond_5

    const-string p0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, v6}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->finishSpinner(F)V

    :cond_7
    return v2

    :cond_8
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    const-string p0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startDragging(F)V

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    cmpl-float v0, p1, v6

    if-lez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0

    :cond_a
    return v2

    :cond_b
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_c

    const-string p0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_d

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    iput-boolean v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->finishSpinner(F)V

    :cond_d
    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    return v2

    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mIsBeingDragged:Z

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mEnableLegacyRequestDisallowInterceptTouch:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->ensureTarget()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->reset()V

    :cond_0
    return-void
.end method

.method public setHandleViewPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mHandleViewPressed:Z

    return-void
.end method

.method public setLegacyRequestDisallowInterceptTouchEventEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mEnableLegacyRequestDisallowInterceptTouch:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mChildScrollUpCallback:Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1    # Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mListener:Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/SwipeImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0

    iput p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScale:Z

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScale:Z

    iput p2, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p3, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mUsingCustomStart:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->reset()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRefreshing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomSwipeRefreshLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    .line 3
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshing:Z

    .line 4
    iget-boolean p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr p1, v1

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 7
    :goto_0
    iget v1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 8
    iput-boolean v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNotify:Z

    .line 9
    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleDiameter:I

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStyle(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSlingshotDistance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCustomSlingshotDistance:I

    return-void
.end method

.method public setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(II)Z
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->startNestedScroll(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    new-instance v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout$3;-><init>(Lcom/transsion/widgets/CustomSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/SwipeImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mCircleView:Lcom/transsion/widgets/SwipeImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopNestedScroll()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->stopNestedScroll()V

    :cond_0
    return-void
.end method
