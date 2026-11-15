.class public abstract Lcom/yandex/div/core/view2/animations/ViewCopiesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->f(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static final b(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/Transition;[I)Landroid/view/View;
    .locals 6

    const-string v0, "view"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneRoot"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transition"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPosition"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {v1, p0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->f(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/view/View;->layout(IIII)V

    invoke-static {v1, p1, p3}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->c(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p0, v1, p2, p1}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->d(Landroid/view/View;Landroid/view/View;Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    new-instance p1, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;

    invoke-direct {p1, v1, p0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$createOrGetVisualCopy$1;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->e(Landroid/view/View;Lc74;)V

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0, v3}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->e(Landroid/view/View;Lc74;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$a;

    invoke-direct {p1, v1, p0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$a;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1
    return-object v1
.end method

.method public static final c(Landroid/view/View;Landroid/view/ViewGroup;[I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget v1, p2, p1

    aget p1, v0, p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 p1, 0x1

    aget p2, p2, p1

    aget p1, v0, p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public static final d(Landroid/view/View;Landroid/view/View;Landroidx/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    new-instance v0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$replace$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$replace$1;-><init>(Landroid/view/View;Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public static final e(Landroid/view/View;Lc74;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageChangeCallback(Lc74;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->e(Landroid/view/View;Lc74;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final f(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    new-instance v0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$setScreenshotFromView$drawAndSet$1;

    invoke-direct {v0, p1, p0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$setScreenshotFromView$drawAndSet$1;-><init>(Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-static {p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$b;

    invoke-direct {p0, v0}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt$b;-><init>(Lc74;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_2
    return-void
.end method
