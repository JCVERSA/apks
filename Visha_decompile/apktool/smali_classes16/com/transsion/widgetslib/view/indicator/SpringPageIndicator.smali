.class public Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Landroid/graphics/Path;

.field public G:Landroid/graphics/Path;

.field public H:Landroid/graphics/Path;

.field public I:Landroid/graphics/Path;

.field public J:I

.field public K:I

.field public L:F

.field public M:Landroid/graphics/Paint;

.field public N:Landroid/widget/Scroller;

.field public O:I

.field public P:Landroid/graphics/RectF;

.field public Q:Landroid/graphics/PointF;

.field public R:Landroid/graphics/PointF;

.field public S:Landroid/graphics/PointF;

.field public T:Landroid/graphics/PorterDuffXfermode;

.field public U:Landroid/graphics/PorterDuffXfermode;

.field public V:I

.field public W:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PointF;

.field public j:Landroid/graphics/PointF;

.field public k:Landroid/graphics/PointF;

.field public l:Landroid/graphics/PointF;

.field public m:Landroid/graphics/PointF;

.field public n:Landroid/graphics/PointF;

.field public o:Landroid/graphics/PointF;

.field public p:Landroid/graphics/PointF;

.field public q:Landroid/graphics/PointF;

.field public r:Landroid/graphics/PointF;

.field public s:Landroid/graphics/PointF;

.field public t:Landroid/graphics/PointF;

.field public u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

.field public v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

.field public w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

.field public x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

.field public y:I

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    .line 4
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->C:Z

    .line 6
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->D:Z

    .line 7
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->E:I

    const v0, 0x7fffffff

    .line 8
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->K:I

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 11
    invoke-static {}, Lolb;->l0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 13
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->e:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->g:I

    .line 17
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_distance:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    .line 19
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 20
    sget v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_normalColor:I

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_default:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_default_hios:I

    invoke-static {p1, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->V:I

    .line 21
    sget v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_selectedColor:I

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_focus:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_focus_hios:I

    invoke-static {p1, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->W:I

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->g()V

    return-void
.end method

.method private setAddPath(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->I:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v0, v1

    float-to-int v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->P:Landroid/graphics/RectF;

    iget v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v5, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v5, v1

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->I:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget p1, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    sub-float/2addr p1, v4

    iput p1, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->I:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d:I

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->D:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->E:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-ne v3, v6, :cond_3

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->e:I

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    :goto_1
    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    if-eqz v6, :cond_4

    sub-int v6, v4, v3

    iget v7, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    goto :goto_2

    :cond_4
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    :goto_2
    int-to-float v6, v2

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    int-to-float v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iput v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    :cond_6
    :goto_3
    return-void
.end method

.method public addMarker()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->a()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final b(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->j:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->l:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v5, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    double-to-float v0, v5

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->n:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->q:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->q:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->p:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->r:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->q:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    double-to-float v0, v6

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->s:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->q:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v4, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->t:Landroid/graphics/PointF;

    iput v2, p0, Landroid/graphics/PointF;->x:F

    iget v0, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    iput v4, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method public final d(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    if-lez v4, :cond_0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_0
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    if-lez v4, :cond_1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_1
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->m:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->l:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->n:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->j:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->s:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->q:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->r:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->t:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->p:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    if-lez v4, :cond_2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_2

    :cond_2
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    :goto_2
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    if-lez p0, :cond_3

    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_3

    :cond_3
    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    :goto_3
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_4
    return-void
.end method

.method public final f(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()V
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->j:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->l:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->m:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->n:Landroid/graphics/PointF;

    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->o:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->p:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->q:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->r:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->s:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->t:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->H:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->I:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->P:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->Q:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->R:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->S:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->T:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->U:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetsmotionlibrary/R$interpolator;->os_motion_l1_easing_linear:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->c:I

    return-void
.end method

.method public final h(I)V
    .locals 14

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->J:I

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    return-void

    :cond_1
    sub-int v2, v0, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    mul-int v7, v2, v3

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    if-eqz v2, :cond_2

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v1, v7, :cond_2

    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    :cond_2
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->J:I

    div-int/lit8 v2, v1, 0x2

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v9, v7

    goto :goto_0

    :cond_3
    move v9, v4

    :goto_0
    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    if-le p1, v2, :cond_9

    sub-int v5, v0, v1

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    if-gt v5, v2, :cond_6

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    mul-int v4, v5, p1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v1, -0x1

    if-gt p1, v4, :cond_7

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    :goto_1
    mul-int v4, p1, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    if-le v0, v2, :cond_8

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    goto :goto_1

    :cond_9
    :goto_2
    if-eqz v3, :cond_a

    neg-int p1, v4

    int-to-float p1, p1

    goto :goto_3

    :cond_a
    int-to-float p1, v4

    :goto_3
    iget-object v8, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->N:Landroid/widget/Scroller;

    float-to-int v11, p1

    const/4 v12, 0x0

    const/16 v13, 0x15e

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public hideFrontMarkers(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->D:Z

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->E:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->a()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    int-to-float v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->e:I

    int-to-float v2, v2

    iput v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public final j(I)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v0, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget p1, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(I)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->J:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->l(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    return v2
.end method

.method public final l(I)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->V:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->C:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v4, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->C:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->L:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->V:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->W:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->L:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->W:I

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->V:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->L:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->T:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->U:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v2, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->b:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->F:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    :cond_9
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b(I)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->K:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->J:I

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->J:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->D:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->E:I

    sub-int/2addr p1, v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d(I)I

    move-result p1

    :goto_0
    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_7

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->O:I

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_7
    :goto_1
    return v2
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h(I)V

    :cond_0
    return-void
.end method

.method public removeAllMarkers()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public removeMarker(I)V
    .locals 3

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-ne v0, p1, :cond_3

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->a()V

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method public resetAddPageIndex()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCurrentMarker(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i()V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->h(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$a;)V
    .locals 0

    return-void
.end method

.method public setMaxMarkerNum(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->J:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->K:I

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->V:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->W:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update(F)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->L:F

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move p1, v1

    :cond_1
    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->C:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->i()V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->b:Z

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    goto :goto_3

    :cond_4
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->z:Ljava/util/ArrayList;

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    if-ne v0, v5, :cond_6

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->C:Z

    :cond_6
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, -0x1

    :goto_4
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->L:F

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->g:I

    sub-int v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    int-to-float v4, v3

    mul-float/2addr v4, p1

    iput v4, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget v4, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    mul-int v6, v1, v5

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v8, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v8, v4

    mul-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v8, v1

    mul-float/2addr v8, p1

    add-float/2addr v6, v8

    iput v6, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-eq v1, v4, :cond_9

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->e:I

    int-to-float v4, v1

    sub-int v3, v1, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v4, v3

    iput v4, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iput v2, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget v2, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    mul-int v4, v1, v5

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->u:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->g:I

    int-to-float v4, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->e:I

    sub-int v6, v5, v2

    int-to-float v6, v6

    sub-float v3, p1, v3

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    iput v4, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    int-to-float v6, v2

    sub-float/2addr v0, p1

    mul-float/2addr v6, v0

    iput v6, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget p1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->y:I

    mul-int v7, v5, v6

    int-to-float v7, v7

    add-float/2addr v7, p1

    iget-object v8, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->w:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v9, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v9, p1

    mul-int/2addr v5, v6

    int-to-float p1, v5

    sub-float/2addr v9, p1

    mul-float/2addr v9, v0

    add-float/2addr v7, v9

    iput v7, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->B:I

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->A:I

    if-eq p1, v5, :cond_9

    int-to-float p1, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->f:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->x:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    iget v2, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iput v2, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->c:F

    iget v2, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    mul-int v3, v5, v6

    int-to-float v3, v3

    sub-float v3, v2, v3

    mul-int/2addr v5, v6

    int-to-float v4, v5

    sub-float/2addr v2, v4

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    sub-float/2addr v3, v2

    iput v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->a:F

    :cond_9
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generatePath: mCurrentMovedCircle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->v:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringPageIndicator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->c()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
