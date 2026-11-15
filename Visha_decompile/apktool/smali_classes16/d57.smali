.class public Ld57;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcv8;


# instance fields
.field public final A:F

.field public final B:[F

.field public final C:[F

.field public final D:F

.field public final E:F

.field public F:F

.field public final G:Landroid/graphics/RectF;

.field public final H:Landroid/graphics/RectF;

.field public final I:Z

.field public J:I

.field public final K:Landroid/graphics/Paint;

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public final S:F

.field public final T:F

.field public U:Landroid/graphics/Bitmap;

.field public final b:Landroid/animation/ValueAnimator;

.field public final c:Landroid/content/Context;

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroid/graphics/Bitmap;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Bitmap;

.field public h:Z

.field public i:I

.field public j:I

.field public final k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public final r:F

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/Path;

.field public final u:Landroid/graphics/Path;

.field public final v:Landroid/graphics/PathMeasure;

.field public final w:[F

.field public final x:[F

.field public final y:Landroid/graphics/PathMeasure;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Ld57;->k:I

    const/4 v0, 0x2

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Ld57;->w:[F

    .line 4
    new-array v1, v0, [F

    iput-object v1, p0, Ld57;->x:[F

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Ld57;->B:[F

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, Ld57;->C:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Ld57;->F:F

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ld57;->G:Landroid/graphics/RectF;

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ld57;->H:Landroid/graphics/RectF;

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Ld57;->J:I

    .line 11
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ld57;->K:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Ld57;->L:I

    .line 13
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, p0, Ld57;->M:I

    .line 14
    iput v1, p0, Ld57;->Q:I

    .line 15
    iput-object p1, p0, Ld57;->c:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Ld57;->I:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 18
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Ld57;->s:Landroid/graphics/Paint;

    .line 19
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 21
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 22
    invoke-static {v3, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iget v5, p0, Ld57;->Q:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    new-array v4, v2, [F

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Ld57;->b:Landroid/animation/ValueAnimator;

    .line 25
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Ld57;->t:Landroid/graphics/Path;

    .line 26
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Ld57;->u:Landroid/graphics/Path;

    .line 27
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v4, p0, Ld57;->v:Landroid/graphics/PathMeasure;

    .line 28
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 29
    new-instance v6, Landroid/graphics/PathMeasure;

    invoke-direct {v6}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v6, p0, Ld57;->y:Landroid/graphics/PathMeasure;

    const/high16 v7, 0x40800000    # 4.0f

    .line 30
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Ld57;->o:F

    .line 31
    sget v7, Lcom/transsion/widgetslib/R$color;->os_fill_quaternary_color:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    iput v7, p0, Ld57;->N:I

    .line 32
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    iput v7, p0, Ld57;->O:I

    .line 33
    invoke-static {p1}, Lolb;->z(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Ld57;->P:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 34
    invoke-static {v3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ld57;->S:F

    const p1, 0x4089999a    # 4.3f

    .line 35
    invoke-static {v3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ld57;->T:F

    .line 36
    invoke-virtual {p0}, Ld57;->f()V

    .line 37
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/high16 v7, 0x40c00000    # 6.0f

    .line 38
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const v8, 0x40151eb8    # 2.33f

    .line 39
    invoke-static {v3, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    neg-float v7, v7

    neg-float v9, v9

    .line 40
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    neg-float v7, v7

    iput v7, p0, Ld57;->D:F

    const v9, 0x402ae148    # 2.67f

    .line 42
    invoke-static {v3, v9, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    iput v9, p0, Ld57;->E:F

    .line 43
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, 0x40b570a4    # 5.67f

    .line 44
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const v9, 0x409570a4    # 4.67f

    .line 45
    invoke-static {v3, v9, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    neg-float v9, v9

    .line 46
    invoke-virtual {p1, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    invoke-virtual {v4, p1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 48
    invoke-static {v3, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ld57;->r:F

    .line 49
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 50
    invoke-static {v3, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    add-float/2addr p1, v7

    const/4 v7, 0x0

    .line 51
    invoke-virtual {v4, v7, p1, v5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 52
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Ld57;->A:F

    .line 53
    invoke-virtual {v6, v5, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 54
    invoke-virtual {p0, p2}, Ld57;->g(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Ld57;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1, p3}, Ld57;->h(ZZ)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ld57;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ld57;->c(Landroid/content/Context;Z)Ld57;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Z)Ld57;
    .locals 1

    new-instance v0, Ld57;

    invoke-direct {v0, p0, p1}, Ld57;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;ZZ)Ld57;
    .locals 1

    new-instance v0, Ld57;

    invoke-direct {v0, p0, p1, p2}, Ld57;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ld57;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld57;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Ld57;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Ld57;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld57;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Ld57;->g:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Ld57;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ld57;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, p0, Ld57;->I:Z

    if-eqz v1, :cond_1

    const v1, 0x3f9c6d3a

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    iget-object v1, p0, Ld57;->H:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Ld57;->n:F

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Ld57;->n:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, p0, Ld57;->n:F

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iget v7, p0, Ld57;->n:F

    mul-float/2addr v6, v7

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Ld57;->G:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Ld57;->m:F

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Ld57;->m:F

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, p0, Ld57;->m:F

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v3, p0, Ld57;->m:F

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Ld57;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld57;->U:Landroid/graphics/Bitmap;

    iget-object v2, p0, Ld57;->H:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Ld57;->K:Landroid/graphics/Paint;

    iget v2, p0, Ld57;->L:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Ld57;->J:I

    const/16 v2, 0xff

    const/4 v3, -0x1

    iget v4, p0, Ld57;->M:I

    if-eq v0, v3, :cond_3

    mul-int/2addr v4, v0

    div-int/2addr v4, v2

    :cond_3
    iget-object v0, p0, Ld57;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ld57;->H:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Ld57;->S:F

    add-float v7, v4, v5

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v4, v5

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v9, v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v10, v0, v5

    iget v12, p0, Ld57;->T:F

    iget-object v13, p0, Ld57;->K:Landroid/graphics/Paint;

    move-object v6, p1

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Ld57;->K:Landroid/graphics/Paint;

    iget v4, p0, Ld57;->N:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Ld57;->J:I

    iget v4, p0, Ld57;->O:I

    if-eq v0, v3, :cond_4

    mul-int/2addr v4, v0

    div-int/2addr v4, v2

    :cond_4
    iget-object v0, p0, Ld57;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ld57;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    iget-object v0, p0, Ld57;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ld57;->f:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Ld57;->f:Landroid/graphics/Bitmap;

    iget-object v4, p0, Ld57;->H:Landroid/graphics/RectF;

    iget-object v5, p0, Ld57;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Ld57;->G:Landroid/graphics/RectF;

    iget v4, p0, Ld57;->l:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    iget-object v4, p0, Ld57;->t:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Ld57;->K:Landroid/graphics/Paint;

    iget v5, p0, Ld57;->P:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Ld57;->J:I

    if-eq v4, v3, :cond_6

    move v2, v4

    :cond_6
    iget-object v3, p0, Ld57;->K:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Ld57;->g:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    iget-object v3, p0, Ld57;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Ld57;->g:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v3, p0, Ld57;->g:Landroid/graphics/Bitmap;

    iget-object v4, p0, Ld57;->G:Landroid/graphics/RectF;

    iget-object v5, p0, Ld57;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v0, p0, Ld57;->m:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Ld57;->s:Landroid/graphics/Paint;

    iget v1, p0, Ld57;->Q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ld57;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ld57;->u:Landroid/graphics/Path;

    iget-object p0, p0, Ld57;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Ld57;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ld57;->S:F

    const v2, 0x400ccccd    # 2.2f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Ld57;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Ld57;->S:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v0

    int-to-float v7, v1

    iget v9, p0, Ld57;->T:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Ld57;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checked_drawable_unchecked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lfy4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ld57;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ld57;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checkbox_checked_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lfy4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ld57;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Ld57;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checked_drawable_shadow:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lfy4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Ld57;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Ld57;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Ld57;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Ld57;->U:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Ld57;->U:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Ld57;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget-object p0, p0, Ld57;->U:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr p0, v5

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v2, v1, v0, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Ld57;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g(Z)V
    .locals 10

    iput-boolean p1, p0, Ld57;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld57;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    iput v1, p0, Ld57;->i:I

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ld57;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, p0, Ld57;->j:I

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :cond_2
    iput v0, p0, Ld57;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    iput v2, p0, Ld57;->m:F

    iput v0, p0, Ld57;->n:F

    if-eqz p1, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    iget v0, p0, Ld57;->o:F

    :goto_3
    iput v0, p0, Ld57;->p:F

    iget-object v0, p0, Ld57;->t:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-nez p1, :cond_5

    iget-object v2, p0, Ld57;->t:Landroid/graphics/Path;

    iget v0, p0, Ld57;->i:I

    int-to-float v3, v0

    iget v4, p0, Ld57;->j:I

    int-to-float v4, v4

    invoke-virtual {p0}, Ld57;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v5, v0

    iget v0, p0, Ld57;->j:I

    invoke-virtual {p0}, Ld57;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v6, v0

    iget v8, p0, Ld57;->p:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Ld57;->v:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iget v2, p0, Ld57;->r:F

    sub-float/2addr v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    iput v0, p0, Ld57;->q:F

    iget-object v0, p0, Ld57;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-eqz p1, :cond_7

    iget-object v0, p0, Ld57;->v:Landroid/graphics/PathMeasure;

    iget v2, p0, Ld57;->r:F

    iget v3, p0, Ld57;->q:F

    iget-object v4, p0, Ld57;->u:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Ld57;->y:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iget v0, p0, Ld57;->A:F

    sub-float v1, p1, v0

    :cond_8
    iput v1, p0, Ld57;->z:F

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Ld57;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p0, p0, Ld57;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_checked_box_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Ld57;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p0, p0, Ld57;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_checked_box_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public h(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld57;->c:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedBorderColor(I)V

    iget-object p1, p0, Ld57;->c:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_color_black30:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedFillColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld57;->c:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$attr;->os_fill_base:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_fill_base_hios:I

    invoke-static {p1, p2, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedBorderColor(I)V

    invoke-virtual {p0, v0}, Ld57;->setUncheckedFillColor(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Ld57;->c:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_uncheck_box_pic_border_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedBorderColor(I)V

    iget-object p1, p0, Ld57;->c:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_color_gray80:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/16 p2, 0x80

    invoke-virtual {p0, p1, p2}, Ld57;->i(II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ld57;->c:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$attr;->os_comp_color_checkbox_disabled:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_comp_color_checkbox_disabled_hios:I

    invoke-static {p1, p2, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0, p1}, Ld57;->setUncheckedBorderColor(I)V

    invoke-virtual {p0, v0}, Ld57;->setUncheckedFillColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public i(II)V
    .locals 0

    iput p1, p0, Ld57;->L:I

    iput p2, p0, Ld57;->M:I

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Ld57;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Ld57;->J:I

    return-void
.end method

.method public setCheckedFillColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ld57;->P:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setPictureMode(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ld57;->h(ZZ)V

    return-void
.end method

.method public setShowBorderShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Ld57;->R:Z

    return-void
.end method

.method public setTickColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ld57;->Q:I

    return-void
.end method

.method public setUncheckedBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ld57;->N:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Ld57;->O:I

    return-void
.end method

.method public setUncheckedFillColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ld57;->L:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Ld57;->M:I

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Ld57;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld57;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-boolean v0, p0, Ld57;->h:Z

    invoke-virtual {p0, v0}, Ld57;->g(Z)V

    :cond_0
    return-void
.end method
