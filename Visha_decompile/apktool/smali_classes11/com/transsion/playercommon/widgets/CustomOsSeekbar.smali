.class public Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;,
        Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:I

.field public J:Z

.field public K:Z

.field public L:Landroid/animation/ValueAnimator;

.field public M:Landroid/animation/ValueAnimator;

.field public N:F

.field public O:F

.field public P:F

.field public Q:F

.field public R:F

.field public S:Landroid/animation/ValueAnimator;

.field public T:F

.field public U:Z

.field public V:Z

.field public W:F

.field public final a0:Lyo1;

.field public b:F

.field public final b0:Lyo1;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field public n:F

.field public o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

.field public p:F

.field public q:F

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/content/Context;

.field public t:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

.field public u:F

.field public v:F

.field public final w:Landroid/graphics/Paint;

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->E:F

    .line 5
    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->F:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->I:I

    .line 7
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->J:Z

    .line 8
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->K:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->U:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->V:Z

    .line 11
    new-instance v1, Lyo1;

    invoke-direct {v1}, Lyo1;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    .line 12
    new-instance v1, Lyo1;

    invoke-direct {v1}, Lyo1;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    .line 13
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getConfigBuilder()Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->a()V

    .line 15
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    .line 17
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    .line 18
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarProgress:I

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    .line 19
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setEnabled(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 24
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p1, 0x3e800000    # 0.25f

    .line 30
    invoke-virtual {v1, p1}, Lyo1;->h(F)V

    .line 31
    invoke-virtual {v1, p1}, Lyo1;->i(F)V

    .line 32
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->B()V

    .line 33
    invoke-static {}, Lolb;->l0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public static A(I)I
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

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->Q:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->E:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->N:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->P:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H:F

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->O:F

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->R:F

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->K:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->E:F

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->F:F

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->v(F)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic t(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->J()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final B()V
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    iput v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    :cond_1
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    iget v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    :cond_3
    sub-float/2addr v2, v1

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->i:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    return-void
.end method

.method public final C()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final E(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v0}, Lyo1;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v0, p1}, Lyo1;->g(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {p0, p2}, Lyo1;->j(F)V

    return-void
.end method

.method public final F(FFJ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->K:Z

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->I:I

    sub-float p3, p2, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    cmpl-float v0, p3, p4

    if-lez v0, :cond_3

    sub-float/2addr p3, p4

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr p3, v0

    add-float/2addr p3, p4

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->B:F

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    move p3, v0

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->P:F

    iput p3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->Q:F

    iput p4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->R:F

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iput p3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->P:F

    iput p4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->Q:F

    iput p4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->R:F

    :goto_1
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->N:F

    iput p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->O:F

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final G(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->M:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->M:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->M:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->M:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->M:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final H(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->L:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->L:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->L:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->L:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->L:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final I(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v0}, Lyo1;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v0, p1}, Lyo1;->g(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {p0, p2}, Lyo1;->j(F)V

    return-void
.end method

.method public final J()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final K()Z
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v0}, Lyo1;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    const v1, 0x3d83126f    # 0.064f

    invoke-virtual {v0, v1}, Lyo1;->k(F)Z

    move-result v1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v0}, Lyo1;->e()F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v0}, Lyo1;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    const v2, 0x3e83126f    # 0.256f

    invoke-virtual {v0, v2}, Lyo1;->k(F)Z

    move-result v0

    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v0}, Lyo1;->e()F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->v(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, p0, v2, v3, v4}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;->onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V

    :cond_1
    return v1
.end method

.method public getConfigBuilder()Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->t:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;-><init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->t:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->t:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    return p0
.end method

.method public getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    return-object p0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->O:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->v(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getProgressFloat()F
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->O:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->v(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p:F

    iget v2, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->q:F

    iget v9, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->k:F

    iget-boolean v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->K:Z

    if-nez v3, :cond_0

    iget v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->l:F

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->i:F

    div-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    iget v5, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    :cond_0
    iget-object v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->g:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->e:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->W:F

    sub-float v4, v1, v3

    iget v5, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    add-float/2addr v4, v5

    add-float/2addr v2, v3

    sub-float v6, v2, v5

    iget-object v8, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->f:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->W:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    add-float v4, v1, v3

    iget-object v8, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->r:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->K()Z

    move-result v1

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->E:F

    iget v5, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iget v6, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->k:F

    iget v7, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C:F

    mul-float v8, v7, v4

    sub-float v11, v6, v8

    mul-float/2addr v7, v4

    add-float v13, v6, v7

    iget v6, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->I:I

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    :cond_1
    mul-float/2addr v5, v4

    sub-float v6, v2, v5

    add-float/2addr v2, v5

    goto :goto_0

    :cond_2
    iget v6, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    mul-float v7, v6, v4

    sub-float v7, v2, v7

    sub-float v6, v5, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    move v6, v7

    goto :goto_0

    :cond_3
    iget v6, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    sub-float v7, v5, v6

    add-float/2addr v5, v7

    mul-float/2addr v5, v4

    sub-float v5, v2, v5

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    move v6, v5

    :goto_0
    iget v5, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    iget v7, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->F:F

    mul-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-float v2, v10, v5

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v15

    sub-float v16, v11, v5

    add-float v2, v12, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v17

    add-float v18, v13, v5

    iget v2, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C:F

    mul-float/2addr v2, v4

    add-float v20, v2, v5

    iget-object v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v19, v20

    move-object/from16 v21, v4

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->w:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v14, v2

    move v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->e:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result p2

    :cond_0
    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    iget p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->W:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->W:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->W:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->q:F

    iget p2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->l:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->k:F

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

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

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

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$1;-><init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    const-wide/16 v4, 0x1f4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v3, :cond_c

    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->U:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G:F

    invoke-virtual {p0, v6, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->T:F

    iget p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->n:F

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->u(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->u:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->v:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->n:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->v:F

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->V:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->J:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    invoke-virtual {p0, v0, p1, v4, v5}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->F(FFJ)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->T:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    iput v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->I:I

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->B:F

    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C()Z

    move-result v1

    if-eqz v1, :cond_5

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->O:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->R:F

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v1}, Lyo1;->f()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v1}, Lyo1;->f()Z

    move-result v1

    if-nez v1, :cond_6

    move v2, v3

    :cond_6
    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    invoke-virtual {p0, v1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->I(FF)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->E(FF)V

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->n:F

    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->V:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v0}, Lyo1;->f()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v0}, Lyo1;->f()Z

    move-result v0

    if-nez v0, :cond_9

    move v2, v3

    :cond_9
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->I(FF)V

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_2
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->T:F

    :cond_b
    :goto_3
    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->U:Z

    goto/16 :goto_7

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->a0:Lyo1;

    invoke-virtual {v0}, Lyo1;->d()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b0:Lyo1;

    invoke-virtual {v0}, Lyo1;->d()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->u(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->U:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->E:F

    invoke-virtual {p0, v0, v6}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G(FF)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    iput v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->R:F

    :cond_d
    if-nez v0, :cond_e

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    cmpl-float v6, v0, v1

    if-eqz v6, :cond_e

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H(FF)V

    :cond_e
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->U:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->n:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->O:F

    goto :goto_4

    :cond_f
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    invoke-virtual {p0, v0, p1, v4, v5}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->F(FFJ)V

    :cond_10
    :goto_4
    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->n:F

    :cond_11
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m:Z

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    if-eqz p1, :cond_12

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;->onStopTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    :cond_12
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->U:Z

    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->V:Z

    goto :goto_7

    :cond_13
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->performClick()Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    goto :goto_6

    :cond_14
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->q:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->u:F

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    if-eqz v0, :cond_15

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;->onStartTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    :cond_15
    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    iget v4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    add-float/2addr v4, v0

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->j:F

    sub-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_16

    goto :goto_5

    :cond_16
    iput-boolean v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->J:Z

    goto :goto_7

    :cond_17
    :goto_5
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->J:Z

    goto :goto_7

    :cond_18
    :goto_6
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m:Z

    return v2

    :cond_19
    :goto_7
    return v3
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

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->J()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x:I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h:I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_solid_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x:I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->s:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;->onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbInsideColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbOutColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final u(F)F
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->q:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public final v(F)F
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->p:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->i:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->l:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    add-float/2addr p1, p0

    return p1
.end method

.method public w(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;)V
    .locals 6

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->a:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->b:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->b:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->c:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->c:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->d:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->f:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->g:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->g:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->h:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->d:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->e:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->h:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->x:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->i:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->y:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->e:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->f:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->k:I

    iget v1, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->j:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iput v4, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    :cond_0
    int-to-float v2, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->A:F

    iget v5, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->l:I

    if-ge v5, v1, :cond_1

    iput v1, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->l:I

    :cond_1
    iget v5, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->l:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iput v5, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->B:F

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->C:F

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->D:F

    iget v2, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->m:F

    iput v2, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->G:F

    iget v3, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    int-to-float v0, v0

    iget p1, p1, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;->n:F

    mul-float/2addr v0, p1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H:F

    :cond_2
    iget p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iput v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->H:F

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->B()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->o:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;->onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->t:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$e;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final x(FF)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Ls53;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p2, v2, v0, v0, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$b;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$b;-><init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final y()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Ls53;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v0, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$c;-><init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$d;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$d;-><init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final z(FF)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Ls53;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$a;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$a;-><init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method
