.class public Lay4;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field public final E:Landroid/graphics/Paint;

.field public final F:Landroid/graphics/Rect;

.field public final G:Landroid/graphics/Rect;

.field public final H:Lct5;

.field public I:Lab0;

.field public J:Lab0;

.field public K:Ln33;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Lni5;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lni5;-><init>(I)V

    iput-object v0, p0, Lay4;->E:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lay4;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lay4;->G:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->U(Ljava/lang/String;)Lct5;

    move-result-object p1

    iput-object p1, p0, Lay4;->H:Lct5;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ln33;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Ln33;-><init>(Lab0$b;Lcom/airbnb/lottie/model/layer/a;Ll33;)V

    iput-object p1, p0, Lay4;->K:Ln33;

    :cond_0
    return-void
.end method


# virtual methods
.method public final P()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lay4;->J:Lab0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lay4;->H:Lct5;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lct5;->b()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lay4;->H:Lct5;

    if-eqz p2, :cond_0

    invoke-static {}, Lplb;->e()F

    move-result p2

    iget-object p3, p0, Lay4;->H:Lct5;

    invoke-virtual {p3}, Lct5;->f()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget-object v0, p0, Lay4;->H:Lct5;

    invoke-virtual {v0}, Lct5;->d()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->h(Ljava/lang/Object;Liu5;)V

    sget-object v0, Lit5;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    iput-object v1, p0, Lay4;->I:Lab0;

    goto :goto_0

    :cond_0
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lay4;->I:Lab0;

    goto :goto_0

    :cond_1
    sget-object v0, Lit5;->N:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    iput-object v1, p0, Lay4;->J:Lab0;

    goto :goto_0

    :cond_2
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lay4;->J:Lab0;

    :cond_3
    :goto_0
    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    invoke-virtual {p0}, Lay4;->P()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lay4;->H:Lct5;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lplb;->e()F

    move-result v1

    iget-object v2, p0, Lay4;->E:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lay4;->I:Lab0;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lay4;->E:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lay4;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->V()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lay4;->G:Landroid/graphics/Rect;

    iget-object v3, p0, Lay4;->H:Lct5;

    invoke-virtual {v3}, Lct5;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget-object v4, p0, Lay4;->H:Lct5;

    invoke-virtual {v4}, Lct5;->d()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lay4;->G:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v1, p0, Lay4;->K:Ln33;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lay4;->E:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, p2, p3}, Ln33;->a(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    :cond_3
    iget-object p2, p0, Lay4;->F:Landroid/graphics/Rect;

    iget-object p3, p0, Lay4;->G:Landroid/graphics/Rect;

    iget-object p0, p0, Lay4;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    :goto_1
    return-void
.end method
