.class public Lpj4;
.super Lpc0;
.source "SourceFile"


# instance fields
.field public final A:Lab0;

.field public B:Lhnb;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Landroidx/collection/LongSparseArray;

.field public final u:Landroidx/collection/LongSparseArray;

.field public final v:Landroid/graphics/RectF;

.field public final w:Lcom/airbnb/lottie/model/content/GradientType;

.field public final x:I

.field public final y:Lab0;

.field public final z:Lab0;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V
    .locals 11

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->i()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->k()Lfc;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->m()Ldc;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->h()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->c()Ldc;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lpc0;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfc;Ldc;Ljava/util/List;Ldc;)V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lpj4;->t:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lpj4;->u:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpj4;->v:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpj4;->r:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->f()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lpj4;->w:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->n()Z

    move-result v0

    iput-boolean v0, p0, Lpj4;->s:Z

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->O()Lur5;

    move-result-object p1

    invoke-virtual {p1}, Lur5;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lpj4;->x:I

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->e()Lec;

    move-result-object p1

    invoke-virtual {p1}, Lec;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lpj4;->y:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->l()Lic;

    move-result-object p1

    invoke-virtual {p1}, Lic;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lpj4;->z:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/a;->d()Lic;

    move-result-object p1

    invoke-virtual {p1}, Lic;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lpj4;->A:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lpj4;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpj4;->v:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lpc0;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lpj4;->w:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lpj4;->l()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpj4;->m()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Lpc0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lpj4;->r:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lpc0;->h(Ljava/lang/Object;Liu5;)V

    sget-object v0, Lit5;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lpj4;->B:Lhnb;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lpj4;->B:Lhnb;

    goto :goto_0

    :cond_1
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lpj4;->B:Lhnb;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lpj4;->B:Lhnb;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j([I)[I
    .locals 3

    iget-object p0, p0, Lpj4;->B:Lhnb;

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

.method public final k()I
    .locals 3

    iget-object v0, p0, Lpj4;->z:Lab0;

    invoke-virtual {v0}, Lab0;->f()F

    move-result v0

    iget v1, p0, Lpj4;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lpj4;->A:Lab0;

    invoke-virtual {v1}, Lab0;->f()F

    move-result v1

    iget v2, p0, Lpj4;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lpj4;->y:Lab0;

    invoke-virtual {v2}, Lab0;->f()F

    move-result v2

    iget p0, p0, Lpj4;->x:I

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

.method public final l()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-virtual {p0}, Lpj4;->k()I

    move-result v0

    iget-object v1, p0, Lpj4;->t:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lpj4;->z:Lab0;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lpj4;->A:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lpj4;->y:Lab0;

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj4;

    invoke-virtual {v4}, Ljj4;->d()[I

    move-result-object v5

    invoke-virtual {p0, v5}, Lpj4;->j([I)[I

    move-result-object v11

    invoke-virtual {v4}, Ljj4;->e()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lpj4;->t:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method

.method public final m()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-virtual {p0}, Lpj4;->k()I

    move-result v0

    iget-object v1, p0, Lpj4;->u:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lpj4;->z:Lab0;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lpj4;->A:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lpj4;->y:Lab0;

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj4;

    invoke-virtual {v4}, Ljj4;->d()[I

    move-result-object v5

    invoke-virtual {p0, v5}, Lpj4;->j([I)[I

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

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lpj4;->u:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method
