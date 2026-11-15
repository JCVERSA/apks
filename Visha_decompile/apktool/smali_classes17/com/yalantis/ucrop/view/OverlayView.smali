.class public Lcom/yalantis/ucrop/view/OverlayView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final BOUNDS_OFFSET:I = 0x50

.field public static final DEFAULT_CIRCLE_DIMMED_LAYER:Z = false

.field public static final DEFAULT_CROP_GRID_COLUMN_COUNT:I = 0x2

.field public static final DEFAULT_CROP_GRID_ROW_COUNT:I = 0x2

.field public static final DEFAULT_FREESTYLE_CROP_MODE:I = 0x0

.field public static final DEFAULT_SHOW_CROP_FRAME:Z = true

.field public static final DEFAULT_SHOW_CROP_GRID:Z = true

.field public static final FREESTYLE_CROP_MODE_DISABLE:I = 0x0

.field public static final FREESTYLE_CROP_MODE_ENABLE:I = 0x1

.field public static final FREESTYLE_CROP_MODE_ENABLE_WITH_PASS_THROUGH:I = 0x2


# instance fields
.field public A:I

.field public B:Lau7;

.field public C:Z

.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/RectF;

.field public d:I

.field public e:I

.field public f:[F

.field public g:[F

.field public h:I

.field public i:I

.field public j:F

.field public k:[F

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Landroid/graphics/Path;

.field public q:Landroid/graphics/Paint;

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Paint;

.field public u:I

.field public v:F

.field public w:F

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_min_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_area_line_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:I

    .line 18
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    aput v7, v3, v2

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v8, v1

    add-float/2addr v8, v4

    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v4, v8, v4

    mul-float/2addr v6, v4

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v9, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v9

    aput v6, v3, v5

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    add-int/lit8 v5, v2, 0x3

    iget v6, v4, Landroid/graphics/RectF;->right:F

    aput v6, v3, v7

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v8, v6

    mul-float/2addr v4, v8

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    aput v4, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v6, v4

    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float v7, v6, v7

    mul-float/2addr v5, v7

    iget-object v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v8

    aput v5, v1, v2

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    add-int/lit8 v5, v2, 0x2

    iget v8, v7, Landroid/graphics/RectF;->top:F

    aput v8, v1, v3

    add-int/lit8 v3, v2, 0x3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v6, v8

    mul-float/2addr v7, v6

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    aput v7, v1, v5

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    add-int/lit8 v2, v2, 0x4

    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    aput v5, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:I

    int-to-float v2, v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->A:I

    neg-int v3, v2

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final c(FF)I
    .locals 10

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->y:I

    int-to-double v0, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:[F

    aget v4, v4, v3

    sub-float v4, p1, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v8, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:[F

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    sub-float v8, p2, v8

    float-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    div-int/lit8 v0, v3, 0x2

    move v2, v0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-gez v2, :cond_2

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return v2
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(Landroid/content/res/TypedArray;)V
    .locals 4

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_stroke_size:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_color:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_corner_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public final f(Landroid/content/res/TypedArray;)V
    .locals 4

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_stroke_size:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_color:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_row_count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_column_count:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:I

    return-void
.end method

.method public g(Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_circle_dimmed_layer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:Z

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_dimmed_color:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:I

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->e(Landroid/content/res/TypedArray;)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_frame:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->f(Landroid/content/res/TypedArray;)V

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_grid:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    return-void
.end method

.method public getCropViewRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getFreestyleCropMode()I
    .locals 0

    iget p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    return p0
.end method

.method public getOverlayViewChangeListener()Lau7;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Lau7;

    return-object p0
.end method

.method public h(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42a00000    # 80.0f

    sub-float v3, v1, v2

    cmpl-float v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    add-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float v6, v3, v2

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_1

    add-float/2addr v3, v2

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget v6, p0, Landroid/graphics/RectF;->top:F

    sub-float v7, v6, v2

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_2

    add-float/2addr v6, v2

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p0, v2

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_3

    add-float/2addr p0, v2

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_3

    move p0, v5

    goto :goto_3

    :cond_3
    move p0, v4

    :goto_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    return v4

    :cond_6
    :goto_4
    return v5
.end method

.method public final i(FF)V
    .locals 5

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->j()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, p1, v3, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, p2, p1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1, p2, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-ltz p1, :cond_6

    move p1, v1

    goto :goto_1

    :cond_6
    move p1, p2

    :goto_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->z:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, p2

    :goto_2
    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_8
    iget v0, p2, Landroid/graphics/RectF;->left:F

    :goto_3
    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_4

    :cond_9
    iget v2, p2, Landroid/graphics/RectF;->top:F

    :goto_4
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    goto :goto_5

    :cond_a
    iget v3, p2, Landroid/graphics/RectF;->right:F

    :goto_5
    if-eqz p1, :cond_b

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_6

    :cond_b
    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    :goto_6
    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez p1, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->j()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_d
    return-void
.end method

.method public isFreestyleCropEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-static {v0}, Lzo8;->b(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->f:[F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-static {v0}, Lzo8;->a(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->g:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->p:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p0, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/lit16 p1, p1, 0xc8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/lit16 p2, p2, 0xc8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/lit16 p3, p3, -0xc8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    add-int/lit16 p4, p4, -0xc8

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    sub-int/2addr p4, p2

    iput p4, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:I

    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->C:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->C:Z

    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:F

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->h(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    if-nez v3, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/yalantis/ucrop/view/OverlayView;->c(FF)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    if-eq p1, v4, :cond_1

    move v1, v6

    :cond_1
    if-nez v1, :cond_2

    iput v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    iput v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v7, 0x2

    if-ne v3, v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v6, :cond_5

    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/view/OverlayView;->i(FF)V

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    return v6

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v6, :cond_6

    iput v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->v:F

    iput v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->w:F

    iput v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->x:I

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Lau7;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-interface {p1, p0}, Lau7;->a(Landroid/graphics/RectF;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public setCircleDimmedLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->n:Z

    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->s:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCropGridColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    return-void
.end method

.method public setCropGridCornerColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->t:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->k:[F

    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-object p0, p0, Lcom/yalantis/ucrop/view/OverlayView;->r:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->o:I

    return-void
.end method

.method public setFreestyleCropEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    return-void
.end method

.method public setFreestyleCropMode(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->u:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setOverlayViewChangeListener(Lau7;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Lau7;

    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->l:Z

    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->m:Z

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:F

    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->setupCropBounds()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->C:Z

    :goto_0
    return-void
.end method

.method public setupCropBounds()V
    .locals 7

    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    int-to-float v1, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->j:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:I

    if-le v1, v3, :cond_0

    int-to-float v1, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/lit16 v3, v3, 0xc8

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/lit16 v4, v4, 0xc8

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/lit16 v5, v5, 0xc8

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    iget v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->e:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/lit16 v4, v4, 0xc8

    add-int/2addr v4, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/lit16 v5, v5, 0xc8

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->d:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/lit16 v6, v6, 0xc8

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    int-to-float v1, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->B:Lau7;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->b:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lau7;->a(Landroid/graphics/RectF;)V

    :cond_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->j()V

    return-void
.end method
