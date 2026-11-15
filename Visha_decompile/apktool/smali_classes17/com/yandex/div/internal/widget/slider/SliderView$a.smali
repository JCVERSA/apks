.class public final Lcom/yandex/div/internal/widget/slider/SliderView$a;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/slider/SliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/slider/SliderView$a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/internal/widget/slider/SliderView;

.field public final b:Landroid/graphics/Rect;

.field public final synthetic c:Lcom/yandex/div/internal/widget/slider/SliderView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView;)V
    .locals 1

    const-string v0, "slider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMaxValue()F

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMinValue()F

    move-result p0

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ls86;->b(D)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final b(IF)V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-static {v2, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$inBoarders(Lcom/yandex/div/internal/widget/slider/SliderView;F)F

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, p2, v2, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$setValueToThumb(Lcom/yandex/div/internal/widget/slider/SliderView;Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    return-void
.end method

.method public final c(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryValue()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB_SECONDARY:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;->THUMB:Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    :goto_0
    return-object p0
.end method

.method public final d(I)F
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbValue()F

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryValue()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final e(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$getBoundsWidth(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$getBoundsHeight(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$getBoundsWidth(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$getBoundsHeight(Lcom/yandex/div/internal/widget/slider/SliderView;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->d(I)F

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p1, v4, v0, v5}, Lcom/yandex/div/internal/widget/slider/SliderView;->v(Lcom/yandex/div/internal/widget/slider/SliderView;FIILjava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getVirtualViewAt(FF)I
    .locals 1

    iget-object p2, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-static {p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$getLeftPaddingOffset(Lcom/yandex/div/internal/widget/slider/SliderView;)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$getClosestThumb(Lcom/yandex/div/internal/widget/slider/SliderView;I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;

    move-result-object p0

    sget-object p1, Lcom/yandex/div/internal/widget/slider/SliderView$a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1

    const-string v0, "virtualViewIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryValue()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_3

    const v0, 0x102003d

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_2

    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b(IF)V

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->d(I)F

    move-result p2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b(IF)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->d(I)F

    move-result p2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b(IF)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    const-string v0, "node"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMinValue()F

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMaxValue()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->d(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->startOrEndDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/slider/SliderView$a;->e(I)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final startOrEndDescription(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryValue()Ljava/lang/Float;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/yandex/div/R$string;->div_slider_range_start:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p0, "context.getString(R.string.div_slider_range_start)"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$a;->c:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/yandex/div/R$string;->div_slider_range_end:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p0, "context.getString(R.string.div_slider_range_end)"

    invoke-static {v1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method
