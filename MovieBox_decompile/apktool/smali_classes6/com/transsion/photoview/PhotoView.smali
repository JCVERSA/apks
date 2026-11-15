.class public Lcom/transsion/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"


# instance fields
.field private d:Lcom/transsion/photoview/PhotoViewAttachment;

.field private e:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/transsion/photoview/PhotoView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/photoview/PhotoViewAttachment;-><init>(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 7
    .line 8
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->e:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/transsion/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/transsion/photoview/PhotoView;->e:Landroid/widget/ImageView$ScaleType;

    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public getAttachment()Lcom/transsion/photoview/PhotoViewAttachment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->C(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->D()Landroid/graphics/RectF;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->G()Landroid/graphics/Matrix;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->J()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->K()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->L()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->M()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->N()Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->O(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isZoomable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/photoview/PhotoViewAttachment;->R()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->T(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->U(Landroid/graphics/Matrix;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/photoview/PhotoViewAttachment;->t0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->W(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->X(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->Y(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->Z(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->a0(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->b0(Landroid/view/View$OnLongClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/transsion/photoview/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->c0(Lcom/transsion/photoview/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/transsion/photoview/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->d0(Lcom/transsion/photoview/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/transsion/photoview/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->e0(Lcom/transsion/photoview/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/transsion/photoview/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->f0(Lcom/transsion/photoview/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/transsion/photoview/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->g0(Lcom/transsion/photoview/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnViewDragListener(Lcom/transsion/photoview/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->h0(Lcom/transsion/photoview/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnViewTapListener(Lcom/transsion/photoview/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->i0(Lcom/transsion/photoview/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->j0(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->k0(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->l0(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/photoview/PhotoViewAttachment;->m0(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/photoview/PhotoViewAttachment;->n0(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/photoview/PhotoViewAttachment;->o0(FFF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/transsion/photoview/PhotoView;->e:Landroid/widget/ImageView$ScaleType;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->p0(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public setSlideUpAndDownListener(Lcom/transsion/photoview/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->q0(Lcom/transsion/photoview/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSuppMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->U(Landroid/graphics/Matrix;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->r0(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/PhotoView;->d:Lcom/transsion/photoview/PhotoViewAttachment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/photoview/PhotoViewAttachment;->s0(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
