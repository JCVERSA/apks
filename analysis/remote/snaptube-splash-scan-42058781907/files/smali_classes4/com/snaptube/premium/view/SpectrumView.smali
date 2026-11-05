.class public Lcom/snaptube/premium/view/SpectrumView;
.super Landroid/view/View;


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:F

.field public c:F

.field public d:Landroid/graphics/RectF;

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:Landroid/animation/ValueAnimator;

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/snaptube/premium/view/SpectrumView;->u:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/snaptube/premium/view/SpectrumView;->u:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/snaptube/premium/view/SpectrumView;->u:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->f()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/snaptube/premium/view/SpectrumView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static bridge synthetic b(Lcom/snaptube/premium/view/SpectrumView;F)V
    .locals 0

    iput p1, p0, Lcom/snaptube/premium/view/SpectrumView;->i:F

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final d(F)F
    .locals 3

    iget v0, p0, Lcom/snaptube/premium/view/SpectrumView;->i:F

    add-float v1, p1, v0

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v2, v1

    add-float/2addr p1, v0

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_0
    add-float/2addr p1, v0

    return p1
.end method

.method public final e(F)F
    .locals 2

    iget v0, p0, Lcom/snaptube/premium/view/SpectrumView;->i:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    iget v0, p0, Lcom/snaptube/premium/view/SpectrumView;->i:F

    sub-float/2addr v0, p1

    sub-float/2addr v1, v0

    return v1

    :cond_0
    iget v0, p0, Lcom/snaptube/premium/view/SpectrumView;->i:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/snaptube/premium/base/ui/R$color;->button_selected_secondary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/view/SpectrumView;->h(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/snaptube/premium/view/SpectrumView$a;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/view/SpectrumView$a;-><init>(Lcom/snaptube/premium/view/SpectrumView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->c()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/snaptube/premium/view/SpectrumView$b;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/view/SpectrumView$b;-><init>(Lcom/snaptube/premium/view/SpectrumView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/snaptube/premium/view/SpectrumView$c;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/view/SpectrumView$c;-><init>(Lcom/snaptube/premium/view/SpectrumView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/snaptube/premium/view/SpectrumView;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/snaptube/premium/view/SpectrumView;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/view/SpectrumView;->u:Z

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->g()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/view/SpectrumView;->u:Z

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->i()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->m:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->e:F

    invoke-virtual {p0, v2}, Lcom/snaptube/premium/view/SpectrumView;->e(F)F

    move-result v2

    iget v3, p0, Lcom/snaptube/premium/view/SpectrumView;->n:F

    iget v4, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->k:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->l:F

    iget-object v3, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->o:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->f:F

    invoke-virtual {p0, v2}, Lcom/snaptube/premium/view/SpectrumView;->d(F)F

    move-result v2

    iget v3, p0, Lcom/snaptube/premium/view/SpectrumView;->p:F

    iget v4, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->k:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->l:F

    iget-object v3, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->q:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->g:F

    invoke-virtual {p0, v2}, Lcom/snaptube/premium/view/SpectrumView;->e(F)F

    move-result v2

    iget v3, p0, Lcom/snaptube/premium/view/SpectrumView;->r:F

    iget v4, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->k:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->l:F

    iget-object v3, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->s:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->h:F

    invoke-virtual {p0, v2}, Lcom/snaptube/premium/view/SpectrumView;->d(F)F

    move-result v2

    iget v3, p0, Lcom/snaptube/premium/view/SpectrumView;->t:F

    iget v4, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/snaptube/premium/view/SpectrumView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snaptube/premium/view/SpectrumView;->k:F

    iget v2, p0, Lcom/snaptube/premium/view/SpectrumView;->l:F

    iget-object v3, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/snaptube/premium/view/SpectrumView;->c:F

    const p2, 0x3ecccccd    # 0.4f

    mul-float p2, p2, p1

    iput p2, p0, Lcom/snaptube/premium/view/SpectrumView;->e:F

    const p2, 0x3f19999a    # 0.6f

    mul-float p3, p1, p2

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->f:F

    const p3, 0x3e4ccccd    # 0.2f

    mul-float p3, p3, p1

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->g:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/snaptube/premium/view/SpectrumView;->h:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x40fccccd    # 7.9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/snaptube/premium/view/SpectrumView;->b:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p3, p1, p3

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->k:F

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->l:F

    const/4 p3, 0x0

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->m:F

    iput p1, p0, Lcom/snaptube/premium/view/SpectrumView;->n:F

    const p3, 0x40133333    # 2.3f

    mul-float p3, p3, p1

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->o:F

    const p3, 0x40533333    # 3.3f

    mul-float p3, p3, p1

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->p:F

    const p3, 0x40933333    # 4.6f

    mul-float p3, p3, p1

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->q:F

    const p3, 0x40b33333    # 5.6f

    mul-float p3, p3, p1

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->r:F

    const p3, 0x40dccccd    # 6.9f

    mul-float p3, p3, p1

    iput p3, p0, Lcom/snaptube/premium/view/SpectrumView;->s:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/snaptube/premium/view/SpectrumView;->t:F

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/premium/view/SpectrumView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->i()V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/view/SpectrumView;->i()V

    :cond_0
    return-void
.end method
