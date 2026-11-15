.class public Lcom/yalantis/ucrop/view/CropImageView;
.super Lcom/yalantis/ucrop/view/TransformImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;,
        Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_ASPECT_RATIO:F = 0.0f

.field public static final DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:I = 0x1f4

.field public static final DEFAULT_MAX_BITMAP_SIZE:I = 0x0

.field public static final DEFAULT_MAX_SCALE_MULTIPLIER:F = 10.0f

.field public static final SOURCE_IMAGE_ASPECT_RATIO:F


# instance fields
.field public A:I

.field public B:J

.field public final q:Landroid/graphics/RectF;

.field public final r:Landroid/graphics/Matrix;

.field public s:F

.field public t:F

.field public u:Lpl1;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:F

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    const/high16 p1, 0x41200000    # 10.0f

    .line 6
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->t:F

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->w:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->z:I

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->A:I

    const-wide/16 p1, 0x1f4

    .line 9
    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->B:J

    return-void
.end method

.method public static bridge synthetic g(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILye0;)V
    .locals 15
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lye0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    new-instance v2, Ldy4;

    iget-object v3, v0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    invoke-static {v4}, Lzo8;->d([F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Ldy4;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    new-instance v3, Lql1;

    iget v8, v0, Lcom/yalantis/ucrop/view/CropImageView;->z:I

    iget v9, v0, Lcom/yalantis/ucrop/view/CropImageView;->A:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getImageInputPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getImageOutputPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getExifInfo()Lnf3;

    move-result-object v14

    move-object v7, v3

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v14}, Lql1;-><init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lnf3;)V

    new-instance v4, Lcom/yalantis/ucrop/task/BitmapCropTask;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v5, p3

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/yalantis/ucrop/task/BitmapCropTask;-><init>(Landroid/graphics/Bitmap;Ldy4;Lql1;Lye0;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public e()V
    .locals 8

    invoke-super {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->e()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    div-float v2, v1, v0

    iput v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    :cond_1
    iget v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:I

    int-to-float v4, v2

    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p0, Lcom/yalantis/ucrop/view/TransformImageView;->g:I

    if-le v4, v6, :cond_2

    int-to-float v4, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    int-to-float v7, v2

    add-int/2addr v4, v2

    int-to-float v2, v4

    int-to-float v4, v6

    invoke-virtual {v5, v7, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_2
    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    int-to-float v7, v6

    int-to-float v2, v2

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v5, v3, v7, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->j(FF)V

    invoke-virtual {p0, v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->n(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->u:Lpl1;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    invoke-interface {v0, v1}, Lpl1;->a(F)V

    :cond_3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView$b;->c(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result p0

    invoke-interface {v0, p0}, Lcom/yalantis/ucrop/view/TransformImageView$b;->d(F)V

    :cond_4
    return-void
.end method

.method public getCropBoundsChangeListener()Lpl1;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->u:Lpl1;

    return-object p0
.end method

.method public getMaxScale()F
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->x:F

    return p0
.end method

.method public getMinScale()F
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->y:F

    return p0
.end method

.method public getTargetAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    return p0
.end method

.method public final h()[F
    .locals 6

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-static {v1}, Lzo8;->b(Landroid/graphics/RectF;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {v0}, Lzo8;->d([F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v1}, Lzo8;->d([F)Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v5, v2, v1

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    cmpl-float v5, v3, v1

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    cmpg-float v5, v4, v1

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    cmpg-float v5, v0, v1

    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v2, v1, v5

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v1
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->j(FF)V

    return-void
.end method

.method public final j(FF)V
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, p2

    iget-object p2, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->y:F

    iget p2, p0, Lcom/yalantis/ucrop/view/CropImageView;->t:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->x:F

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->l([F)Z

    move-result p0

    return p0
.end method

.method public l([F)Z
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-static {v0}, Lzo8;->b(Landroid/graphics/RectF;)[F

    move-result-object v0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {p1}, Lzo8;->d([F)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {v0}, Lzo8;->d([F)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public m(Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_x:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_y:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v0, p1

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    goto :goto_1

    :cond_1
    :goto_0
    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    :goto_1
    return-void
.end method

.method public final n(FF)V
    .locals 5

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v2

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    mul-float/2addr p2, v2

    sub-float/2addr v1, p2

    div-float/2addr v1, p1

    iget p1, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public o(FFFJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v4

    sub-float v5, p1, v4

    new-instance p1, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/yalantis/ucrop/view/CropImageView$ZoomImageToPosition;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRotate(F)V
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->postRotate(FFF)V

    return-void
.end method

.method public postScale(FFF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->postScale(FFF)V

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->postScale(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCropBoundsChangeListener(Lpl1;)V
    .locals 0
    .param p1    # Lpl1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->u:Lpl1;

    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->i()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/yalantis/ucrop/view/CropImageView;->n(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method public setImageToWrapCropBounds()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 13

    .line 2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v2, 0x1

    .line 4
    aget v7, v0, v2

    .line 5
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v10

    .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v0, v6

    .line 7
    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v7

    .line 8
    iget-object v4, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 9
    iget-object v4, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 10
    iget-object v4, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12
    invoke-virtual {p0, v4}, Lcom/yalantis/ucrop/view/CropImageView;->l([F)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->h()[F

    move-result-object v0

    .line 14
    aget v1, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    .line 15
    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    add-float/2addr v2, v0

    neg-float v0, v2

    const/4 v2, 0x0

    move v9, v0

    move v8, v1

    move v11, v2

    goto :goto_0

    .line 16
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 17
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 18
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 19
    iget-object v5, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 20
    iget-object v5, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    invoke-static {v5}, Lzo8;->c([F)[F

    move-result-object v5

    .line 21
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    aget v1, v5, v1

    div-float/2addr v8, v1

    .line 22
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    aget v2, v5, v2

    div-float/2addr v1, v2

    .line 23
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v10

    sub-float/2addr v1, v10

    move v8, v0

    move v11, v1

    move v9, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 24
    new-instance p1, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView;->B:J

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/yalantis/ucrop/view/CropImageView$WrapCropBoundsRunnable;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0, v8, v9}, Lcom/yalantis/ucrop/view/TransformImageView;->postTranslate(FF)V

    if-nez v12, :cond_2

    add-float/2addr v10, v11

    .line 26
    iget-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v10, p1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
    .locals 2
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->B:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Animation duration cannot be negative value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->z:I

    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->A:I

    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->t:F

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    :goto_0
    iget-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->u:Lpl1;

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:F

    invoke-interface {p1, p0}, Lpl1;->a(F)V

    :cond_2
    return-void
.end method

.method public zoomInImage(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(FFF)V

    return-void
.end method

.method public zoomInImage(FFF)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V

    :cond_0
    return-void
.end method

.method public zoomOutImage(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->zoomOutImage(FFF)V

    return-void
.end method

.method public zoomOutImage(FFF)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;->postScale(FFF)V

    :cond_0
    return-void
.end method
