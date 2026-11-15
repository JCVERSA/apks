.class public Lcom/transsion/widgets/ScaleTouchView/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

.field private pendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    return-object p0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumScale()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMaximumScale()F

    move-result p0

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMediumScale()F

    move-result p0

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getMinimumScale()F

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScale()F

    move-result p0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    return-object p0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->getSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomable()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->isZoomable()Z

    move-result p0

    return p0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcom/transsion/widgets/ScaleTouchView/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/transsion/widgets/ScaleTouchView/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/transsion/widgets/ScaleTouchView/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnViewDragListener(Lcom/transsion/widgets/ScaleTouchView/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setOnViewTapListener(Lcom/transsion/widgets/ScaleTouchView/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScaleLevels(FFF)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setSuppMatrix(Landroid/graphics/Matrix;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/ScaleTouchView/PhotoView;->attacher:Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
