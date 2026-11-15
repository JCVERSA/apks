.class public Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Context;

.field public c:I

.field public d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/RectF;

.field public f:Landroid/view/ViewPropertyAnimator;

.field public g:Z

.field public h:F

.field public final i:I

.field public final j:I

.field public k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    .line 6
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->e:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->g:Z

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->h:F

    .line 9
    iput p3, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->k:F

    .line 10
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->b:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->c()V

    const/4 p3, 0x4

    .line 12
    invoke-static {p1, p3}, Lolb;->h(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->i:I

    .line 13
    invoke-static {p1, p2}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->j:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->i:I

    sub-int/2addr v0, v1

    shr-int/lit8 v2, v1, 0x1

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->e:Landroid/graphics/RectF;

    iget v4, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->k:F

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->k:F

    sub-float/2addr v5, v6

    int-to-float v0, v0

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->e:Landroid/graphics/RectF;

    int-to-float v1, v2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->j:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->j:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->e:Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->e:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->h:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->b:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_weaker:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_weaker_xos:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->c:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hideWithFadeAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$2;-><init>(Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public setBackgroundLeftRightMargin(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->k:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->g:Z

    return-void
.end method

.method public setEnableDefRoundCorner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->g:Z

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showWithFadeAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable$1;-><init>(Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;->f:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
