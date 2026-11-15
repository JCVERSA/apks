.class public Lcom/yalantis/ucrop/view/TransformImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/TransformImageView$b;
    }
.end annotation


# instance fields
.field public final b:[F

.field public final c:[F

.field public final d:[F

.field public e:Landroid/graphics/Matrix;

.field public f:I

.field public g:I

.field public h:Lcom/yalantis/ucrop/view/TransformImageView$b;

.field public i:[F

.field public j:[F

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lnf3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 4
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:[F

    const/16 p1, 0x9

    .line 6
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->d:[F

    .line 7
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->k:Z

    .line 9
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:Z

    .line 10
    iput p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:I

    .line 11
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/yalantis/ucrop/view/TransformImageView;Lnf3;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->p:Lnf3;

    return-void
.end method

.method public static bridge synthetic b(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->n:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->d:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->d:[F

    aget p0, p0, p2

    return p0
.end method

.method public e()V
    .locals 4

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

    float-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    float-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Image size: [%d:%d]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransformImageView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2}, Lzo8;->b(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->i:[F

    invoke-static {v2}, Lzo8;->a(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->j:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:Z

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yalantis/ucrop/view/TransformImageView$b;->a()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    iget-object v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->i:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:[F

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->j:[F

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method

.method public getCurrentAngle()F
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public getCurrentScale()F
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public getExifInfo()Lnf3;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->p:Lnf3;

    return-object p0
.end method

.method public getImageInputPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getImageOutputPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getMatrixAngle(Landroid/graphics/Matrix;)F
    .locals 3
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->d(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/yalantis/ucrop/view/TransformImageView;->d(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, v0

    neg-double p0, p0

    double-to-float p0, p0

    return p0
.end method

.method public getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->d(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/yalantis/ucrop/view/TransformImageView;->d(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getMaxBitmapSize()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lef0;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:I

    :cond_0
    iget p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:I

    return p0
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lep3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lep3;

    invoke-virtual {p0}, Lep3;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->k:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:Z

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:I

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/yalantis/ucrop/view/TransformImageView;->g:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->e()V

    :cond_1
    return-void
.end method

.method public postRotate(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/yalantis/ucrop/view/TransformImageView$b;->d(F)V

    :cond_0
    return-void
.end method

.method public postScale(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/yalantis/ucrop/view/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/yalantis/ucrop/view/TransformImageView$b;->c(F)V

    :cond_0
    return-void
.end method

.method public postTranslate(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lep3;

    invoke-direct {v0, p1}, Lep3;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->f()V

    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getMaxBitmapSize()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/yalantis/ucrop/view/TransformImageView$a;

    invoke-direct {v5, p0}, Lcom/yalantis/ucrop/view/TransformImageView$a;-><init>(Lcom/yalantis/ucrop/view/TransformImageView;)V

    move-object v1, p1

    move-object v2, p2

    move v3, v4

    invoke-static/range {v0 .. v5}, Lef0;->d(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcf0;)V

    return-void
.end method

.method public setMaxBitmapSize(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:I

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    const-string p0, "TransformImageView"

    const-string p1, "Invalid ScaleType. Only ScaleType.MATRIX can be used"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    return-void
.end method
