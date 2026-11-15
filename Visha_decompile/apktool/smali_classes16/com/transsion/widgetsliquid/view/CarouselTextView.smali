.class public Lcom/transsion/widgetsliquid/view/CarouselTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsliquid/view/CarouselTextView$a;
    }
.end annotation


# instance fields
.field public c:F

.field public d:F

.field public e:I

.field public final f:I

.field public final g:J

.field public h:Z

.field public i:Z

.field public j:Landroid/animation/ValueAnimator;

.field public k:I

.field public l:F

.field public m:Z

.field public n:I

.field public o:F

.field public p:F

.field public q:Z

.field public r:[I

.field public s:Lcom/transsion/widgetsliquid/view/CarouselTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lyj1;->d(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->e:I

    const/4 v2, 0x2

    .line 7
    iput v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->f:I

    const-wide/16 v2, 0x3e8

    .line 8
    iput-wide v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->g:J

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h:Z

    .line 10
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i:Z

    .line 11
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    const v3, 0x7fffffff

    .line 12
    iput v3, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->n:I

    .line 13
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->q:Z

    .line 14
    sget v3, Lcom/transsion/widgetsliquid/R$attr;->os_text_secondary:I

    filled-new-array {v3}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->r:[I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->o:F

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->p:F

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->o:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->o:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->r:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 20
    sget p2, Lcom/transsion/widgetsliquid/R$color;->os_color_black100:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsliquid/view/CarouselTextView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetsliquid/view/CarouselTextView;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->g(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v1, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public _setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->n:I

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->l:F

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->e:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i:Z

    new-instance v0, Lxr0;

    invoke-direct {v0, p0}, Lxr0;-><init>(Lcom/transsion/widgetsliquid/view/CarouselTextView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic f()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i:Z

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h:Z

    :cond_0
    return-void
.end method

.method public forceScrollCheck()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h()V

    return-void
.end method

.method public final synthetic g(FLandroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean p2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    sub-float v0, p1, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h:Z

    iput-boolean v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i:Z

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i()V

    return-void
.end method

.method public final i()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c()V

    iget-boolean v3, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->q:Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->l:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, v3

    float-to-long v4, v4

    iget-boolean v6, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iput v7, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    new-array v2, v2, [F

    aput v3, v2, v1

    aput v7, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    iput v7, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    new-array v2, v2, [F

    aput v7, v2, v1

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lwr0;

    invoke-direct {v1, p0, v3}, Lwr0;-><init>(Lcom/transsion/widgetsliquid/view/CarouselTextView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isRtl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->j()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->k:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-boolean v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->q:Z

    if-nez v4, :cond_2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->m:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->k:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->l:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->l:F

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    int-to-float v2, v2

    iget v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->d:F

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->l:F

    add-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :goto_1
    :try_start_1
    const-string v0, "CarouselTextView"

    const-string v1, "Error in onDraw"

    invoke-static {v0, v1, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_4
    :goto_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->o:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->q:Z

    iget p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->k:I

    iget v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->n:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->p:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c()V

    iget p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->k:I

    iget v0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->n:I

    if-le p1, v0, :cond_0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->q:Z

    move p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->s:Lcom/transsion/widgetsliquid/view/CarouselTextView$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/transsion/widgetsliquid/view/CarouselTextView$a;->a(I)V

    :cond_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h()V

    return-void
.end method

.method public setMaxCarouselCount(I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->e:I

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h()V

    return-void
.end method

.method public setOnWidthChangedListener(Lcom/transsion/widgetsliquid/view/CarouselTextView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->s:Lcom/transsion/widgetsliquid/view/CarouselTextView$a;

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->i:Z

    return-void
.end method

.method public setTextSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c:F

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->c()V

    invoke-virtual {p0}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->h()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
