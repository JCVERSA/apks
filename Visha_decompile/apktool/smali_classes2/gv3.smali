.class public Lgv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu23;
.implements Lab0$b;
.implements Lvf5;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Paint;

.field public final c:Lcom/airbnb/lottie/model/layer/a;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/List;

.field public final g:Lab0;

.field public final h:Lab0;

.field public i:Lab0;

.field public final j:Lcom/airbnb/lottie/LottieDrawable;

.field public k:Lab0;

.field public l:F

.field public m:Ln33;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Luf9;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lgv3;->a:Landroid/graphics/Path;

    new-instance v1, Lni5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lni5;-><init>(I)V

    iput-object v1, p0, Lgv3;->b:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lgv3;->f:Ljava/util/List;

    iput-object p2, p0, Lgv3;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p3}, Luf9;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgv3;->d:Ljava/lang/String;

    invoke-virtual {p3}, Luf9;->f()Z

    move-result v1

    iput-boolean v1, p0, Lgv3;->e:Z

    iput-object p1, p0, Lgv3;->j:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p1

    invoke-virtual {p1}, Lag0;->a()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lgv3;->k:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lgv3;->k:Lab0;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ln33;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Ln33;-><init>(Lab0$b;Lcom/airbnb/lottie/model/layer/a;Ll33;)V

    iput-object p1, p0, Lgv3;->m:Ln33;

    :cond_1
    invoke-virtual {p3}, Luf9;->b()Lcc;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Luf9;->e()Lfc;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Luf9;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Luf9;->b()Lcc;

    move-result-object p1

    invoke-virtual {p1}, Lcc;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lgv3;->g:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p3}, Luf9;->e()Lfc;

    move-result-object p1

    invoke-virtual {p1}, Lfc;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lgv3;->h:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lgv3;->g:Lab0;

    iput-object p1, p0, Lgv3;->h:Lab0;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lgv3;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lgv3;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lgv3;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lgv3;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lby7;

    invoke-interface {v2}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgv3;->a:Landroid/graphics/Path;

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
    .locals 7

    iget-boolean v0, p0, Lgv3;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "FillContent#draw"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lgv3;->g:Lab0;

    check-cast v0, Lx81;

    invoke-virtual {v0}, Lx81;->q()I

    move-result v0

    int-to-float v2, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lgv3;->h:Lab0;

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

    iget-object v3, p0, Lgv3;->b:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lxp6;->c(III)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    const v6, 0xffffff

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lgv3;->i:Lab0;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lgv3;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    iget-object v0, p0, Lgv3;->k:Lab0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lgv3;->b:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_3
    iget v3, p0, Lgv3;->l:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgv3;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/model/layer/a;->x(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v3

    iget-object v4, p0, Lgv3;->b:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_4
    :goto_0
    iput v0, p0, Lgv3;->l:F

    :cond_5
    iget-object v0, p0, Lgv3;->m:Ln33;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lgv3;->b:Landroid/graphics/Paint;

    invoke-static {p3, v2}, Lplb;->l(II)I

    move-result p3

    invoke-virtual {v0, v3, p2, p3}, Ln33;->a(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_6
    iget-object p3, p0, Lgv3;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget-object p3, p0, Lgv3;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v5, p3, :cond_7

    iget-object p3, p0, Lgv3;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lgv3;->f:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lby7;

    invoke-interface {v0}, Lby7;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lgv3;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lgv3;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_8
    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lgv3;->j:Lcom/airbnb/lottie/LottieDrawable;

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

    iget-object v1, p0, Lgv3;->f:Ljava/util/List;

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

    iget-object p0, p0, Lgv3;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 1

    sget-object v0, Lit5;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lgv3;->g:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lit5;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lgv3;->h:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lit5;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lgv3;->i:Lab0;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lgv3;->c:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lgv3;->i:Lab0;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lgv3;->i:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lgv3;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lgv3;->i:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lit5;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lgv3;->k:Lab0;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_5
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lgv3;->k:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lgv3;->c:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lgv3;->k:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lit5;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lgv3;->m:Ln33;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Ln33;->b(Liu5;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lit5;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lgv3;->m:Ln33;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Ln33;->f(Liu5;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lit5;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lgv3;->m:Ln33;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ln33;->c(Liu5;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lit5;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lgv3;->m:Ln33;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ln33;->d(Liu5;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lit5;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lgv3;->m:Ln33;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Ln33;->g(Liu5;)V

    :cond_b
    :goto_0
    return-void
.end method
