.class public Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private animationStartLeft:I

.field private animationStartRight:I

.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field indicatorLeft:I

.field private final indicatorPaddingBottom:I

.field indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private selectedIndicatorWidth:I

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lcom/transsion/widgets/CustomTabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->layoutDirection:I

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorLeft:I

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animationStartLeft:I

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animationStartRight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/common/R$dimen;->tab_indicator_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorPaddingBottom:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animationStartLeft:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animationStartRight:I

    return p0
.end method

.method private calculateTabViewContentBounds(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Lcom/transsion/widgets/CustomTabLayout$TabView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayout$TabView;->e(Lcom/transsion/widgets/CustomTabLayout$TabView;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p0

    float-to-int p0, p0

    if-ge v0, p0, :cond_0

    move v0, p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int p1, p0, v0

    add-int/2addr p0, v0

    int-to-float p1, p1

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 7

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayout$TabView;->setTextMaxWidth()V

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget-boolean v4, v3, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorFullWidth:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_0
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget-boolean v6, v5, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorFullWidth:Z

    if-nez v6, :cond_1

    instance-of v6, v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-static {v5}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    :cond_1
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v0

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    float-to-int v1, v3

    int-to-float v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v5, v0

    int-to-float v0, v2

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    move v2, v1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget-boolean v4, v3, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorFullWidth:Z

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/transsion/widgets/CustomTabLayout$TabView;

    invoke-static {v3}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/transsion/widgets/CustomTabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayout;->b(Lcom/transsion/widgets/CustomTabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_1
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v3, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    if-ne v0, v1, :cond_2

    if-ne v3, v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animationStartLeft:I

    iput v3, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->animationStartRight:I

    :cond_3
    new-instance v0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator$1;-><init>(Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;II)V

    if-eqz p1, :cond_4

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator$2;

    invoke-direct {p3, p0, p2}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator$2;-><init>(Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;I)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public animateIndicatorToPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void
.end method

.method public childrenNeedLayout()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v0, v0, Lcom/transsion/widgets/CustomTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v2, :cond_1

    move v0, v2

    :cond_1
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget v2, v2, Lcom/transsion/widgets/CustomTabLayout;->tabIndicatorGravity:I

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorPaddingBottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorPaddingBottom:I

    sub-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_5
    :goto_1
    iget v2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v2, :cond_9

    iget v4, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    if-le v4, v2, :cond_9

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v2, v2, Lcom/transsion/widgets/CustomTabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    :goto_2
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v4, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    iget v5, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorLeft:I

    sub-int v6, v4, v5

    iget v7, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorWidth:I

    if-ltz v7, :cond_7

    div-int/2addr v6, v3

    add-int/2addr v5, v6

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorWidth:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v1, v1

    iget v7, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    sub-int/2addr v7, v6

    add-int/2addr v7, v4

    int-to-float v4, v7

    int-to-float v0, v0

    invoke-direct {v3, v5, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v5, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_8
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIndicatorPosition()F
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, p0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 p2, -0x1

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iget v1, v0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget v0, v0, Lcom/transsion/widgets/CustomTabLayout;->mode:I

    if-ne v0, v2, :cond_9

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-gtz v5, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    mul-int v6, v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v4, v2

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_8

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v5, :cond_5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    :cond_5
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v2, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v3, v2

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgets/CustomTabLayout;

    iput v1, v0, Lcom/transsion/widgets/CustomTabLayout;->tabGravity:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->updateTabViews(Z)V

    :goto_2
    if-eqz v3, :cond_9

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_9
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public setIndicatorPosition(II)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorLeft:I

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedPosition:I

    iput p2, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectionOffset:F

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedIndicatorHeight(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedIndicatorWidth(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgets/CustomTabLayout$SlidingTabIndicator;->selectedIndicatorWidth:I

    :cond_0
    return-void
.end method
