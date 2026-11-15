.class public Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"


# instance fields
.field public OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

.field public OooO0O0:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o()V

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;-><init>(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 7
    .line 8
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO0O0:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO0O0:Landroid/widget/ImageView$ScaleType;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public getAttacher()Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO0:Landroid/graphics/Matrix;

    .line 4
    .line 5
    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    .line 4
    .line 5
    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    .line 4
    .line 5
    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    .line 4
    .line 5
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o:Z

    .line 4
    .line 5
    return-void
.end method

.method public setFrame(IIII)Z
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
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    .line 4
    .line 5
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    .line 6
    .line 7
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00;->OooO00o(FFF)V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    .line 11
    .line 12
    return-void
.end method

.method public setMediumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    .line 4
    .line 5
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00;->OooO00o(FFF)V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    .line 11
    .line 12
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0Oo:F

    .line 4
    .line 5
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00;->OooO00o(FFF)V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO:F

    .line 11
    .line 12
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0:Landroid/view/GestureDetector;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0O:Landroid/view/View$OnLongClickListener;

    .line 4
    .line 5
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0OO;

    .line 4
    .line 5
    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOoo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0o;

    .line 4
    .line 5
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooO;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooO;

    .line 4
    .line 5
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;

    .line 4
    .line 5
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0O;

    .line 4
    .line 5
    return-void
.end method

.method public setOnViewDragListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;

    .line 4
    .line 5
    return-void
.end method

.method public setOnViewTapListener(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo00:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO;

    .line 4
    .line 5
    return-void
.end method

.method public setRotationBy(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    .line 4
    .line 5
    const/high16 v2, 0x43b40000    # 360.0f

    .line 6
    .line 7
    rem-float/2addr p1, v2

    .line 8
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setRotationTo(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    .line 4
    .line 5
    const/high16 v2, 0x43b40000    # 360.0f

    .line 6
    .line 7
    rem-float/2addr p1, v2

    .line 8
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setScale(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(FFFZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO0O0:Landroid/widget/ImageView$ScaleType;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOo00$OooO00o;->OooO00o:[I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v1, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    .line 23
    .line 24
    if-eq p1, v1, :cond_2

    .line 25
    .line 26
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOooO:Landroid/widget/ImageView$ScaleType;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Matrix scale type is not supported"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0:I

    .line 4
    .line 5
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/PhotoView;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
