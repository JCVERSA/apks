.class public Ljha;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljha$d;
    }
.end annotation


# instance fields
.field public final E:Ljava/lang/StringBuilder;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/Matrix;

.field public final H:Landroid/graphics/Paint;

.field public final I:Landroid/graphics/Paint;

.field public final J:Ljava/util/Map;

.field public final K:Landroidx/collection/LongSparseArray;

.field public final L:Ljava/util/List;

.field public final M:Liha;

.field public final N:Lcom/airbnb/lottie/LottieDrawable;

.field public final O:Lur5;

.field public P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

.field public Q:Lab0;

.field public R:Lab0;

.field public S:Lab0;

.field public T:Lab0;

.field public U:Lab0;

.field public V:Lab0;

.field public W:Lab0;

.field public X:Lab0;

.field public Y:Lab0;

.field public Z:Lab0;

.field public a0:Lab0;

.field public b0:Lab0;

.field public c0:Lab0;

.field public d0:Lab0;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ljha;->E:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ljha;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ljha;->G:Landroid/graphics/Matrix;

    new-instance v0, Ljha$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljha$a;-><init>(Ljha;I)V

    iput-object v0, p0, Ljha;->H:Landroid/graphics/Paint;

    new-instance v0, Ljha$b;

    invoke-direct {v0, p0, v1}, Ljha$b;-><init>(Ljha;I)V

    iput-object v0, p0, Ljha;->I:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljha;->J:Ljava/util/Map;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Ljha;->K:Landroidx/collection/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljha;->L:Ljava/util/List;

    sget-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    iput-object v0, p0, Ljha;->P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    iput-object p1, p0, Ljha;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->c()Lur5;

    move-result-object p1

    iput-object p1, p0, Ljha;->O:Lur5;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->t()Lmc;

    move-result-object p1

    invoke-virtual {p1}, Lmc;->a()Liha;

    move-result-object p1

    iput-object p1, p0, Ljha;->M:Liha;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->u()Lnc;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p1, Lnc;->a:Lqc;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lqc;->a:Lcc;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcc;->h()Lab0;

    move-result-object p2

    iput-object p2, p0, Ljha;->Q:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->Q:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lnc;->a:Lqc;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lqc;->b:Lcc;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcc;->h()Lab0;

    move-result-object p2

    iput-object p2, p0, Ljha;->S:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->S:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lnc;->a:Lqc;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lqc;->c:Ldc;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ldc;->a()Lxy3;

    move-result-object p2

    iput-object p2, p0, Ljha;->U:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->U:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p1, Lnc;->a:Lqc;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lqc;->d:Ldc;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ldc;->a()Lxy3;

    move-result-object p2

    iput-object p2, p0, Ljha;->W:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->W:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p1, Lnc;->a:Lqc;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lqc;->e:Lfc;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lfc;->h()Lab0;

    move-result-object p2

    iput-object p2, p0, Ljha;->Y:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->Y:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p2, p1, Lnc;->b:Lpc;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lpc;->a:Lfc;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lfc;->h()Lab0;

    move-result-object p2

    iput-object p2, p0, Ljha;->b0:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->b0:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p2, p1, Lnc;->b:Lpc;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lpc;->b:Lfc;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lfc;->h()Lab0;

    move-result-object p2

    iput-object p2, p0, Ljha;->c0:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->c0:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object p2, p1, Lnc;->b:Lpc;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lpc;->c:Lfc;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lfc;->h()Lab0;

    move-result-object p2

    iput-object p2, p0, Ljha;->d0:Lab0;

    invoke-virtual {p2, p0}, Lab0;->a(Lab0$b;)V

    iget-object p2, p0, Ljha;->d0:Lab0;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p1, Lnc;->b:Lpc;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lpc;->d:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    iput-object p1, p0, Ljha;->P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    :cond_8
    return-void
.end method


# virtual methods
.method public final P(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljha;->e0(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Ljha;->K:Landroidx/collection/LongSparseArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Ljha;->K:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v0, p0, Ljha;->E:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v2, p0, Ljha;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ljha;->E:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ljha;->K:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v3, v4, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p1
.end method

.method public final Q(Lcom/airbnb/lottie/model/DocumentData;II)V
    .locals 4

    iget-object v0, p0, Ljha;->R:Lab0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljha;->Q:Lab0;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Ljha;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljha;->H:Landroid/graphics/Paint;

    iget-object v1, p0, Ljha;->Q:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljha;->H:Landroid/graphics/Paint;

    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Ljha;->T:Lab0;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ljha;->S:Lab0;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Ljha;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljha;->I:Landroid/graphics/Paint;

    iget-object v1, p0, Ljha;->S:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ljha;->I:Landroid/graphics/Paint;

    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Lx6b;

    invoke-virtual {v0}, Lx6b;->h()Lab0;

    move-result-object v0

    const/16 v1, 0x64

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Lx6b;

    invoke-virtual {v0}, Lx6b;->h()Lab0;

    move-result-object v0

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v2, p0, Ljha;->Y:Lab0;

    if-eqz v2, :cond_5

    invoke-virtual {p0, p3}, Ljha;->d0(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Ljha;->Y:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Ljha;->V:Lab0;

    if-eqz p2, :cond_6

    iget-object p0, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lab0;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Ljha;->U:Lab0;

    if-eqz p2, :cond_7

    invoke-virtual {p0, p3}, Ljha;->d0(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Ljha;->I:Landroid/graphics/Paint;

    iget-object p0, p0, Ljha;->U:Lab0;

    invoke-virtual {p0}, Lab0;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Ljha;->I:Landroid/graphics/Paint;

    iget p1, p1, Lcom/airbnb/lottie/model/DocumentData;->j:F

    invoke-static {}, Lplb;->e()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    return-void
.end method

.method public final R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final S(Lt24;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V
    .locals 4

    invoke-virtual {p0, p3, p6, p5}, Ljha;->Q(Lcom/airbnb/lottie/model/DocumentData;II)V

    invoke-virtual {p0, p1}, Ljha;->a0(Lt24;)Ljava/util/List;

    move-result-object p1

    const/4 p5, 0x0

    move p6, p5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p6, v0, :cond_1

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcg1;

    invoke-virtual {v0}, Lcg1;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Ljha;->F:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Ljha;->G:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Ljha;->G:Landroid/graphics/Matrix;

    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->g:F

    neg-float v2, v2

    invoke-static {}, Lplb;->e()F

    move-result v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Ljha;->G:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Ljha;->G:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v1, p3, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, p4}, Ljha;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v1, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, p4}, Ljha;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, p4}, Ljha;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v1, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1, p4}, Ljha;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final T(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V
    .locals 0

    invoke-virtual {p0, p2, p5, p4}, Ljha;->Q(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-boolean p2, p2, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Ljha;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Ljha;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ljha;->I:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Ljha;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Ljha;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final U(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;FII)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Ljha;->P(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    add-int v6, p5, v0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Ljha;->T(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V

    iget-object v2, p0, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, p4

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final W(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Lq24;Landroid/graphics/Canvas;FFFI)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v8, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3}, Lq24;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lq24;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lt24;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object v9, p0

    iget-object v2, v9, Ljha;->O:Lur5;

    invoke-virtual {v2}, Lur5;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lt24;

    if-nez v10, :cond_0

    move-object v3, p4

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p6

    move-object v4, p2

    move-object v5, p4

    move v6, v0

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Ljha;->S(Lt24;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V

    invoke-virtual {v10}, Lt24;->b()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p6

    invoke-static {}, Lplb;->e()F

    move-result v2

    mul-float/2addr v1, v2

    add-float v1, v1, p7

    const/4 v2, 0x0

    move-object v3, p4

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final X(Lcom/airbnb/lottie/model/DocumentData;Lq24;Landroid/graphics/Canvas;I)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual {v7, v9}, Ljha;->c0(Lq24;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v8, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    iget-object v2, v7, Ljha;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->f0()Lbha;

    iget-object v2, v7, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v7, Ljha;->Z:Lab0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/airbnb/lottie/model/DocumentData;->c:F

    :goto_0
    iget-object v2, v7, Ljha;->H:Landroid/graphics/Paint;

    invoke-static {}, Lplb;->e()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v7, Ljha;->I:Landroid/graphics/Paint;

    iget-object v3, v7, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v7, Ljha;->I:Landroid/graphics/Paint;

    iget-object v3, v7, Ljha;->H:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v8, Lcom/airbnb/lottie/model/DocumentData;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget-object v3, v7, Ljha;->X:Lab0;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    :cond_2
    iget-object v3, v7, Ljha;->W:Lab0;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Lplb;->e()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v10, v2, v0

    invoke-virtual {v7, v1}, Ljha;->b0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v0, -0x1

    move v14, v0

    move v15, v13

    move/from16 v16, v15

    :goto_3
    if-ge v15, v12, :cond_7

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v8, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_4
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :goto_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Ljha;->g0(Ljava/lang/String;FLq24;FFZ)Ljava/util/List;

    move-result-object v6

    move v5, v13

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljha$d;

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {v17 .. v17}, Ljha$d;->a(Ljha$d;)F

    move-result v0

    move-object/from16 v4, p3

    invoke-virtual {v7, v4, v8, v14, v0}, Ljha;->f0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {v17 .. v17}, Ljha$d;->b(Ljha$d;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v19, v6

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ljha;->U(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;FII)V

    goto :goto_7

    :cond_5
    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_7
    invoke-static/range {v17 .. v17}, Ljha$d;->b(Ljha$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v16, v16, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final Y(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lq24;Landroid/graphics/Canvas;I)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Ljha;->Z:Lab0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v10, Lcom/airbnb/lottie/model/DocumentData;->c:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    invoke-static/range {p2 .. p2}, Lplb;->g(Landroid/graphics/Matrix;)F

    move-result v12

    iget-object v0, v10, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljha;->b0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    iget v0, v10, Lcom/airbnb/lottie/model/DocumentData;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, v9, Ljha;->X:Lab0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    :cond_1
    move v15, v0

    goto :goto_2

    :cond_2
    iget-object v1, v9, Ljha;->W:Lab0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :goto_2
    const/16 v16, 0x0

    const/4 v0, -0x1

    move v7, v0

    move/from16 v8, v16

    :goto_3
    if-ge v8, v14, :cond_6

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v10, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_3
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :goto_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move v4, v11

    move v5, v15

    invoke-virtual/range {v0 .. v6}, Ljha;->g0(Ljava/lang/String;FLq24;FFZ)Ljava/util/List;

    move-result-object v6

    move/from16 v5, v16

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljha$d;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    invoke-static {v0}, Ljha$d;->a(Ljha$d;)F

    move-result v1

    move-object/from16 v4, p4

    invoke-virtual {v9, v4, v10, v7, v1}, Ljha;->f0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Ljha$d;->b(Ljha$d;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v17, v5

    move v5, v12

    move-object/from16 v18, v6

    move v6, v11

    move/from16 v19, v7

    move v7, v15

    move/from16 v20, v8

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Ljha;->W(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Lq24;Landroid/graphics/Canvas;FFFI)V

    goto :goto_7

    :cond_4
    move/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    :goto_7
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto :goto_6

    :cond_5
    move/from16 v20, v8

    add-int/lit8 v8, v20, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final Z(I)Ljha$d;
    .locals 4

    iget-object v0, p0, Ljha;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Ljha;->L:Ljava/util/List;

    new-instance v2, Ljha$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljha$d;-><init>(Ljha$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljha;->L:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljha$d;

    return-object p0
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ljha;->O:Lur5;

    invoke-virtual {p2}, Lur5;->b()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Ljha;->O:Lur5;

    invoke-virtual {p0}, Lur5;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final a0(Lt24;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Ljha;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljha;->J:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lt24;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwf9;

    new-instance v5, Lcg1;

    iget-object v6, p0, Ljha;->N:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v7, p0, Ljha;->O:Lur5;

    invoke-direct {v5, v6, p0, v4, v7}, Lcg1;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lwf9;Lur5;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljha;->J:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public final b0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string p0, "\r\n"

    const-string v0, "\r"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u0003"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c0(Lq24;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Ljha;->a0:Lab0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Ljha;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->g0(Lq24;)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lq24;->d()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final d0(I)Z
    .locals 6

    iget-object v0, p0, Ljha;->M:Liha;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljha;->b0:Lab0;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v3, p0, Ljha;->c0:Lab0;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Ljha;->c0:Lab0;

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Ljha;->b0:Lab0;

    invoke-virtual {v3}, Lab0;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Ljha;->c0:Lab0;

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Ljha;->d0:Lab0;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    :cond_0
    iget-object p0, p0, Ljha;->P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    sget-object v4, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    const/4 v5, 0x0

    if-ne p0, v4, :cond_2

    if-lt p1, v1, :cond_1

    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    return v2

    :cond_2
    int-to-float p0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    int-to-float p1, v1

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_3

    int-to-float p1, v3

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :cond_4
    :goto_1
    return v2
.end method

.method public final e0(I)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 p1, 0x13

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final f0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z
    .locals 6

    iget-object v0, p2, Lcom/airbnb/lottie/model/DocumentData;->l:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    invoke-static {}, Lplb;->e()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->f:F

    mul-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p3, p3

    iget v5, p2, Lcom/airbnb/lottie/model/DocumentData;->f:F

    mul-float/2addr p3, v5

    mul-float/2addr p3, v2

    add-float/2addr p3, v4

    iget-object p0, p0, Ljha;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->M()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v2

    iget v2, p2, Lcom/airbnb/lottie/model/DocumentData;->c:F

    add-float/2addr p0, v2

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez v0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    sget-object v0, Ljha$c;->a:[I

    iget-object p2, p2, Lcom/airbnb/lottie/model/DocumentData;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    goto :goto_3

    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    add-float/2addr p0, v3

    div-float/2addr p4, p2

    sub-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_5
    add-float/2addr p0, v3

    sub-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    return v0
.end method

.method public final g0(Ljava/lang/String;FLq24;FFZ)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v6, v4

    move v7, v6

    move v8, v7

    move v10, v8

    move v5, v3

    move v9, v5

    move v11, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eqz p6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lq24;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lq24;->c()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lt24;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, Ljha;->O:Lur5;

    invoke-virtual {v14}, Lur5;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt24;

    if-nez v13, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v13}, Lt24;->b()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, p4

    invoke-static {}, Lplb;->e()F

    move-result v14

    mul-float/2addr v13, v14

    :goto_1
    add-float v13, v13, p5

    goto :goto_2

    :cond_1
    iget-object v13, v0, Ljha;->H:Landroid/graphics/Paint;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    goto :goto_1

    :goto_2
    const/16 v14, 0x20

    if-ne v12, v14, :cond_2

    const/4 v8, 0x1

    move v11, v13

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    move v8, v2

    move v10, v4

    move v9, v13

    goto :goto_3

    :cond_3
    add-float/2addr v9, v13

    :goto_3
    add-float/2addr v5, v13

    cmpl-float v15, p2, v3

    if-lez v15, :cond_6

    cmpl-float v15, v5, p2

    if-ltz v15, :cond_6

    if-ne v12, v14, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljha;->Z(I)Ljha$d;

    move-result-object v12

    if-ne v10, v7, :cond_5

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v10, v7

    int-to-float v7, v10

    mul-float/2addr v7, v11

    sub-float/2addr v5, v13

    sub-float/2addr v5, v7

    invoke-virtual {v12, v9, v5}, Ljha$d;->c(Ljava/lang/String;F)V

    move v7, v4

    move v10, v7

    move v5, v13

    move v9, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v11

    sub-float/2addr v5, v9

    sub-float/2addr v5, v7

    sub-float/2addr v5, v11

    invoke-virtual {v12, v13, v5}, Ljha$d;->c(Ljava/lang/String;F)V

    move v5, v9

    move v7, v10

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-float v3, v5, v3

    if-lez v3, :cond_8

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljha;->Z(I)Ljha$d;

    move-result-object v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v5}, Ljha$d;->c(Ljava/lang/String;F)V

    :cond_8
    iget-object v0, v0, Ljha;->L:Ljava/util/List;

    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->h(Ljava/lang/Object;Liu5;)V

    sget-object v0, Lit5;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Ljha;->R:Lab0;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_0
    if-nez p2, :cond_1

    iput-object v1, p0, Ljha;->R:Lab0;

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Ljha;->R:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Ljha;->R:Lab0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lit5;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Ljha;->T:Lab0;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_3
    if-nez p2, :cond_4

    iput-object v1, p0, Ljha;->T:Lab0;

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Ljha;->T:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Ljha;->T:Lab0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lit5;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Ljha;->V:Lab0;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_6
    if-nez p2, :cond_7

    iput-object v1, p0, Ljha;->V:Lab0;

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Ljha;->V:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Ljha;->V:Lab0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lit5;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Ljha;->X:Lab0;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_9
    if-nez p2, :cond_a

    iput-object v1, p0, Ljha;->X:Lab0;

    goto :goto_0

    :cond_a
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Ljha;->X:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Ljha;->X:Lab0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lit5;->F:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Ljha;->Z:Lab0;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_c
    if-nez p2, :cond_d

    iput-object v1, p0, Ljha;->Z:Lab0;

    goto :goto_0

    :cond_d
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Ljha;->Z:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Ljha;->Z:Lab0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_e
    sget-object v0, Lit5;->M:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Ljha;->a0:Lab0;

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_f
    if-nez p2, :cond_10

    iput-object v1, p0, Ljha;->a0:Lab0;

    goto :goto_0

    :cond_10
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Ljha;->a0:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Ljha;->a0:Lab0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lit5;->O:Ljava/lang/CharSequence;

    if-ne p1, v0, :cond_12

    iget-object p0, p0, Ljha;->M:Liha;

    invoke-virtual {p0, p2}, Liha;->r(Liu5;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    iget-object v0, p0, Ljha;->M:Liha;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v0, p0, Ljha;->O:Lur5;

    invoke-virtual {v0}, Lur5;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/airbnb/lottie/model/DocumentData;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lq24;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, p3, v0}, Ljha;->Q(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-object v0, p0, Ljha;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->B1()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Ljha;->Y(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lq24;Landroid/graphics/Canvas;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v4, p1, p3}, Ljha;->X(Lcom/airbnb/lottie/model/DocumentData;Lq24;Landroid/graphics/Canvas;I)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
