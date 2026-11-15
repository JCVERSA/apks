.class public abstract Lpc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab0$b;
.implements Lvf5;
.implements Lu23;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc0$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/PathMeasure;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public final e:Lcom/airbnb/lottie/LottieDrawable;

.field public final f:Lcom/airbnb/lottie/model/layer/a;

.field public final g:Ljava/util/List;

.field public final h:[F

.field public final i:Landroid/graphics/Paint;

.field public final j:Lab0;

.field public final k:Lab0;

.field public final l:Ljava/util/List;

.field public final m:Lab0;

.field public n:Lab0;

.field public o:Lab0;

.field public p:F

.field public q:Ln33;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfc;Ldc;Ljava/util/List;Ldc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lpc0;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lpc0;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpc0;->d:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpc0;->g:Ljava/util/List;

    new-instance v0, Lni5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lni5;-><init>(I)V

    iput-object v0, p0, Lpc0;->i:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lpc0;->p:F

    iput-object p1, p0, Lpc0;->e:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lfc;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lpc0;->k:Lab0;

    invoke-virtual {p7}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lpc0;->j:Lab0;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lpc0;->m:Lab0;

    goto :goto_0

    :cond_0
    invoke-virtual {p9}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lpc0;->m:Lab0;

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lpc0;->h:[F

    const/4 p1, 0x0

    move p3, p1

    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    iget-object p4, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ldc;

    invoke-virtual {p5}, Ldc;->a()Lxy3;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lpc0;->k:Lab0;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    iget-object p3, p0, Lpc0;->j:Lab0;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    move p3, p1

    :goto_2
    iget-object p4, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lab0;

    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lpc0;->m:Lab0;

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_3
    iget-object p3, p0, Lpc0;->k:Lab0;

    invoke-virtual {p3, p0}, Lab0;->a(Lab0$b;)V

    iget-object p3, p0, Lpc0;->j:Lab0;

    invoke-virtual {p3, p0}, Lab0;->a(Lab0$b;)V

    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lab0;

    invoke-virtual {p3, p0}, Lab0;->a(Lab0$b;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lpc0;->m:Lab0;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    :cond_5
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p1

    invoke-virtual {p1}, Lag0;->a()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lpc0;->o:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lpc0;->o:Lab0;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Ln33;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Ln33;-><init>(Lab0$b;Lcom/airbnb/lottie/model/layer/a;Ll33;)V

    iput-object p1, p0, Lpc0;->q:Ln33;

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    invoke-static {}, Lyh5;->h()Z

    move-result p3

    const-string v0, "StrokeContent#getBounds"

    if-eqz p3, :cond_0

    invoke-static {v0}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lpc0;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    iget-object v2, p0, Lpc0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lpc0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpc0$b;

    move v3, p3

    :goto_1
    invoke-static {v2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lpc0;->b:Landroid/graphics/Path;

    invoke-static {v2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lby7;

    invoke-interface {v5}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lpc0;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lpc0;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lpc0;->j:Lab0;

    check-cast p2, Lxy3;

    invoke-virtual {p2}, Lxy3;->q()F

    move-result p2

    iget-object p3, p0, Lpc0;->d:Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lpc0;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    invoke-virtual {p1, p0, p3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Lyh5;->c(Ljava/lang/String;)F

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "StrokeContent#applyDashPattern"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lpc0;->h:[F

    iget-object v3, p0, Lpc0;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lab0;

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    iget-object v2, p0, Lpc0;->h:[F

    aget v3, v2, v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    aput v4, v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lpc0;->h:[F

    aget v3, v2, v0

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    aput v4, v2, v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lpc0;->m:Lab0;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_2
    iget-object v2, p0, Lpc0;->i:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    iget-object p0, p0, Lpc0;->h:[F

    invoke-direct {v3, p0, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_7
    return-void
.end method

.method public c(Ltf5;ILjava/util/List;Ltf5;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lxp6;->k(Ltf5;ILjava/util/List;Ltf5;Lvf5;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "StrokeContent#draw"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lplb;->h(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    int-to-float v0, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    iget-object v3, p0, Lpc0;->k:Lab0;

    check-cast v3, Lc25;

    invoke-virtual {v3}, Lc25;->q()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lpc0;->i:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lxp6;->c(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lpc0;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Lpc0;->j:Lab0;

    check-cast v3, Lxy3;

    invoke-virtual {v3}, Lxy3;->q()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lpc0;->b()V

    iget-object v2, p0, Lpc0;->n:Lab0;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    iget-object v2, p0, Lpc0;->o:Lab0;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v3, v2, v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lpc0;->i:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_6
    iget v3, p0, Lpc0;->p:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/model/layer/a;->x(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v3

    iget-object v5, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_7
    :goto_0
    iput v2, p0, Lpc0;->p:F

    :cond_8
    iget-object v2, p0, Lpc0;->q:Ln33;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-static {p3, v0}, Lplb;->l(II)I

    move-result p3

    invoke-virtual {v2, v3, p2, p3}, Ln33;->a(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :goto_1
    iget-object p2, p0, Lpc0;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_f

    iget-object p2, p0, Lpc0;->g:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpc0$b;

    invoke-static {p2}, Lpc0$b;->b(Lpc0$b;)Lbab;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p0, p1, p2}, Lpc0;->i(Landroid/graphics/Canvas;Lpc0$b;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lyh5;->h()Z

    move-result p3

    const-string v0, "StrokeContent#buildPath"

    if-eqz p3, :cond_b

    invoke-static {v0}, Lyh5;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p3, p0, Lpc0;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_c

    iget-object v2, p0, Lpc0;->b:Landroid/graphics/Path;

    invoke-static {p2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lby7;

    invoke-interface {v3}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_c
    invoke-static {}, Lyh5;->h()Z

    move-result p2

    const-string p3, "StrokeContent#drawPath"

    if-eqz p2, :cond_d

    invoke-static {v0}, Lyh5;->c(Ljava/lang/String;)F

    invoke-static {p3}, Lyh5;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p0, Lpc0;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lyh5;->h()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-static {p3}, Lyh5;->c(Ljava/lang/String;)F

    :cond_e
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_10
    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lpc0;->e:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbg1;

    instance-of v4, v3, Lbab;

    if-eqz v4, :cond_0

    check-cast v3, Lbab;

    invoke-virtual {v3}, Lbab;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lbab;->b(Lab0$b;)V

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbg1;

    instance-of v4, v3, Lbab;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lbab;

    invoke-virtual {v4}, Lbab;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    iget-object v3, p0, Lpc0;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lpc0$b;

    invoke-direct {v0, v4, v1}, Lpc0$b;-><init>(Lbab;Lpc0$a;)V

    invoke-virtual {v4, p0}, Lbab;->b(Lab0$b;)V

    goto :goto_2

    :cond_4
    instance-of v4, v3, Lby7;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Lpc0$b;

    invoke-direct {v0, v2, v1}, Lpc0$b;-><init>(Lbab;Lpc0$a;)V

    :cond_5
    invoke-static {v0}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Lby7;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget-object p0, p0, Lpc0;->g:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 1

    sget-object v0, Lit5;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lpc0;->k:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lit5;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lpc0;->j:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lit5;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lpc0;->n:Lab0;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lpc0;->n:Lab0;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lpc0;->n:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lpc0;->n:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lit5;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lpc0;->o:Lab0;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_5
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lpc0;->o:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lpc0;->f:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lpc0;->o:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lit5;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lpc0;->q:Ln33;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Ln33;->b(Liu5;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lit5;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lpc0;->q:Ln33;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Ln33;->f(Liu5;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lit5;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lpc0;->q:Ln33;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ln33;->c(Liu5;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lit5;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lpc0;->q:Ln33;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ln33;->d(Liu5;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lit5;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lpc0;->q:Ln33;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Ln33;->g(Liu5;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;Lpc0$b;)V
    .locals 13

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "StrokeContent#applyTrimPath"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lpc0$b;->b(Lpc0$b;)Lbab;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lpc0;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lpc0;->b:Landroid/graphics/Path;

    invoke-static {p2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lby7;

    invoke-interface {v3}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lpc0$b;->b(Lpc0$b;)Lbab;

    move-result-object v0

    invoke-virtual {v0}, Lbab;->i()Lab0;

    move-result-object v0

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {p2}, Lpc0$b;->b(Lpc0$b;)Lbab;

    move-result-object v3

    invoke-virtual {v3}, Lbab;->c()Lab0;

    move-result-object v3

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v2

    invoke-static {p2}, Lpc0$b;->b(Lpc0$b;)Lbab;

    move-result-object v2

    invoke-virtual {v2}, Lbab;->h()Lab0;

    move-result-object v2

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_5

    const v4, 0x3f7d70a4    # 0.99f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    iget-object p2, p0, Lpc0;->b:Landroid/graphics/Path;

    iget-object p0, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    iget-object v5, p0, Lpc0;->b:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v4, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    :goto_1
    iget-object v5, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_1

    :cond_6
    mul-float/2addr v2, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    add-float v2, v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ltz v3, :cond_e

    iget-object v9, p0, Lpc0;->c:Landroid/graphics/Path;

    invoke-static {p2}, Lpc0$b;->a(Lpc0$b;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lby7;

    invoke-interface {v10}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v9, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lpc0;->c:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v9, p0, Lpc0;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    cmpl-float v10, v2, v4

    if-lez v10, :cond_8

    sub-float v10, v2, v4

    add-float v11, v8, v9

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    cmpg-float v11, v8, v10

    if-gez v11, :cond_8

    cmpl-float v11, v0, v4

    if-lez v11, :cond_7

    sub-float v11, v0, v4

    div-float/2addr v11, v9

    goto :goto_3

    :cond_7
    move v11, v7

    :goto_3
    div-float/2addr v10, v9

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v12, p0, Lpc0;->c:Landroid/graphics/Path;

    invoke-static {v12, v11, v10, v7}, Lplb;->a(Landroid/graphics/Path;FFF)V

    iget-object v10, p0, Lpc0;->c:Landroid/graphics/Path;

    iget-object v11, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    add-float v10, v8, v9

    cmpg-float v11, v10, v0

    if-ltz v11, :cond_d

    cmpl-float v11, v8, v2

    if-lez v11, :cond_9

    goto :goto_6

    :cond_9
    cmpg-float v11, v10, v2

    if-gtz v11, :cond_a

    cmpg-float v11, v0, v8

    if-gez v11, :cond_a

    iget-object v10, p0, Lpc0;->c:Landroid/graphics/Path;

    iget-object v11, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    cmpg-float v11, v0, v8

    if-gez v11, :cond_b

    move v11, v7

    goto :goto_4

    :cond_b
    sub-float v11, v0, v8

    div-float/2addr v11, v9

    :goto_4
    cmpl-float v10, v2, v10

    if-lez v10, :cond_c

    move v10, v5

    goto :goto_5

    :cond_c
    sub-float v10, v2, v8

    div-float/2addr v10, v9

    :goto_5
    iget-object v12, p0, Lpc0;->c:Landroid/graphics/Path;

    invoke-static {v12, v11, v10, v7}, Lplb;->a(Landroid/graphics/Path;FFF)V

    iget-object v10, p0, Lpc0;->c:Landroid/graphics/Path;

    iget-object v11, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    :goto_6
    add-float/2addr v8, v9

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_f
    return-void
.end method
