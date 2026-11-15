.class public Lcom/transsion/widgets/CircleProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private bgRadus:I

.field private content:Ljava/lang/String;

.field private curPercentProgress:I

.field private fixText:Ljava/lang/String;

.field private progressPaint:Landroid/graphics/Paint;

.field private smallCirclePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 2
    iput p1, p0, Lcom/transsion/widgets/CircleProgressView;->bgRadus:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/transsion/widgets/CircleProgressView;->curPercentProgress:I

    .line 4
    invoke-direct {p0}, Lcom/transsion/widgets/CircleProgressView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x12

    .line 6
    iput p1, p0, Lcom/transsion/widgets/CircleProgressView;->bgRadus:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/transsion/widgets/CircleProgressView;->curPercentProgress:I

    .line 8
    invoke-direct {p0}, Lcom/transsion/widgets/CircleProgressView;->init()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CircleProgressView;->setBgPaint()V

    invoke-direct {p0}, Lcom/transsion/widgets/CircleProgressView;->setProgressPaint()V

    return-void
.end method

.method private setBgPaint()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$color;->visha_music_play_progress_line_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/transsion/widgets/CircleProgressView;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->smallCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setProgressPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$color;->visha_music_play_progress_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgets/CircleProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/widgets/CircleProgressView;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/transsion/widgets/CircleProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/transsion/widgets/CircleProgressView;->bgRadus:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/transsion/widgets/CircleProgressView;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v9, v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {v4, v9, v9, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/transsion/widgets/CircleProgressView;->bgPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x43b40000    # 360.0f

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v9, v9, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v0, Lcom/transsion/widgets/CircleProgressView;->curPercentProgress:I

    mul-int/lit16 v1, v1, 0x168

    div-int/lit8 v1, v1, 0x64

    int-to-float v13, v1

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/transsion/widgets/CircleProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v12, -0x3d4c0000    # -90.0f

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/transsion/widgets/CircleProgressView;->curPercentProgress:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method
