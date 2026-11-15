.class public Lx6b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Lab0;

.field public g:Lab0;

.field public h:Lab0;

.field public i:Lab0;

.field public j:Lab0;

.field public k:Lxy3;

.field public l:Lxy3;

.field public m:Lab0;

.field public n:Lab0;

.field public final o:Z


# direct methods
.method public constructor <init>(Lrc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lrc;->c()Lgc;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lrc;->c()Lgc;

    move-result-object v0

    invoke-virtual {v0}, Lgc;->h()Lab0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lx6b;->f:Lab0;

    invoke-virtual {p1}, Lrc;->f()Ltc;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lrc;->f()Ltc;

    move-result-object v0

    invoke-interface {v0}, Ltc;->h()Lab0;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lx6b;->g:Lab0;

    invoke-virtual {p1}, Lrc;->h()Ljc;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lrc;->h()Ljc;

    move-result-object v0

    invoke-virtual {v0}, Ljc;->h()Lab0;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lx6b;->h:Lab0;

    invoke-virtual {p1}, Lrc;->g()Ldc;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lrc;->g()Ldc;

    move-result-object v0

    invoke-virtual {v0}, Ldc;->a()Lxy3;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lx6b;->i:Lab0;

    invoke-virtual {p1}, Lrc;->i()Ldc;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lrc;->i()Ldc;

    move-result-object v0

    invoke-virtual {v0}, Ldc;->a()Lxy3;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lx6b;->k:Lxy3;

    invoke-virtual {p1}, Lrc;->l()Z

    move-result v0

    iput-boolean v0, p0, Lx6b;->o:Z

    iget-object v0, p0, Lx6b;->k:Lxy3;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lx6b;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lx6b;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lx6b;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lx6b;->e:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Lx6b;->b:Landroid/graphics/Matrix;

    iput-object v1, p0, Lx6b;->c:Landroid/graphics/Matrix;

    iput-object v1, p0, Lx6b;->d:Landroid/graphics/Matrix;

    iput-object v1, p0, Lx6b;->e:[F

    :goto_5
    invoke-virtual {p1}, Lrc;->j()Ldc;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lrc;->j()Ldc;

    move-result-object v0

    invoke-virtual {v0}, Ldc;->a()Lxy3;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lx6b;->l:Lxy3;

    invoke-virtual {p1}, Lrc;->e()Lfc;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lrc;->e()Lfc;

    move-result-object v0

    invoke-virtual {v0}, Lfc;->h()Lab0;

    move-result-object v0

    iput-object v0, p0, Lx6b;->j:Lab0;

    :cond_7
    invoke-virtual {p1}, Lrc;->k()Ldc;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lrc;->k()Ldc;

    move-result-object v0

    invoke-virtual {v0}, Ldc;->a()Lxy3;

    move-result-object v0

    iput-object v0, p0, Lx6b;->m:Lab0;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Lx6b;->m:Lab0;

    :goto_7
    invoke-virtual {p1}, Lrc;->d()Ldc;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lrc;->d()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lx6b;->n:Lab0;

    goto :goto_8

    :cond_9
    iput-object v1, p0, Lx6b;->n:Lab0;

    :goto_8
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 1

    iget-object v0, p0, Lx6b;->j:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->m:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->n:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->f:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->g:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->h:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->i:Lab0;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object v0, p0, Lx6b;->k:Lxy3;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object p0, p0, Lx6b;->l:Lxy3;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    return-void
.end method

.method public b(Lab0$b;)V
    .locals 1

    iget-object v0, p0, Lx6b;->j:Lab0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_0
    iget-object v0, p0, Lx6b;->m:Lab0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_1
    iget-object v0, p0, Lx6b;->n:Lab0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_2
    iget-object v0, p0, Lx6b;->f:Lab0;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_3
    iget-object v0, p0, Lx6b;->g:Lab0;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_4
    iget-object v0, p0, Lx6b;->h:Lab0;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_5
    iget-object v0, p0, Lx6b;->i:Lab0;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_6
    iget-object v0, p0, Lx6b;->k:Lxy3;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lab0;->a(Lab0$b;)V

    :cond_7
    iget-object p0, p0, Lx6b;->l:Lxy3;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lab0;->a(Lab0$b;)V

    :cond_8
    return-void
.end method

.method public c(Ljava/lang/Object;Liu5;)Z
    .locals 3

    sget-object v0, Lit5;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lx6b;->f:Lab0;

    if-nez p1, :cond_0

    new-instance p1, Lhnb;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->f:Lab0;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lit5;->g:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lx6b;->g:Lab0;

    if-nez p1, :cond_2

    new-instance p1, Lhnb;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->g:Lab0;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lit5;->h:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lx6b;->g:Lab0;

    instance-of v1, v0, Lgv9;

    if-eqz v1, :cond_4

    check-cast v0, Lgv9;

    invoke-virtual {v0, p2}, Lgv9;->s(Liu5;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lit5;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lx6b;->g:Lab0;

    instance-of v1, v0, Lgv9;

    if-eqz v1, :cond_5

    check-cast v0, Lgv9;

    invoke-virtual {v0, p2}, Lgv9;->t(Liu5;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lit5;->o:Lt19;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lx6b;->h:Lab0;

    if-nez p1, :cond_6

    new-instance p1, Lhnb;

    new-instance v0, Lt19;

    invoke-direct {v0}, Lt19;-><init>()V

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->h:Lab0;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lit5;->p:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lx6b;->i:Lab0;

    if-nez p1, :cond_8

    new-instance p1, Lhnb;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->i:Lab0;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lit5;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lx6b;->j:Lab0;

    if-nez p1, :cond_a

    new-instance p1, Lhnb;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->j:Lab0;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lit5;->C:Ljava/lang/Float;

    const/high16 v2, 0x42c80000    # 100.0f

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lx6b;->m:Lab0;

    if-nez p1, :cond_c

    new-instance p1, Lhnb;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->m:Lab0;

    goto :goto_0

    :cond_c
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_d
    sget-object v0, Lit5;->D:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lx6b;->n:Lab0;

    if-nez p1, :cond_e

    new-instance p1, Lhnb;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lhnb;-><init>(Liu5;Ljava/lang/Object;)V

    iput-object p1, p0, Lx6b;->n:Lab0;

    goto :goto_0

    :cond_e
    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_f
    sget-object v0, Lit5;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lx6b;->k:Lxy3;

    if-nez p1, :cond_10

    new-instance p1, Lxy3;

    new-instance v0, Ldg5;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ldg5;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lxy3;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lx6b;->k:Lxy3;

    :cond_10
    iget-object p0, p0, Lx6b;->k:Lxy3;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lit5;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lx6b;->l:Lxy3;

    if-nez p1, :cond_12

    new-instance p1, Lxy3;

    new-instance v0, Ldg5;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ldg5;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lxy3;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lx6b;->l:Lxy3;

    :cond_12
    iget-object p0, p0, Lx6b;->l:Lxy3;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lx6b;->e:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Lab0;
    .locals 0

    iget-object p0, p0, Lx6b;->n:Lab0;

    return-object p0
.end method

.method public f()Landroid/graphics/Matrix;
    .locals 13

    iget-object v0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lx6b;->g:Lab0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v3, v1

    if-nez v4, :cond_0

    iget v4, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lx6b;->a:Landroid/graphics/Matrix;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-boolean v2, p0, Lx6b;->o:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lab0;->f()F

    move-result v2

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const v5, 0x38d1b717    # 1.0E-4f

    add-float/2addr v5, v2

    invoke-virtual {v0, v5}, Lab0;->n(F)V

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Lab0;->n(F)V

    iget v0, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    float-to-double v2, v0

    iget v0, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lx6b;->i:Lab0;

    if-eqz v0, :cond_4

    instance-of v2, v0, Lhnb;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_3
    check-cast v0, Lxy3;

    invoke-virtual {v0}, Lxy3;->q()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lx6b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lx6b;->k:Lxy3;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    iget-object v3, p0, Lx6b;->l:Lxy3;

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lxy3;->q()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    :goto_2
    iget-object v5, p0, Lx6b;->l:Lxy3;

    if-nez v5, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Lxy3;->q()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_3
    invoke-virtual {v0}, Lxy3;->q()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-virtual {p0}, Lx6b;->d()V

    iget-object v5, p0, Lx6b;->e:[F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v7, 0x1

    aput v4, v5, v7

    neg-float v8, v4

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v3, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Lx6b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lx6b;->d()V

    iget-object v5, p0, Lx6b;->e:[F

    aput v2, v5, v6

    aput v0, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v0, p0, Lx6b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Lx6b;->d()V

    iget-object v0, p0, Lx6b;->e:[F

    aput v3, v0, v6

    aput v8, v0, v7

    aput v4, v0, v9

    aput v3, v0, v10

    aput v2, v0, v11

    iget-object v3, p0, Lx6b;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lx6b;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lx6b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lx6b;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lx6b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lx6b;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_7
    iget-object v0, p0, Lx6b;->h:Lab0;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt19;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lt19;->b()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lt19;->c()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lx6b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lt19;->b()F

    move-result v3

    invoke-virtual {v0}, Lt19;->c()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_9
    iget-object v0, p0, Lx6b;->f:Lab0;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_b

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_a

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lx6b;->a:Landroid/graphics/Matrix;

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_b
    iget-object p0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public g(F)Landroid/graphics/Matrix;
    .locals 9

    iget-object v0, p0, Lx6b;->g:Lab0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Lx6b;->h:Lab0;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt19;

    :goto_1
    iget-object v3, p0, Lx6b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lx6b;->a:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lt19;->b()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2}, Lt19;->c()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Lx6b;->i:Lab0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lx6b;->f:Lab0;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    iget-object v2, p0, Lx6b;->a:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    iget-object p0, p0, Lx6b;->a:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public h()Lab0;
    .locals 0

    iget-object p0, p0, Lx6b;->j:Lab0;

    return-object p0
.end method

.method public i()Lab0;
    .locals 0

    iget-object p0, p0, Lx6b;->m:Lab0;

    return-object p0
.end method

.method public j(F)V
    .locals 1

    iget-object v0, p0, Lx6b;->j:Lab0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_0
    iget-object v0, p0, Lx6b;->m:Lab0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_1
    iget-object v0, p0, Lx6b;->n:Lab0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_2
    iget-object v0, p0, Lx6b;->f:Lab0;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_3
    iget-object v0, p0, Lx6b;->g:Lab0;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_4
    iget-object v0, p0, Lx6b;->h:Lab0;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_5
    iget-object v0, p0, Lx6b;->i:Lab0;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_6
    iget-object v0, p0, Lx6b;->k:Lxy3;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    :cond_7
    iget-object p0, p0, Lx6b;->l:Lxy3;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lab0;->n(F)V

    :cond_8
    return-void
.end method
