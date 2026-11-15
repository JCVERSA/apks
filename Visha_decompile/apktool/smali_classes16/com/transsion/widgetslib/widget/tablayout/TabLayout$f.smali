.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public b:I

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/drawable/GradientDrawable;

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/animation/ValueAnimator;

.field public m:I

.field public n:I

.field public final synthetic o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->e:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->g:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->h:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->i:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->j:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->k:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->n:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->d:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->n:I

    return p0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m(ZI)V

    return-void
.end method

.method public final d(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->d(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)I

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->b:I

    if-ltz v2, :cond_1

    move v0, v2

    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->A:I

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_5

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

    div-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_5
    :goto_1
    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->h:I

    if-ltz v2, :cond_8

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->i:I

    if-le v3, v2, :cond_8

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->d:Landroid/graphics/drawable/GradientDrawable;

    :goto_2
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->h:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->j:I

    sub-int/2addr v1, v4

    iget v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->i:I

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_7
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e()Z
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

.method public f(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->k:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->d:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public g(II)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->h:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->i:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->h:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->i:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public h(IF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->e:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->f:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l()V

    return-void
.end method

.method public i(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->j:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->b:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 7

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->e:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->D:Z

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->d(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->f:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v6, v5, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->D:Z

    if-nez v6, :cond_1

    instance-of v6, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {v5}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->d(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->f:F

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
    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->g(II)V

    return-void
.end method

.method public final m(ZI)V
    .locals 5

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->D:Z

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->d(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->c(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->h:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->i:I

    if-ne v0, v1, :cond_2

    if-ne v3, v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m:I

    iput v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->n:I

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0, v3}, Lolb;->E0(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-static {v3, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->d(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;F)J

    move-result-wide v3

    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$a;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;II)V

    if-eqz p1, :cond_4

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lp97;

    invoke-direct {v1}, Lp97;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$b;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f$b;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iget p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->e:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->m(ZI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->l()V

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
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v1, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->y:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->B:I

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
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$f;->o:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iput v1, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->y:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->H(Z)V

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
