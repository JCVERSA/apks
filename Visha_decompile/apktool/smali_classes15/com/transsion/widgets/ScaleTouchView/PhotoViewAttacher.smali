.class public Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_SCALE:F = 3.0f

.field private static DEFAULT_MID_SCALE:F = 1.75f

.field private static DEFAULT_MIN_SCALE:F = 1.0f

.field private static DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final HORIZONTAL_EDGE_BOTH:I = 0x2

.field private static final HORIZONTAL_EDGE_LEFT:I = 0x0

.field private static final HORIZONTAL_EDGE_NONE:I = -0x1

.field private static final HORIZONTAL_EDGE_RIGHT:I = 0x1

.field private static SINGLE_TOUCH:I = 0x1

.field private static final VERTICAL_EDGE_BOTH:I = 0x2

.field private static final VERTICAL_EDGE_BOTTOM:I = 0x1

.field private static final VERTICAL_EDGE_NONE:I = -0x1

.field private static final VERTICAL_EDGE_TOP:I


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalScrollEdge:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewDragListener:Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;

.field private mOutsidePhotoTapListener:Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;

.field private mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSingleFlingListener:Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mVerticalScrollEdge:I

.field private mViewTapListener:Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;

.field private mZoomDuration:I

.field private mZoomEnabled:Z

.field private onGestureListener:Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    sget v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    iput v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomDuration:I

    sget v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    iput v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    sget v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    iput v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMidScale:F

    sget v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    iput v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBlockParentIntercept:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mHorizontalScrollEdge:I

    iput v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mVerticalScrollEdge:I

    iput-boolean v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomEnabled:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    new-instance v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$1;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->onGestureListener:Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseRotation:F

    new-instance v0, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->onGestureListener:Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$2;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$3;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBlockParentIntercept:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    return-object p0
.end method

.method private cancelFling()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 13

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v5, v2, v4

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-gtz v5, :cond_3

    sget-object v5, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v12, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v5, v5, v12

    if-eq v5, v10, :cond_2

    if-eq v5, v8, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    :goto_1
    iput v10, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mVerticalScrollEdge:I

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v2, v11

    if-lez v5, :cond_4

    iput v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mVerticalScrollEdge:I

    neg-float v4, v2

    goto :goto_2

    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_5

    iput v9, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mVerticalScrollEdge:I

    sub-float/2addr v4, v2

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mVerticalScrollEdge:I

    move v4, v11

    :goto_2
    iget-object v2, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_8

    sget-object v1, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v5, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v10, :cond_7

    if-eq v1, v8, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v11, v2

    goto :goto_4

    :cond_6
    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v11, v0

    :goto_4
    iput v10, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_5

    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v11

    if-lez v5, :cond_9

    iput v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mHorizontalScrollEdge:I

    neg-float v11, v3

    goto :goto_5

    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v11, v2, v0

    iput v9, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_5

    :cond_a
    iput v6, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mHorizontalScrollEdge:I

    :goto_5
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v11, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mHorizontalScrollEdge:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMatrixValues:[F

    aget p0, p0, p2

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mOnViewDragListener:Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mPhotoTapListener:Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSingleFlingListener:Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mVerticalScrollEdge:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mViewTapListener:Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;

    return-object p0
.end method

.method private resetMatrix()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setRotationBy(F)V

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMatrixChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMatrixChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->onGestureListener:Lcom/transsion/widgets/ScaleTouchView/OnGestureListener;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$FlingRunnable;

    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    iget-object v5, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    sget-object p1, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic y()F
    .locals 1

    sget v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    return v0
.end method

.method public static bridge synthetic z()I
    .locals 1

    sget v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->SINGLE_TOUCH:I

    return v0
.end method


# virtual methods
.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 2
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMaximumScale()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMidScale:F

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    return p0
.end method

.method public getScale()F
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomEnabled()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomEnabled:Z

    return p0
.end method

.method public isZoomable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomEnabled:Z

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/widgets/ScaleTouchView/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move p1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->cancelFling()V

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->isScaling()Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->isDragging()Z

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    invoke-virtual {p1}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleDragDetector:Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/transsion/widgets/ScaleTouchView/CustomGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    :goto_5
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    iget p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setRotationBy(F)V

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkAndDisplayMatrix()V

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaximumScale(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/transsion/widgets/ScaleTouchView/Util;->checkZoomLevels(FFF)V

    iput p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/transsion/widgets/ScaleTouchView/Util;->checkZoomLevels(FFF)V

    iput p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/transsion/widgets/ScaleTouchView/Util;->checkZoomLevels(FFF)V

    iput p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMatrixChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mPhotoTapListener:Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleChangeListener:Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSingleFlingListener:Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mOnViewDragListener:Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mViewTapListener:Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    .line 6
    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 7
    iget-object p4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 9
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScale(FZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/transsion/widgets/ScaleTouchView/Util;->checkZoomLevels(FFF)V

    iput p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMinScale:F

    iput p2, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMidScale:F

    iput p3, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    invoke-static {p1}, Lcom/transsion/widgets/ScaleTouchView/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomEnabled:Z

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->resetMatrix()V

    :goto_0
    return-void
.end method
