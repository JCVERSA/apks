.class public Lcom/gw/swipeback/SwipeBackLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gw/swipeback/SwipeBackLayout$c;,
        Lcom/gw/swipeback/SwipeBackLayout$b;
    }
.end annotation


# static fields
.field public static final FROM_BOTTOM:I = 0x8

.field public static final FROM_LEFT:I = 0x1

.field public static final FROM_RIGHT:I = 0x2

.field public static final FROM_TOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SwipeBackLayout"


# instance fields
.field private autoFinishedVelocityLimit:F

.field private defaultSwipeBackListener:Lcom/gw/swipeback/SwipeBackLayout$c;

.field private downX:F

.field private downY:F

.field private height:I

.field private innerScrollView:Landroid/view/View;

.field private isSwipeFromEdge:Z

.field private leftOffset:I

.field private mDirectionMode:I

.field private mDragContentView:Landroid/view/View;

.field private final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mSwipeBackListener:Lcom/gw/swipeback/SwipeBackLayout$c;

.field private mTouchSlop:I

.field private maskAlpha:I

.field private swipeBackFactor:F

.field private swipeBackFraction:F

.field private topOffset:I

.field private touchedEdge:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/gw/swipeback/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 4
    iput p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 5
    iput p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFactor:F

    const/16 p3, 0x7d

    .line 6
    iput p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->maskAlpha:I

    const/4 p3, 0x0

    .line 7
    iput-boolean p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->isSwipeFromEdge:Z

    .line 8
    iput p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->leftOffset:I

    .line 9
    iput p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->topOffset:I

    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 10
    iput v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->touchedEdge:I

    .line 12
    new-instance v0, Lcom/gw/swipeback/SwipeBackLayout$a;

    invoke-direct {v0, p0}, Lcom/gw/swipeback/SwipeBackLayout$a;-><init>(Lcom/gw/swipeback/SwipeBackLayout;)V

    iput-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->defaultSwipeBackListener:Lcom/gw/swipeback/SwipeBackLayout$c;

    .line 13
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    new-instance p3, Lcom/gw/swipeback/SwipeBackLayout$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/gw/swipeback/SwipeBackLayout$b;-><init>(Lcom/gw/swipeback/SwipeBackLayout;Lcom/gw/swipeback/SwipeBackLayout$a;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 15
    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    invoke-virtual {p3, v0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 16
    invoke-virtual {p3}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->mTouchSlop:I

    .line 17
    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->defaultSwipeBackListener:Lcom/gw/swipeback/SwipeBackLayout$c;

    invoke-virtual {p0, p3}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeBackListener(Lcom/gw/swipeback/SwipeBackLayout$c;)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragContentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->height:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/gw/swipeback/SwipeBackLayout;)F
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFraction:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/gw/swipeback/SwipeBackLayout;F)F
    .locals 0

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFraction:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/gw/swipeback/SwipeBackLayout;)Lcom/gw/swipeback/SwipeBackLayout$c;
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mSwipeBackListener:Lcom/gw/swipeback/SwipeBackLayout$c;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/gw/swipeback/SwipeBackLayout;)F
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFactor:F

    return p0
.end method

.method public static synthetic access$1402(Lcom/gw/swipeback/SwipeBackLayout;I)I
    .locals 0

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->touchedEdge:I

    return p1
.end method

.method public static synthetic access$1500(Lcom/gw/swipeback/SwipeBackLayout;FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->a(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/gw/swipeback/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->leftOffset:I

    return p0
.end method

.method public static synthetic access$202(Lcom/gw/swipeback/SwipeBackLayout;I)I
    .locals 0

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->leftOffset:I

    return p1
.end method

.method public static synthetic access$300(Lcom/gw/swipeback/SwipeBackLayout;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/gw/swipeback/SwipeBackLayout;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/gw/swipeback/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    return p0
.end method

.method public static synthetic access$500(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->innerScrollView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/gw/swipeback/SwipeBackLayout;)F
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->downX:F

    return p0
.end method

.method public static synthetic access$700(Lcom/gw/swipeback/SwipeBackLayout;)F
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->downY:F

    return p0
.end method

.method public static synthetic access$800(Lcom/gw/swipeback/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->width:I

    return p0
.end method

.method public static synthetic access$900(Lcom/gw/swipeback/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->topOffset:I

    return p0
.end method

.method public static synthetic access$902(Lcom/gw/swipeback/SwipeBackLayout;I)I
    .locals 0

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->topOffset:I

    return p1
.end method


# virtual methods
.method public final a(FF)Z
    .locals 4

    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    neg-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    neg-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public attachToActivity(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/gw/swipeback/R$styleable;->SwipeBackLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/gw/swipeback/R$styleable;->SwipeBackLayout_directionMode:I

    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/gw/swipeback/SwipeBackLayout;->setDirectionMode(I)V

    sget p2, Lcom/gw/swipeback/R$styleable;->SwipeBackLayout_swipeBackFactor:I

    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFactor:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeBackFactor(F)V

    sget p2, Lcom/gw/swipeback/R$styleable;->SwipeBackLayout_maskAlpha:I

    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->maskAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/gw/swipeback/SwipeBackLayout;->setMaskAlpha(I)V

    sget p2, Lcom/gw/swipeback/R$styleable;->SwipeBackLayout_isSwipeFromEdge:I

    iget-boolean v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->isSwipeFromEdge:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gw/swipeback/SwipeBackLayout;->isSwipeFromEdge:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->isSwipeFromEdge:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto :goto_3

    :cond_0
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->touchedEdge:I

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->touchedEdge:I

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->touchedEdge:I

    if-ne p0, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    :cond_6
    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->touchedEdge:I

    if-ne p0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :cond_8
    :goto_3
    return v1
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getAutoFinishedVelocityLimit()F
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    return p0
.end method

.method public getDirectionMode()I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    return p0
.end method

.method public getMaskAlpha()I
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->maskAlpha:I

    return p0
.end method

.method public getSwipeBackFactor()F
    .locals 0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFactor:F

    return p0
.end method

.method public isSwipeFromEdge()Z
    .locals 0

    iget-boolean p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->isSwipeFromEdge:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->maskAlpha:I

    int-to-float v1, v0

    iget p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFraction:F

    mul-float/2addr v1, p0

    float-to-int p0, v1

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, p0, p0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->innerScrollView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/gw/swipeback/SwipeBackLayout;->downX:F

    iget v3, p0, Lcom/gw/swipeback/SwipeBackLayout;->downY:F

    invoke-static {v0, v2, v3}, Lvkb;->e(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/gw/swipeback/SwipeBackLayout;->downX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/gw/swipeback/SwipeBackLayout;->downY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-eq v3, v1, :cond_2

    const/16 v1, 0x8

    if-ne v3, v1, :cond_5

    :cond_2
    iget v1, p0, Lcom/gw/swipeback/SwipeBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    iget v1, p0, Lcom/gw/swipeback/SwipeBackLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->downY:F

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_2
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget p3, p0, Lcom/gw/swipeback/SwipeBackLayout;->leftOffset:I

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget p4, p0, Lcom/gw/swipeback/SwipeBackLayout;->topOffset:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragContentView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragContentView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragContentView:Landroid/view/View;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->height:I

    :cond_1
    invoke-static {p0}, Lvkb;->f(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->innerScrollView:Landroid/view/View;

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SwipeBackLayout must contains only one direct child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setAutoFinishedVelocityLimit(F)V
    .locals 0

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->autoFinishedVelocityLimit:F

    return-void
.end method

.method public setDirectionMode(I)V
    .locals 0

    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDirectionMode:I

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    return-void
.end method

.method public setMaskAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->maskAlpha:I

    return-void
.end method

.method public setSwipeBackFactor(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->swipeBackFactor:F

    return-void
.end method

.method public setSwipeBackListener(Lcom/gw/swipeback/SwipeBackLayout$c;)V
    .locals 0

    iput-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->mSwipeBackListener:Lcom/gw/swipeback/SwipeBackLayout$c;

    return-void
.end method

.method public setSwipeFromEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gw/swipeback/SwipeBackLayout;->isSwipeFromEdge:Z

    return-void
.end method

.method public smoothScrollToX(I)V
    .locals 2

    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public smoothScrollToY(I)V
    .locals 2

    iget-object v0, p0, Lcom/gw/swipeback/SwipeBackLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
