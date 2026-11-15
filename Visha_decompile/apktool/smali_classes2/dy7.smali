.class public Ldy7;
.super Leg5;
.source "SourceFile"


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:[F

.field public final k:[F

.field public final l:Landroid/graphics/PathMeasure;

.field public m:Lcy7;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0, p1}, Leg5;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldy7;->i:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array v0, p1, [F

    iput-object v0, p0, Ldy7;->j:[F

    new-array p1, p1, [F

    iput-object p1, p0, Ldy7;->k:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Ldy7;->l:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ldy7;->q(Ldg5;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public q(Ldg5;F)Landroid/graphics/PointF;
    .locals 10

    move-object v0, p1

    check-cast v0, Lcy7;

    invoke-virtual {v0}, Lcy7;->k()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lab0;->e:Liu5;

    if-eqz v2, :cond_0

    iget-object v3, p1, Ldg5;->h:Ljava/lang/Float;

    if-eqz v3, :cond_0

    iget v3, v0, Ldg5;->g:F

    iget-object v4, v0, Ldg5;->h:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Ldg5;->b:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget-object v6, v0, Ldg5;->c:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lab0;->e()F

    move-result v7

    invoke-virtual {p0}, Lab0;->f()F

    move-result v9

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    if-nez v1, :cond_1

    iget-object p0, p1, Ldg5;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    return-object p0

    :cond_1
    iget-object p1, p0, Ldy7;->m:Lcy7;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Ldy7;->l:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Ldy7;->m:Lcy7;

    :cond_2
    iget-object p1, p0, Ldy7;->l:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    mul-float/2addr p2, p1

    iget-object v0, p0, Ldy7;->l:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Ldy7;->j:[F

    iget-object v3, p0, Ldy7;->k:[F

    invoke-virtual {v0, p2, v1, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Ldy7;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Ldy7;->j:[F

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    iget-object p1, p0, Ldy7;->i:Landroid/graphics/PointF;

    iget-object v0, p0, Ldy7;->k:[F

    aget v1, v0, v2

    mul-float/2addr v1, p2

    aget v0, v0, v4

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0

    :cond_3
    cmpl-float v0, p2, p1

    if-lez v0, :cond_4

    iget-object v0, p0, Ldy7;->i:Landroid/graphics/PointF;

    iget-object v1, p0, Ldy7;->k:[F

    aget v2, v1, v2

    sub-float/2addr p2, p1

    mul-float/2addr v2, p2

    aget p1, v1, v4

    mul-float/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    :cond_4
    :goto_0
    iget-object p0, p0, Ldy7;->i:Landroid/graphics/PointF;

    return-object p0
.end method
