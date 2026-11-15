.class public Lcom/transsion/widgetslistitemlayout/OSSelectImageView;
.super Lcom/transsion/widgetslistitemlayout/OSRoundImageView;
.source "SourceFile"


# instance fields
.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/RectF;

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:F

.field public o:Z

.field public p:F

.field public q:Z

.field public r:Landroid/content/Context;

.field public final s:Landroid/graphics/Path;

.field public final t:Landroid/graphics/RectF;

.field public final u:[F

.field public v:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

.field public w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->s:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->t:Landroid/graphics/RectF;

    const/16 v0, 0x8

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->u:[F

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->s:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->t:Landroid/graphics/RectF;

    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->u:[F

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslistitemlayout/OSRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->s:Landroid/graphics/Path;

    .line 13
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->t:Landroid/graphics/RectF;

    const/16 p3, 0x8

    .line 14
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->u:[F

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    sget v0, Lcom/transsion/widgetslistitemlayout/R$attr;->os_brand_primary:I

    sget v2, Lcom/transsion/widgetslistitemlayout/R$color;->os_brand_primary_hios:I

    invoke-static {p1, v0, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->l:I

    sget v0, Lcom/transsion/widgetslistitemlayout/R$attr;->os_fill_weaker:I

    sget v2, Lcom/transsion/widgetslistitemlayout/R$color;->os_fill_weaker_hios:I

    invoke-static {p1, v0, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->m:I

    invoke-static {p1, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->n:F

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    invoke-static {p1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->k:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->h:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->r:Landroid/content/Context;

    if-eqz p2, :cond_9

    sget-object v0, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_selected:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->q:Z

    goto :goto_1

    :cond_0
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_border_width:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    goto :goto_1

    :cond_1
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_border_radius:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    goto :goto_1

    :cond_2
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_border_inset:I

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->k:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->k:F

    goto :goto_1

    :cond_3
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_radius:I

    if-ne v2, v3, :cond_4

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    goto :goto_1

    :cond_4
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_need_unselected_border:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->o:Z

    goto :goto_1

    :cond_5
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_border_color:I

    if-ne v2, v3, :cond_6

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->l:I

    goto :goto_1

    :cond_6
    sget v3, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSelectImageView_os_siv_unselected_border_color:I

    if-ne v2, v3, :cond_7

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->m:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->m:I

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->u:[F

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([FF)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->v:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-nez p1, :cond_b

    new-instance p1, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->v:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    :cond_b
    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->v:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->smoothcornerCubicEdgeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->w:Z

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->l:I

    return p0
.end method

.method public getBorderInset()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->k:F

    return p0
.end method

.method public getBorderRadius()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    return p0
.end method

.method public getBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    return p0
.end method

.method public getRadius()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    return p0
.end method

.method public getUnSelectBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->n:F

    return p0
.end method

.method public getUnSelectedBorderColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->m:I

    return p0
.end method

.method public isNeedUnSelectedBorder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->o:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->q:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->k:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->w:Z

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->v:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v9, v1

    iget v10, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    sget-object v11, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->s:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->t:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->s:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->t:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->u:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->s:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->o:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    div-float v3, v1, v2

    iput v3, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->w:Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->v:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->h:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    iget-object v8, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->l:I

    return-void
.end method

.method public setBorderInset(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->k:F

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->j:F

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->i:F

    return-void
.end method

.method public setNeedUnSelectedBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->o:Z

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->p:F

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnSelectBorderWidth(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->n:F

    return-void
.end method

.method public setUnSelectedBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSelectImageView;->m:I

    return-void
.end method
