.class public Lnj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu23;
.implements Lab0$b;
.implements Lvf5;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/airbnb/lottie/model/layer/a;

.field public final d:Landroidx/collection/LongSparseArray;

.field public final e:Landroidx/collection/LongSparseArray;

.field public final f:Landroid/graphics/Path;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Ljava/util/List;

.field public final j:Lcom/airbnb/lottie/model/content/GradientType;

.field public final k:Lab0;

.field public final l:Lab0;

.field public final m:Lab0;

.field public final n:Lab0;

.field public o:Lab0;

.field public p:Lhnb;

.field public final q:Lcom/airbnb/lottie/LottieDrawable;

.field public final r:I

.field public s:Lab0;

.field public t:F

.field public u:Ln33;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;Lmj4;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lnj4;->d:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lnj4;->e:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnj4;->f:Landroid/graphics/Path;

    new-instance v1, Lni5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lni5;-><init>(I)V

    iput-object v1, p0, Lnj4;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lnj4;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnj4;->i:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lnj4;->t:F

    iput-object p3, p0, Lnj4;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p4}, Lmj4;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnj4;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lmj4;->i()Z

    move-result v1

    iput-boolean v1, p0, Lnj4;->b:Z

    iput-object p1, p0, Lnj4;->q:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p4}, Lmj4;->e()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object p1

    iput-object p1, p0, Lnj4;->j:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p4}, Lmj4;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2}, Lur5;->d()F

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lnj4;->r:I

    invoke-virtual {p4}, Lmj4;->d()Lec;

    move-result-object p1

    invoke-virtual {p1}, Lec;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lnj4;->k:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p4}, Lmj4;->g()Lfc;

    move-result-object p1

    invoke-virtual {p1}, Lfc;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lnj4;->l:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p4}, Lmj4;->h()Lic;

    move-result-object p1

    invoke-virtual {p1}, Lic;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lnj4;->m:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p4}, Lmj4;->b()Lic;

    move-result-object p1

    invoke-virtual {p1}, Lic;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lnj4;->n:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p1

    invoke-virtual {p1}, Lag0;->a()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lnj4;->s:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lnj4;->s:Lab0;

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_0
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ln33;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Ln33;-><init>(Lab0$b;Lcom/airbnb/lottie/model/layer/a;Ll33;)V

    iput-object p1, p0, Lnj4;->u:Ln33;

    :cond_1
    return-void
.end method

.method private b([I)[I
    .locals 3

    iget-object p0, p0, Lnj4;->p:Lhnb;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lhnb;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private i()I
    .locals 3

    iget-object v0, p0, Lnj4;->m:Lab0;

    invoke-virtual {v0}, Lab0;->f()F

    move-result v0

    iget v1, p0, Lnj4;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lnj4;->n:Lab0;

    invoke-virtual {v1}, Lab0;->f()F

    move-result v1

    iget v2, p0, Lnj4;->r:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lnj4;->k:Lab0;

    invoke-virtual {v2}, Lab0;->f()F

    move-result v2

    iget p0, p0, Lnj4;->r:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method private j()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lnj4;->i()I

    move-result v0

    iget-object v1, p0, Lnj4;->d:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnj4;->m:Lab0;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lnj4;->n:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lnj4;->k:Lab0;

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj4;

    invoke-virtual {v4}, Ljj4;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lnj4;->b([I)[I

    move-result-object v11

    invoke-virtual {v4}, Ljj4;->e()[F

    move-result-object v12

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lnj4;->d:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v4
.end method

.method private k()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lnj4;->i()I

    move-result v0

    iget-object v1, p0, Lnj4;->e:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnj4;->m:Lab0;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lnj4;->n:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lnj4;->k:Lab0;

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj4;

    invoke-virtual {v4}, Ljj4;->d()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lnj4;->b([I)[I

    move-result-object v10

    invoke-virtual {v4}, Ljj4;->e()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lnj4;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lnj4;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lnj4;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnj4;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lnj4;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lby7;

    invoke-interface {v2}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnj4;->f:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c(Ltf5;ILjava/util/List;Ltf5;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lxp6;->k(Ltf5;ILjava/util/List;Ltf5;Lvf5;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Lnj4;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "GradientFillContent#draw"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnj4;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lnj4;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lnj4;->f:Landroid/graphics/Path;

    iget-object v4, p0, Lnj4;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lby7;

    invoke-interface {v4}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnj4;->f:Landroid/graphics/Path;

    iget-object v3, p0, Lnj4;->h:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Lnj4;->j:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lnj4;->j()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lnj4;->k()Landroid/graphics/RadialGradient;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lnj4;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lnj4;->o:Lab0;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lnj4;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4
    iget-object v2, p0, Lnj4;->s:Lab0;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lnj4;->g:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    :cond_5
    iget v3, p0, Lnj4;->t:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v4, p0, Lnj4;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_6
    :goto_2
    iput v2, p0, Lnj4;->t:F

    :cond_7
    int-to-float v2, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lnj4;->l:Lab0;

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lnj4;->g:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v2, v0, v4}, Lxp6;->c(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lnj4;->u:Ln33;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lnj4;->g:Landroid/graphics/Paint;

    invoke-static {p3, v2}, Lplb;->l(II)I

    move-result p3

    invoke-virtual {v0, v3, p2, p3}, Ln33;->a(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_8
    iget-object p2, p0, Lnj4;->f:Landroid/graphics/Path;

    iget-object p0, p0, Lnj4;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_9
    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lnj4;->q:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg1;

    instance-of v1, v0, Lby7;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnj4;->i:Ljava/util/List;

    check-cast v0, Lby7;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnj4;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 2

    sget-object v0, Lit5;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lnj4;->l:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lit5;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lnj4;->o:Lab0;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnj4;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_1
    if-nez p2, :cond_2

    iput-object v1, p0, Lnj4;->o:Lab0;

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lnj4;->o:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lnj4;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lnj4;->o:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lit5;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lnj4;->p:Lhnb;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lnj4;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_4
    if-nez p2, :cond_5

    iput-object v1, p0, Lnj4;->p:Lhnb;

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lnj4;->d:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    iget-object p1, p0, Lnj4;->e:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lnj4;->p:Lhnb;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lnj4;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lnj4;->p:Lhnb;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lit5;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lnj4;->s:Lab0;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_7
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lnj4;->s:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lnj4;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lnj4;->s:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lit5;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lnj4;->u:Ln33;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ln33;->b(Liu5;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lit5;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lnj4;->u:Ln33;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ln33;->f(Liu5;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lit5;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lnj4;->u:Ln33;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Ln33;->c(Liu5;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lit5;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lnj4;->u:Ln33;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Ln33;->d(Liu5;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lit5;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Lnj4;->u:Ln33;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Ln33;->g(Liu5;)V

    :cond_d
    :goto_0
    return-void
.end method
