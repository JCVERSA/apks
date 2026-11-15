.class public Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;,
        Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$d;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Landroid/animation/ValueAnimator;

.field public C:Landroid/animation/ValueAnimator;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:Z

.field public final p:I

.field public q:F

.field public r:F

.field public s:F

.field public final t:Landroid/graphics/Paint;

.field public final u:Landroid/graphics/Rect;

.field public final v:Landroid/content/Context;

.field public w:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

.field public x:J

.field public y:J

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->k:F

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->x:J

    .line 6
    iput-wide v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->y:J

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->v:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->a()V

    .line 9
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_osWideSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    .line 11
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_osWideSeekbarMax:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    .line 12
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_osWideSeekbarProgress:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    .line 13
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSWideSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->setEnabled(Z)V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 18
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->u:Landroid/graphics/Rect;

    .line 20
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->p:I

    .line 21
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m()V

    .line 22
    invoke-static {}, Lolb;->l0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->v:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->f:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g:F

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->e:F

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->n()I

    move-result p0

    return p0
.end method

.method public static l(I)I
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
.method public final g(F)F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->r:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->s:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->w:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->w:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->w:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    return p0
.end method

.method public getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    return p0
.end method

.method public final h()F
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->r:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->n:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    add-float/2addr v0, p0

    return v0
.end method

.method public i(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;)V
    .locals 3

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->a:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->b:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->c:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    iget v0, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->d:I

    int-to-float v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->e:F

    iget v1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->e:I

    int-to-float v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g:F

    iget v2, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->f:I

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->i:I

    iget p1, p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;->g:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j:I

    int-to-float p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->f:F

    int-to-float p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->w:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$c;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final j()Landroid/animation/ValueAnimator;
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h:F

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const v0, 0x3fcccccd    # 1.6f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$a;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public final k()Landroid/animation/ValueAnimator;
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h:F

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$b;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public final m()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->c:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    :cond_3
    sub-float/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->setProgress(F)V

    return-void
.end method

.method public final n()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->v:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->v:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->r:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->s:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->p:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v7, v0, v1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->n:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m:F

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    move v2, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m:F

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->t:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h:F

    float-to-double v0, p2

    const-wide v2, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->p:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->p:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->e:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->r:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->p:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->e:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->s:F

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->r:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->n:F

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

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->setProgress(F)V

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

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->y:J

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->z:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->A:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->q:F

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_8

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->l(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->q:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->y:J

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->g(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->q:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->m:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->h()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->B:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->k()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->performClick()Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->r:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->s:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->z:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->x:J

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->C:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_7
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    return v2

    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->o:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    :cond_a
    :goto_2
    return v1
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->n()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->v:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$d;)V
    .locals 0

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->d:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->j:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->i:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
