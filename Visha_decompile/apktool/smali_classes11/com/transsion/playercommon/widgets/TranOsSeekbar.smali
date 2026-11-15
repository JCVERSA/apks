.class public Lcom/transsion/playercommon/widgets/TranOsSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;,
        Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;
    }
.end annotation


# static fields
.field public static final q0:Ljava/lang/String; = "TranOsSeekbar"


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public a0:Z

.field public b:F

.field public b0:Z

.field public c:F

.field public c0:Z

.field public d:F

.field public d0:Z

.field public e:F

.field public e0:Z

.field public f:F

.field public final f0:Luua;

.field public g:F

.field public final g0:Luua;

.field public h:F

.field public h0:Landroid/animation/ValueAnimator;

.field public i:F

.field public i0:Landroid/animation/ValueAnimator;

.field public j:F

.field public j0:Landroid/animation/ValueAnimator;

.field public k:F

.field public k0:Landroid/animation/ValueAnimator;

.field public l:F

.field public l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

.field public m:F

.field public final m0:Landroid/graphics/Paint;

.field public n:F

.field public final n0:Landroid/content/Context;

.field public o:F

.field public final o0:Landroid/graphics/Paint;

.field public p:F

.field public p0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->v:F

    .line 5
    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->w:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->S:I

    .line 7
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b0:Z

    .line 8
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0:Z

    .line 9
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    .line 10
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0:Z

    .line 11
    new-instance v1, Luua;

    invoke-direct {v1}, Luua;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    .line 12
    new-instance v1, Luua;

    invoke-direct {v1}, Luua;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    .line 13
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getConfigBuilder()Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->a()V

    .line 15
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    .line 17
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    .line 18
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarProgress:I

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    .line 19
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->setEnabled(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

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
    invoke-virtual {v1, p1}, Luua;->setMaxSpeedFractor(F)V

    .line 31
    invoke-virtual {v1, p1}, Luua;->setMinSpeedFractor(F)V

    .line 32
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->U()V

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

.method public static bridge synthetic A(Lcom/transsion/playercommon/widgets/TranOsSeekbar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->T:I

    return-void
.end method

.method public static bridge synthetic B(Lcom/transsion/playercommon/widgets/TranOsSeekbar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->U:I

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->F:F

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C:F

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J(F)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic F(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic G(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic H()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q0:Ljava/lang/String;

    return-object v0
.end method

.method public static Q(I)I
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

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->K:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->v:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->H:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->x:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G:F

    return p0
.end method

.method private getContentHeight()I
    .locals 3

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->t:F

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->s:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e:F

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method private getThumbHalfSizeOnTouchDown()F
    .locals 2

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->A:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G:F

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    :goto_0
    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->T:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->U:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->W:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V:I

    return p0
.end method

.method public static bridge synthetic n(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->D:F

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->E:F

    return p0
.end method

.method public static bridge synthetic p(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C:F

    return p0
.end method

.method public static bridge synthetic q(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->y:F

    return p0
.end method

.method public static bridge synthetic r(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->z:F

    return p0
.end method

.method public static bridge synthetic s(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    return p0
.end method

.method public static bridge synthetic t(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L:F

    return p0
.end method

.method public static bridge synthetic u(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0:Z

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->v:F

    return-void
.end method

.method public static bridge synthetic x(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->w:F

    return-void
.end method

.method public static bridge synthetic y(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    return-void
.end method

.method public static bridge synthetic z(Lcom/transsion/playercommon/widgets/TranOsSeekbar;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    return-void
.end method


# virtual methods
.method public final I(F)F
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    move p1, p0

    :cond_1
    return p1
.end method

.method public final J(F)F
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    add-float/2addr p1, p0

    return p1
.end method

.method public K(Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;)V
    .locals 6

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->k:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->l:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->m:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->p:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->q:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->n:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->r:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->s:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->o:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->u:I

    iget v1, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->t:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iput v4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    :cond_0
    int-to-float v2, v1

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    iget v5, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->v:I

    if-ge v5, v1, :cond_1

    iput v1, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->v:I

    :cond_1
    iget v5, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->v:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iput v5, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->r:F

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->s:F

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iget v2, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->w:F

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->x:F

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    int-to-float v0, v0

    iget v4, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->x:F

    mul-float/2addr v0, v4

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G:F

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->G:F

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->U()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgressFloat()F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->a(Lcom/transsion/playercommon/widgets/TranOsSeekbar;IFZ)V

    :cond_4
    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->y:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->t:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->a:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->i:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->z:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->h:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->y:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->c:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->D:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->b:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->E:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->F:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->d:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    iget v1, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->e:I

    shl-int/lit8 v2, v1, 0x18

    or-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->T:I

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->j:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->A:F

    iget v0, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->f:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->W:I

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->U:I

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V:I

    iget p1, p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;->g:I

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->P:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final L(FF)Landroid/animation/ValueAnimator;
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

    new-instance p2, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$b;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final M()Landroid/animation/ValueAnimator;
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

    new-instance v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$d;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$d;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$e;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$e;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

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

.method public final N()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Ls53;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v0, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$f;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$g;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

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

.method public final O(FF)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Leb7;

    invoke-direct {p2}, Leb7;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$c;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final P(FF)Landroid/animation/ValueAnimator;
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

    new-instance p2, Lcom/transsion/playercommon/widgets/TranOsSeekbar$a;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$a;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public final R(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m:F

    iget v8, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i:F

    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j:F

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget v4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    :cond_0
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float v3, v0, v2

    iget v4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    add-float/2addr v3, v4

    add-float/2addr v1, v2

    sub-float v5, v1, v4

    iget-object v7, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v8

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    add-float v3, v0, v2

    iget-object v7, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float v3, v1, v0

    add-float v5, v1, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->t:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    sub-float v4, v0, v4

    div-float v6, v1, v2

    add-float/2addr v6, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C:F

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->F:F

    iget v7, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->T:I

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->P:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v9, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final S(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    iget v2, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m:F

    iget v9, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i:F

    iget-boolean v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0:Z

    if-nez v3, :cond_0

    iget v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j:F

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g:F

    div-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget v5, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    :cond_0
    iget-object v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float v4, v1, v3

    iget v5, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    add-float/2addr v4, v5

    add-float/2addr v2, v3

    sub-float v6, v2, v5

    iget-object v8, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    add-float v4, v1, v3

    iget-object v8, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m0:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0()Z

    move-result v1

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->v:F

    iget v5, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iget v6, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i:F

    iget v7, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->s:F

    mul-float v8, v7, v4

    sub-float v11, v6, v8

    mul-float/2addr v7, v4

    add-float v13, v6, v7

    iget v6, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->S:I

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
    iget v6, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    mul-float v7, v6, v4

    sub-float v7, v2, v7

    sub-float v6, v5, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    move v6, v7

    goto :goto_0

    :cond_3
    iget v6, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    sub-float v7, v5, v6

    add-float/2addr v5, v7

    mul-float/2addr v5, v4

    sub-float v5, v2, v5

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    move v6, v5

    :goto_0
    iget v5, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    iget v7, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->w:F

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

    iget v2, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->s:F

    mul-float/2addr v2, v4

    add-float v20, v2, v5

    iget-object v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v19, v20

    move-object/from16 v21, v4

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o0:Landroid/graphics/Paint;

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

.method public final T(I)I
    .locals 1

    sget-boolean v0, Lolb;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    invoke-static {p0, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    :goto_1
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final U()V
    .locals 3

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    :cond_1
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    :cond_3
    sub-float/2addr v2, v1

    iput v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->setProgress(F)V

    return-void
.end method

.method public final V()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

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

.method public final W(Landroid/view/MotionEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b0:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0(FFJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgressFloat()F

    move-result v2

    invoke-interface {p1, p0, v0, v2, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->a(Lcom/transsion/playercommon/widgets/TranOsSeekbar;IFZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0:Z

    :cond_3
    return-void
.end method

.method public final X(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->x:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->M:F

    iget p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->o:F

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b0:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0(FFJ)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->M:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v3

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->S:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->r:F

    cmpl-float v4, v3, v0

    if-lez v4, :cond_3

    move v3, v0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    iput v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L:F

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    invoke-virtual {p0, v0, v3}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0(FF)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0(FF)V

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move v1, v2

    :goto_1
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iget v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    invoke-virtual {p0, v0, v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0(FF)V

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_2
    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->M:F

    goto :goto_3

    :cond_b
    iget p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {p1}, Luua;->getTargValue()F

    move-result p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_3
    return-void
.end method

.method public final Y(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->z:F

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0(FF)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0(FFJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0}, Luua;->d()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0}, Luua;->d()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lolb;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0(FF)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    iput v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L:F

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0(FF)V

    :cond_1
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0(FFJ)V

    :cond_3
    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k:F

    return-void
.end method

.method public final a0()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final b0()V
    .locals 2

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->A:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    iget v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    :goto_0
    return-void
.end method

.method public final c0(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0, p1}, Luua;->set(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {p0, p2}, Luua;->setTargValue(F)V

    return-void
.end method

.method public final d0(FFJ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0:Z

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->M()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->M()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->S:I

    sub-float p3, p2, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q:F

    cmpl-float v0, p3, p4

    if-lez v0, :cond_3

    sub-float/2addr p3, p4

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr p3, v0

    add-float/2addr p3, p4

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->r:F

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    move p3, v0

    :cond_2
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J:F

    iput p3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->K:F

    iput p4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L:F

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    iput p3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J:F

    iput p4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->K:F

    iput p4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L:F

    :goto_1
    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->H:F

    iput p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final e0(FFJ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c0:Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->H:F

    iput p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f0(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->L(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final g0(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->p0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$h;

    return-object p0
.end method

.method public getMax()F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->c:F

    return p0
.end method

.method public getMin()F
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    return-object p0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J(F)F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_1

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    goto :goto_0

    :goto_1
    return p0
.end method

.method public getProgressFloat()F
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->k0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->I:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J(F)F

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    :goto_0
    return p0
.end method

.method public final h0(FF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->P(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->P(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final i0(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0, p1}, Luua;->set(F)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {p0, p2}, Luua;->setTargValue(F)V

    return-void
.end method

.method public final j0()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1

    :cond_0
    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    goto :goto_0

    :goto_1
    return p0
.end method

.method public final k0()Z
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->V()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    const v1, 0x3d83126f    # 0.064f

    invoke-virtual {v0, v1}, Luua;->f(F)Z

    move-result v1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->f0:Luua;

    invoke-virtual {v0}, Luua;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->u:F

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0}, Luua;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    const v2, 0x3e83126f    # 0.256f

    invoke-virtual {v0, v2}, Luua;->f(F)Z

    move-result v0

    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0:Luua;

    invoke-virtual {v0}, Luua;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->J(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, p0, v2, v3, v4}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->a(Lcom/transsion/playercommon/widgets/TranOsSeekbar;IFZ)V

    :cond_1
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->S(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getContentHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->T(I)I

    move-result p2

    sget-object v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->q0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb4

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b0()V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m:F

    iget p2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->i:F

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

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->setProgress(F)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
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

    iget p0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p1, Lcom/transsion/playercommon/widgets/TranOsSeekbar$1;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$1;-><init>(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->W(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->X(Landroid/view/MotionEvent;)V

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lolb;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Y(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Z(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->b(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    :cond_5
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d0:Z

    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->e0:Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->performClick()Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    iget v4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m:F

    iget v4, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->B:F

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->m:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n:F

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    if-eqz v0, :cond_8

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->c(Lcom/transsion/playercommon/widgets/TranOsSeekbar;)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getThumbHalfSizeOnTouchDown()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->h:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_9

    move v2, v1

    :cond_9
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->b0:Z

    if-eqz v2, :cond_b

    sget-boolean p1, Lolb;->c:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->C:F

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->y:F

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->g0(FF)V

    goto :goto_3

    :cond_a
    :goto_2
    iput-boolean v2, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0:Z

    return v2

    :cond_b
    :goto_3
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

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->a0()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->j0()I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q:I

    sget-boolean p1, Lolb;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_quaternary_color_solid:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_solid_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q:I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->n0:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->d:F

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->l0:Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/playercommon/widgets/TranOsSeekbar$i;->a(Lcom/transsion/playercommon/widgets/TranOsSeekbar;IFZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setSecondTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->O:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbInsideColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->R:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbInsideUnAbleColorHios(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->P:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->P:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setThumbOutColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->Q:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->N:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
