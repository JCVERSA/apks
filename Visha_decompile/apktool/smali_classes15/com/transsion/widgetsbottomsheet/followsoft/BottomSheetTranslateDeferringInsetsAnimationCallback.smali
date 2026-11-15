.class public Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View;

.field public d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;III)V
    .locals 0

    invoke-direct {p0, p5}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->e:Z

    iput p4, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->b:I

    iput p3, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a:I

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    and-int p1, p3, p4

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Landroidx/core/graphics/Insets;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p1, Landroidx/core/graphics/Insets;->top:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x12c

    if-le p1, v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr p1, v1

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lolb;->b0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_bottom_sheet_large_screen_bottom_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_bottom_sheet_large_screen_soft_input:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v0, :cond_1

    int-to-float v0, v0

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->g0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->b(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d(I)V

    :goto_3
    return-void
.end method

.method public final b(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->isInEnterAnimator()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->L(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iput v2, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->f:I

    :cond_2
    iget-object v3, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lolb;->G(Landroid/content/Context;)I

    move-result v3

    aget v0, v0, v1

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v3, v0

    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-gez v3, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->f:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->f:I

    if-ge v0, v1, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    if-gez v3, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->f:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final c(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;
    .locals 4

    iget v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->b:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget p0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a:I

    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroidx/core/graphics/Insets;->top:I

    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v0, p0

    invoke-static {p1, v1, v2, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget p1, p0, Landroidx/core/graphics/Insets;->left:I

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, v1, v2, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->getSoftKeyboardHeight()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setSoftKeyboardHeight(I)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->e:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->e:Z

    iget-object p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    :goto_0
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->e:Z

    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->e:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->c(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsbottomsheet/followsoft/BottomSheetTranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    return-object p1
.end method
