.class public Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/animation/ValueAnimator;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Bitmap;

.field public h:Landroid/graphics/Canvas;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:F

.field public q:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    :try_start_0
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_angle:I

    const/16 v0, 0x2d

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    .line 7
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_animation_duration:I

    const/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->l:I

    .line 8
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_base:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_base_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m:I

    .line 9
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_auto_start:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->k:Z

    .line 10
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_mask_width:I

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    .line 11
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_gradient_center_color_width:I

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->p:F

    .line 12
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSShimmerLayout_os_shimmer_reverse_animation:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iget p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->setMaskWidth(F)V

    .line 15
    iget p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->p:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->setGradientCenterColorWidth(F)V

    .line 16
    iget p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->setShimmerAngle(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    throw p0
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->b:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->b:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method private getGradientColorDistribution()[F
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->p:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v2, v3, v2

    const/4 v4, 0x1

    aput v2, v0, v4

    div-float/2addr p0, v1

    add-float/2addr p0, v3

    const/4 v1, 0x2

    aput p0, v0, v1

    return-object v0
.end method

.method private getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private getShimmerAnimation()Landroid/animation/Animator;
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->i:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    filled-new-array {v0, v4}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    filled-new-array {v4, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->l:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;

    invoke-direct {v3, p0, v1, v2}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$b;-><init>(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->i(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->f()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final f()I
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    iget p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public final g(II)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->k(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v6, v3, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float v7, v5, v3

    iget v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m:I

    filled-new-array {v0, v1, v1, v0}, [I

    move-result-object v8

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->getGradientColorDistribution()[F

    move-result-object v9

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    move-object v3, v2

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->f:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/ComposeShader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public hideProgressView()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->stopShimmerAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j:Z

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->b:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    div-float v5, v0, v1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final k(I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->h:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->g:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->startShimmerAnimation()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->e:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->d:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->l()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setAnimationReversed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->i:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m()V

    return-void
.end method

.method public setGradientCenterColorWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->p:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gradientCenterColorWidth value must be higher than %d and less than %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaskWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->o:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "maskWidth value must be higher than %d and less or equal to %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShimmerAngle(I)V
    .locals 2

    const/16 v0, 0x2d

    const/16 v1, -0x2d

    if-lt p1, v1, :cond_0

    if-lt v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "shimmerAngle value must be between %d and %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShimmerAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->l:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m()V

    return-void
.end method

.method public setShimmerColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->m()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->k:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->startShimmerAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->stopShimmerAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showProgressView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->startShimmerAnimation()V

    return-void
.end method

.method public startShimmerAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout$a;-><init>(Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->j:Z

    return-void
.end method

.method public stopShimmerAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->q:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/shimmer/OSShimmerLayout;->n()V

    return-void
.end method
