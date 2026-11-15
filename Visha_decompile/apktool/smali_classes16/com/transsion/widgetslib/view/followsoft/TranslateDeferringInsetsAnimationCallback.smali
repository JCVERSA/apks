.class public Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroidx/core/graphics/Insets;

.field public e:Z


# direct methods
.method private a(Landroidx/core/graphics/Insets;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    iget v0, p1, Landroidx/core/graphics/Insets;->top:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->e:Z

    if-nez p1, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->b:I

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a:I

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    invoke-static {v1, v2, v3, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v2, v1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    iget v3, v1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, v2, v3, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->d:Landroidx/core/graphics/Insets;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 6

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->e:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->b:I

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a:I

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v2, v1, Landroidx/core/graphics/Insets;->left:I

    iget v3, v0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroidx/core/graphics/Insets;->top:I

    iget v4, v0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    iget v5, v0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v4, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    sget-object v2, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v3, v2, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    iget v4, v2, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    iget v5, v2, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v3, v4, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->d:Landroidx/core/graphics/Insets;

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->d:Landroidx/core/graphics/Insets;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    :goto_0
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->e:Z

    :cond_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->e:Z

    iget p2, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->b:I

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    iget v0, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v1, p2, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr p2, v0

    invoke-static {v1, v2, v3, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    iget v0, p2, Landroidx/core/graphics/Insets;->left:I

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iget v2, v1, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p2, Landroidx/core/graphics/Insets;->top:I

    iget v3, v1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, v2, v3, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->d:Landroidx/core/graphics/Insets;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/followsoft/TranslateDeferringInsetsAnimationCallback;->a(Landroidx/core/graphics/Insets;)V

    return-object p1
.end method
