.class public Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static n:Landroid/graphics/Path;


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Ljava/util/List;

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Lcom/transsion/hubsdk/api/graphics/TranCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->n:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 2
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    const v0, 0x3f19999a    # 0.6f

    .line 3
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->d:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->e:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->f:Z

    const v0, 0x3f733333    # 0.95f

    .line 6
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->i:F

    const v0, 0x3f666666    # 0.9f

    .line 7
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 10
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    const v0, 0x3f19999a    # 0.6f

    .line 11
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->d:F

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->e:Z

    .line 13
    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->f:Z

    const v0, 0x3f733333    # 0.95f

    .line 14
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->i:F

    const v0, 0x3f666666    # 0.9f

    .line 15
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41800000    # 16.0f

    .line 18
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    const p3, 0x3f19999a    # 0.6f

    .line 19
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->d:F

    const/4 p3, 0x0

    .line 20
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->e:Z

    .line 21
    iput-boolean p3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->f:Z

    const p3, 0x3f733333    # 0.95f

    .line 22
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->i:F

    const p3, 0x3f666666    # 0.9f

    .line 23
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static coerceAtLeast(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public static coerceAtMost(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method private getSmoothRoundPath()Landroid/graphics/Path;
    .locals 11

    sget-object v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    sget-object v2, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->n:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->n:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, v2

    :goto_2
    sget-object v4, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->h:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->y:F

    move v5, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    sget-object p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->n:Landroid/graphics/Path;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    sget v0, Lcom/transsion/widgetslistitemlayout/R$color;->os_stroke_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->g:I

    if-eqz p2, :cond_7

    sget-object v0, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner_os_smooth_radius:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    goto :goto_1

    :cond_0
    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner_os_smooth_stroke_color:I

    if-ne v3, v4, :cond_1

    sget v4, Lcom/transsion/widgetslistitemlayout/R$color;->os_stroke_color:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->g:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner_os_smooth_smoothness:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->d:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->d:F

    goto :goto_1

    :cond_2
    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner_os_smooth_is_clip_path:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->e:Z

    goto :goto_1

    :cond_3
    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner_os_smooth_clip_draw_stroke:I

    if-ne v3, v4, :cond_4

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->f:Z

    goto :goto_1

    :cond_4
    sget v4, Lcom/transsion/widgetslistitemlayout/R$styleable;->OSSmoothRoundCorner_os_smooth_stroke_width:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->g:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->m:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    if-nez p1, :cond_8

    new-instance p1, Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->m:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    :cond_8
    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->g:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->m:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    iget v6, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->k:F

    iget v7, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->l:F

    iget v8, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    sget-object v9, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->clipRRect(Landroid/graphics/Canvas;FFFFFLcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;)Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v1, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->f:Z

    if-eqz v1, :cond_1

    iget-object v10, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->m:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    iget v14, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->k:F

    iget v15, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->l:F

    iget v1, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    iget-object v0, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move/from16 v16, v1

    move-object/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    iget-object v10, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->m:Lcom/transsion/hubsdk/api/graphics/TranCanvas;

    iget v14, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->k:F

    iget v15, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->l:F

    iget v1, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    iget-object v3, v0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move/from16 v16, v1

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/transsion/hubsdk/api/graphics/TranCanvas;->drawSmoothRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->k:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->l:F

    return-void
.end method

.method public setClipCorner(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->c:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipDrawStroke(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->f:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsClipPath(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->e:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->g:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->j:F

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSmoothRoundCorner;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
