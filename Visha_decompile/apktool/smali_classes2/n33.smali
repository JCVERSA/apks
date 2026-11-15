.class public Ln33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab0$b;


# instance fields
.field public final a:Lcom/airbnb/lottie/model/layer/a;

.field public final b:Lab0$b;

.field public final c:Lab0;

.field public final d:Lxy3;

.field public final e:Lxy3;

.field public final f:Lxy3;

.field public final g:Lxy3;

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public final l:[F


# direct methods
.method public constructor <init>(Lab0$b;Lcom/airbnb/lottie/model/layer/a;Ll33;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Ln33;->h:F

    iput v0, p0, Ln33;->i:F

    iput v0, p0, Ln33;->j:F

    const/4 v0, 0x0

    iput v0, p0, Ln33;->k:I

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ln33;->l:[F

    iput-object p1, p0, Ln33;->b:Lab0$b;

    iput-object p2, p0, Ln33;->a:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p3}, Ll33;->a()Lcc;

    move-result-object p1

    invoke-virtual {p1}, Lcc;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Ln33;->c:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Ll33;->d()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Ln33;->d:Lxy3;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Ll33;->b()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Ln33;->e:Lxy3;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Ll33;->c()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Ln33;->f:Lxy3;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Ll33;->e()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Ln33;->g:Lxy3;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V
    .locals 7

    iget-object v0, p0, Ln33;->e:Lxy3;

    invoke-virtual {v0}, Lxy3;->q()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    iget-object v1, p0, Ln33;->f:Lxy3;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Ln33;->a:Lcom/airbnb/lottie/model/layer/a;

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/a;->x:Lx6b;

    invoke-virtual {v1}, Lx6b;->f()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Ln33;->l:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Ln33;->l:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x4

    aget v6, v1, v5

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Ln33;->l:[F

    aget v1, p2, v3

    aget p2, p2, v5

    div-float/2addr v1, v4

    div-float/2addr p2, v6

    mul-float/2addr v0, v1

    mul-float/2addr v2, p2

    iget-object p2, p0, Ln33;->c:Lab0;

    invoke-virtual {p2}, Lab0;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v3, p0, Ln33;->d:Lxy3;

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    int-to-float p3, p3

    mul-float/2addr v3, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p3, v3, v4, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iget-object p3, p0, Ln33;->g:Lxy3;

    invoke-virtual {p3}, Lab0;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p3, v1

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p3, v1

    const/4 v1, 0x1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v1, p0, Ln33;->h:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_0

    iget v1, p0, Ln33;->i:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    iget v1, p0, Ln33;->j:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ln33;->k:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iput p3, p0, Ln33;->h:F

    iput v0, p0, Ln33;->i:F

    iput v2, p0, Ln33;->j:F

    iput p2, p0, Ln33;->k:I

    invoke-virtual {p1, p3, v0, v2, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public b(Liu5;)V
    .locals 0

    iget-object p0, p0, Ln33;->c:Lab0;

    invoke-virtual {p0, p1}, Lab0;->o(Liu5;)V

    return-void
.end method

.method public c(Liu5;)V
    .locals 0

    iget-object p0, p0, Ln33;->e:Lxy3;

    invoke-virtual {p0, p1}, Lab0;->o(Liu5;)V

    return-void
.end method

.method public d(Liu5;)V
    .locals 0

    iget-object p0, p0, Ln33;->f:Lxy3;

    invoke-virtual {p0, p1}, Lab0;->o(Liu5;)V

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Ln33;->b:Lab0$b;

    invoke-interface {p0}, Lab0$b;->e()V

    return-void
.end method

.method public f(Liu5;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Ln33;->d:Lxy3;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lab0;->o(Liu5;)V

    return-void

    :cond_0
    iget-object v0, p0, Ln33;->d:Lxy3;

    new-instance v1, Ln33$a;

    invoke-direct {v1, p0, p1}, Ln33$a;-><init>(Ln33;Liu5;)V

    invoke-virtual {v0, v1}, Lab0;->o(Liu5;)V

    return-void
.end method

.method public g(Liu5;)V
    .locals 0

    iget-object p0, p0, Ln33;->g:Lxy3;

    invoke-virtual {p0, p1}, Lab0;->o(Liu5;)V

    return-void
.end method
