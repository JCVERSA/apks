.class public Lcom/transsion/audio/widgets/SmartEditAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final MERGE_PHASE_START:F = 0.8f

.field private static final ROTATION_PHASE_END:F = 0.85f

.field private static final SEPARATION_PHASE_END:F = 0.15f


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private centerX:F

.field private centerY:F

.field private connectionPaint:Landroid/graphics/Paint;

.field private dot1X:F

.field private dot1Y:F

.field private dot2X:F

.field private dot2Y:F

.field private dotPaint:Landroid/graphics/Paint;

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field gradient:Landroid/graphics/LinearGradient;

.field private isLoading:Z

.field private radius:F

.field private scaleAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    .line 3
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iget v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    iget v4, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    const/4 v0, -0x1

    filled-new-array {v0, p1, p1, v0}, [I

    move-result-object v5

    const/4 p1, 0x4

    new-array v6, p1, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->gradient:Landroid/graphics/LinearGradient;

    .line 4
    invoke-direct {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    .line 7
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iget v4, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    iget v5, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    const/4 v1, -0x1

    filled-new-array {v1, v0, v0, v1}, [I

    move-result-object v6

    const/4 v0, 0x4

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->gradient:Landroid/graphics/LinearGradient;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->initForegroundDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    invoke-direct {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 11
    iput-boolean p3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    .line 12
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iget v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    iget v4, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    const/4 v0, -0x1

    filled-new-array {v0, p3, p3, v0}, [I

    move-result-object v5

    const/4 p3, 0x4

    new-array v6, p3, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->gradient:Landroid/graphics/LinearGradient;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->initForegroundDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-direct {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static bridge synthetic a(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->centerX:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->centerY:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/audio/widgets/SmartEditAnimationView;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->radius:F

    return p0
.end method

.method private cancelAnimators()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->scaleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->scaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/audio/widgets/SmartEditAnimationView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    return-void
.end method

.method private init()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dotPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dotPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private initForegroundDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/transsion/audio/R$styleable;->SmartEditAnimationView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/transsion/audio/R$styleable;->SmartEditAnimationView_foregroundSrc:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private startScaleAnimation()V
    .locals 6

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->scaleAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->scaleAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->scaleAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lt53;

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v5, v3, v4, v1}, Lt53;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->scaleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->cancelAnimators()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->radius:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    iget v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iget v4, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    sub-float/2addr v2, v1

    float-to-double v1, v2

    iget v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    iget v4, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->radius:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v0

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget v5, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iget v6, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    iget v7, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    iget-object v8, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->connectionPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iget-object v3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    iget v2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->centerX:F

    int-to-float p3, p2

    div-float/2addr p3, p4

    iput p3, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->centerY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->radius:F

    iget p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->centerX:F

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1X:F

    iget p2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->centerY:F

    iput p2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot1Y:F

    iput p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2X:F

    iput p2, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->dot2Y:F

    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->isLoading:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->startScaleAnimation()V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->startAnimation()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView;->cancelAnimators()V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/SmartEditAnimationView$1;-><init>(Lcom/transsion/audio/widgets/SmartEditAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/SmartEditAnimationView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
