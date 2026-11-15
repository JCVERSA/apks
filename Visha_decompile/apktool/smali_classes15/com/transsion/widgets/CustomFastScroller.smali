.class public Lcom/transsion/widgets/CustomFastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgets/CustomFastScroller$AnimatorListener;,
        Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;,
        Lcom/transsion/widgets/CustomFastScroller$MarkListener;,
        Lcom/transsion/widgets/CustomFastScroller$Builder;,
        Lcom/transsion/widgets/CustomFastScroller$AnimationState;,
        Lcom/transsion/widgets/CustomFastScroller$DragState;,
        Lcom/transsion/widgets/CustomFastScroller$State;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xcc

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private mIsAppBarExpand:Z

.field private final mMargin:I

.field private mMarkListener:Lcom/transsion/widgets/CustomFastScroller$MarkListener;

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mType:Ljava/lang/String;

.field mVerticalDragY:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/widgets/CustomFastScroller;->PRESSED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/widgets/CustomFastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;IIIII)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    iput-boolean v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedVerticalScrollbar:Z

    iput-boolean v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedHorizontalScrollbar:Z

    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalRange:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    new-instance v2, Lcom/transsion/widgets/CustomFastScroller$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgets/CustomFastScroller$1;-><init>(Lcom/transsion/widgets/CustomFastScroller;)V

    iput-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mIsAppBarExpand:Z

    new-instance v2, Lcom/transsion/widgets/CustomFastScroller$2;

    invoke-direct {v2, p0}, Lcom/transsion/widgets/CustomFastScroller$2;-><init>(Lcom/transsion/widgets/CustomFastScroller;)V

    iput-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iput-object p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbWidth:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbWidth:I

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {p7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackWidth:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackWidth:I

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbHeight:I

    goto :goto_2

    :cond_2
    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbHeight:I

    :goto_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p7, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackHeight:I

    goto :goto_3

    :cond_3
    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackHeight:I

    :goto_3
    iput p10, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    iput p8, p0, Lcom/transsion/widgets/CustomFastScroller;->mScrollbarMinimumRange:I

    iput p9, p0, Lcom/transsion/widgets/CustomFastScroller;->mMargin:I

    const/16 p4, 0xcc

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Lcom/transsion/widgets/CustomFastScroller$AnimatorListener;

    invoke-direct {p2, p0}, Lcom/transsion/widgets/CustomFastScroller$AnimatorListener;-><init>(Lcom/transsion/widgets/CustomFastScroller;)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;

    invoke-direct {p2, p0}, Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;-><init>(Lcom/transsion/widgets/CustomFastScroller;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomFastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/CustomFastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mIsAppBarExpand:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/CustomFastScroller;)Lcom/transsion/widgets/CustomFastScroller$MarkListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mMarkListener:Lcom/transsion/widgets/CustomFastScroller$MarkListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/CustomFastScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->cancelHide()V

    return-void
.end method

.method private cancelHide()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->cancelHide()V

    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbCenterX:I

    iget v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackHeight:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v2

    int-to-float p0, p0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbCenterY:I

    iget v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbWidth:I

    neg-int p0, p0

    int-to-float p0, p0

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private getHorizontalRange()[I
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalRange:[I

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    sub-int/2addr p0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalRange:[I

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    sub-int/2addr p0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->getHorizontalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgets/CustomFastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetHideDelay(I)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->cancelHide()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .locals 4

    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    float-to-double p1, p2

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    sub-int/2addr v0, p0

    int-to-double v2, v0

    div-double/2addr p1, v2

    sub-int/2addr p4, p6

    add-int/lit16 p4, p4, 0x12c

    int-to-double v2, p4

    mul-double/2addr p1, v2

    double-to-int p0, p1

    add-int/2addr p0, p5

    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int p1, p0, p5

    if-gt p0, p4, :cond_1

    if-ltz p0, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method private setupCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private verticalScrollTo(F)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->getVerticalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalDragY:F

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->getRvPaddingBottom()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgets/CustomFastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->destroyCallbacks()V

    :cond_1
    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->setupCallbacks()V

    :cond_2
    return-void
.end method

.method public getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getRvPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/lit8 p0, p0, 0x32

    :goto_0
    return p0
.end method

.method public getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public hide(I)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    if-eq v2, v1, :cond_0

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    iget-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPointInsideHorizontalThumb(FF)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbCenterX:I

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPointInsideVerticalThumb(FF)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackWidth:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbCenterY:I

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isVisible()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    iget p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->getRvPaddingBottom()I

    move-result v0

    sub-int/2addr p3, v0

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomFastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomFastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->getRvPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/transsion/widgets/CustomFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/transsion/widgets/CustomFastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    iput v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalDragY:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/transsion/widgets/CustomFastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/transsion/widgets/CustomFastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    if-eqz v2, :cond_2

    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iput v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalDragY:F

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalDragY:F

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalDragX:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->show()V

    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomFastScroller;->horizontalScrollTo(F)V

    :cond_6
    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mDragState:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomFastScroller;->verticalScrollTo(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method public requestRedraw()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAppBarExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mIsAppBarExpand:Z

    return-void
.end method

.method public setMarkListener(Lcom/transsion/widgets/CustomFastScroller$MarkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mMarkListener:Lcom/transsion/widgets/CustomFastScroller$MarkListener;

    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/transsion/widgets/CustomFastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mMarkListener:Lcom/transsion/widgets/CustomFastScroller$MarkListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/widgets/CustomFastScroller$MarkListener;->markClick()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/CustomFastScroller;->cancelHide()V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->requestRedraw()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->show()V

    :goto_0
    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-ne v1, v0, :cond_3

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/transsion/widgets/CustomFastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomFastScroller;->resetHideDelay(I)V

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->requestRedraw()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomFastScroller;->resetHideDelay(I)V

    :cond_4
    :goto_1
    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    return-void
.end method

.method public show()V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mAnimationState:I

    iget-object v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public updateScrollPosition(II)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->getRvPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewHeight:I

    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    iget v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mScrollbarMinimumRange:I

    if-lt v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedVerticalScrollbar:Z

    iget-object v2, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    iget v5, p0, Lcom/transsion/widgets/CustomFastScroller;->mRecyclerViewWidth:I

    sub-int v6, v2, v5

    if-lez v6, :cond_1

    iget v6, p0, Lcom/transsion/widgets/CustomFastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iput-boolean v6, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v7, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedVerticalScrollbar:Z

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    :cond_2
    return-void

    :cond_3
    if-eqz v7, :cond_5

    iget v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    if-nez v3, :cond_4

    mul-int v3, v1, v1

    div-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    :cond_4
    iget v3, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbHeight:I

    sub-int v6, v1, v3

    iget v7, p0, Lcom/transsion/widgets/CustomFastScroller;->mMargin:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    mul-int/2addr p2, v6

    sub-int/2addr v0, v1

    div-int/2addr p2, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p2, v3

    iput p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbCenterY:I

    :cond_5
    iget-boolean p2, p0, Lcom/transsion/widgets/CustomFastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_6

    int-to-float p1, p1

    int-to-float p2, v5

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    add-float/2addr p1, v0

    mul-float/2addr p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mHorizontalThumbWidth:I

    :cond_6
    iget p1, p0, Lcom/transsion/widgets/CustomFastScroller;->mState:I

    if-eqz p1, :cond_7

    if-ne p1, v4, :cond_8

    :cond_7
    invoke-virtual {p0, v4}, Lcom/transsion/widgets/CustomFastScroller;->setState(I)V

    :cond_8
    return-void
.end method
