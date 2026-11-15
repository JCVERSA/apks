.class public Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private applyViewRotation(II)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;->getRotationAngle()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v7, p0

    sub-int/2addr p1, v6

    .line 9
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v5

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sub-int/2addr p2, v7

    .line 11
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    .line 12
    iput v6, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    move p2, p1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    :goto_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    const/16 p2, 0x5a

    if-eq v3, p2, :cond_4

    const/16 p2, 0x10e

    if-eq v3, p2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p2, 0x43870000    # 270.0f

    .line 16
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v4

    .line 18
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_3
    int-to-float p2, v5

    add-float/2addr p2, p0

    neg-float p0, p2

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x42b40000    # 90.0f

    .line 21
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    if-eqz v1, :cond_5

    int-to-float p2, v5

    add-float/2addr p2, p0

    .line 22
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_5
    neg-float p0, p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v4

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getChildSeekBar()Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    instance-of v0, p0, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    :cond_1
    return-object v1
.end method

.method private onSizeChangedTraditionalRotation(IIII)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v2, p2, v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v1, p1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/view/View;->measure(II)V

    const/16 v2, 0x33

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method private onSizeChangedUseViewRotation(IIII)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v1, p1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->applyViewRotation(II)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method private useViewRotation()Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;->useViewRotation()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applyViewRotation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->applyViewRotation(II)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->getChildSeekBar()Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBar;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-eqz v0, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v5

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    add-int/2addr v1, v5

    invoke-static {v1, p1, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    add-int/2addr v0, v6

    invoke-static {v0, p2, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->useViewRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->onSizeChangedUseViewRotation(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/widgets/VerticalSeekBarWrapper;->onSizeChangedTraditionalRotation(IIII)V

    :goto_0
    return-void
.end method
