.class public Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;,
        Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$WheelSavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:D

.field private f:D

.field private g:F

.field private h:Z

.field private i:J

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:F

.field private p:J

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1c

    .line 23
    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    const/4 p1, 0x4

    .line 24
    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    .line 25
    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->d:Z

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->e:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 28
    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->f:D

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->g:F

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->h:Z

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->i:J

    const/high16 v3, -0x56000000

    .line 32
    iput v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    const v3, 0xffffff

    .line 33
    iput v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    .line 35
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    .line 36
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    const/high16 v3, 0x43660000    # 230.0f

    .line 37
    iput v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    .line 38
    iput-wide v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    .line 39
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    .line 40
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    .line 41
    iput-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1c

    .line 2
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    .line 4
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->d:Z

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->e:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    .line 7
    iput-wide v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->f:D

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->g:F

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->h:Z

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->i:J

    const/high16 v4, -0x56000000

    .line 11
    iput v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    const v4, 0xffffff

    .line 12
    iput v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    .line 13
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    .line 14
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    .line 15
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    const/high16 v4, 0x43660000    # 230.0f

    .line 16
    iput v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    .line 17
    iput-wide v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    .line 18
    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    .line 19
    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    .line 20
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    .line 21
    sget-object v0, Lcom/mgmi/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private a(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 5
    iget-boolean v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->d:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    .line 6
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7
    iget v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    .line 8
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    .line 9
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->i:J

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 30
    iget-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->e:D

    long-to-double p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->e:D

    .line 31
    iget-wide p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->f:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    sub-double/2addr v0, p1

    .line 32
    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->e:D

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->i:J

    .line 34
    iget-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->h:Z

    .line 35
    :cond_0
    iget-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->e:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p1

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    .line 36
    iget-boolean p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->h:Z

    const/high16 v0, 0x437e0000    # 254.0f

    if-eqz p2, :cond_1

    mul-float/2addr p1, v0

    .line 37
    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->g:F

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, v0

    .line 38
    iget p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->g:F

    sub-float/2addr v0, p2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    .line 39
    iput p2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->g:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    .line 40
    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->i:J

    :goto_0
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 13
    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    .line 14
    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    .line 15
    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    .line 16
    sget v1, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_circleRadius:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    .line 17
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_fillRadius:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->d:Z

    .line 18
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_barWidth:I

    iget v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    .line 19
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_rimWidth:I

    iget v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    .line 20
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_spinSpeed:I

    iget v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 21
    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    .line 22
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_barSpinCycleTime:I

    iget-wide v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->f:D

    double-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->f:D

    .line 23
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_barColor:I

    iget v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    .line 24
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_rimColor:I

    iget v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    .line 25
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_linearProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->q:Z

    .line 26
    sget v0, Lcom/mgmi/R$styleable;->ProgressWheel_matProg_progressIndeterminate:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a()V

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->u:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->u:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;

    invoke-interface {p0, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;->a(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBarColor()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    return p0
.end method

.method public getBarWidth()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    return p0
.end method

.method public getCircleRadius()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    return p0
.end method

.method public getProgress()F
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-eqz v0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getRimColor()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    return p0
.end method

.method public getRimWidth()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    return p0
.end method

.method public getSpinSpeed()F
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->m:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    iget v8, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    mul-float/2addr v0, v8

    div-float/2addr v0, v3

    invoke-direct {p0, v6, v7}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a(J)V

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->g:F

    add-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v3, 0x43070000    # 135.0f

    move v7, v1

    :goto_0
    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v0

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_2
    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    iget v6, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v3

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    mul-float/2addr v6, v3

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    add-float/2addr v3, v6

    iget v6, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c()V

    :cond_4
    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    iget-boolean v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->q:Z

    if-nez v3, :cond_5

    div-float/2addr v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    float-to-double v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    double-to-float v0, v6

    mul-float/2addr v0, v5

    iget v3, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-double v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    float-to-double v10, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v8, v6

    double-to-float v1, v8

    mul-float/2addr v1, v5

    move v12, v1

    move v1, v0

    move v0, v12

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_6

    move v9, v5

    goto :goto_3

    :cond_6
    move v9, v0

    :goto_3
    iget-object v7, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->n:Landroid/graphics/RectF;

    sub-float v8, v1, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->l:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a(II)V

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->j:I

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b()V

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b:I

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->u:Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel$a;

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->a:I

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_2

    move p1, v1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->q:Z

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    move p1, v1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->r:F

    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->p:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->s:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->k:I

    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->b()V

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->c:I

    iget-boolean p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->t:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/ProgressWheel;->o:F

    return-void
.end method
