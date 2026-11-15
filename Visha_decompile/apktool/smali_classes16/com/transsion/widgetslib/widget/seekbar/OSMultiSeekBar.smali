.class public Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;,
        Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:Z

.field public p:F

.field public q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

.field public r:F

.field public s:F

.field public final t:Landroid/graphics/Paint;

.field public final u:Landroid/content/Context;

.field public v:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

.field public final w:Landroid/graphics/Paint;

.field public x:J

.field public y:J

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->x:J

    .line 5
    iput-wide v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->y:J

    .line 6
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->a()V

    .line 8
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    .line 10
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    .line 11
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_osMultiSeekbarProgress:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    .line 12
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSMultiSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setEnabled(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 17
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->w:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 22
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h()V

    .line 23
    invoke-static {}, Lolb;->l0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->i()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j()I

    move-result p0

    return p0
.end method

.method public static g(I)I
    .locals 2

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final d(F)F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->r:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->s:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public final e()F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->r:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->l:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->n:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    add-float/2addr v0, p0

    return v0
.end method

.method public f(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;)V
    .locals 3

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->a:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->b:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->c:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->f:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g:I

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->g:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h:I

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->d:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->e:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->e:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->f:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->h:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->i:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->i:I

    iget p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;->j:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->k:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;->a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->v:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->v:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->v:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->v:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$a;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    return p0
.end method

.method public getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    return p0
.end method

.method public final h()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    :cond_3
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->f:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    float-to-int v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->c:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->l:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setProgress(F)V

    return-void
.end method

.method public final i()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final j()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->r:F

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->s:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->k:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    int-to-float v2, v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v2, v8

    add-float v9, v0, v2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->n:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->l:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->e:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v9

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->f:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->t:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    int-to-float v0, v0

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->k:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->r:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->e:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->s:F

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->r:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->n:F

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->setProgress(F)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "save_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "progress"

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->y:J

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->z:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->A:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->p:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->B:Z

    if-eqz v3, :cond_7

    :cond_1
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->p:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->B:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->e()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;->a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->y:J

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->p:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->m:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->e()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v4

    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;->a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;->c(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->performClick()Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->B:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->r:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->s:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->z:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->x:J

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;->b(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V

    goto :goto_1

    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    return v1

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->o:Z

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->i()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->j()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->i:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_brand_disabled:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_brand_disabled_hios:I

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->u:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lolb;->m(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->i:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->d:F

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->q:Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;->a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
