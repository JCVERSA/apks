.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$f;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static final CURVED_ARC_DIRECTION_CENTER:I = 0x1

.field public static final CURVED_ARC_DIRECTION_LEFT:I = 0x0

.field public static final CURVED_ARC_DIRECTION_RIGHT:I = 0x2

.field public static final DEFAULT_CURVED_FACTOR:F = 0.75f

.field public static final DIVIDER_TYPE_FILL:I = 0x0

.field public static final DIVIDER_TYPE_WRAP:I = 0x1

.field public static final INVALID_INPUT_DAY_RANGE:I = 0x1

.field public static final INVALID_INPUT_YEAR_LENGTH:I = 0x3

.field public static final INVALID_INPUT_YEAR_RANGE:I = 0x2

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2

.field public static final TEXT_ALIGN_CENTER:I = 0x1

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_RIGHT:I = 0x2

.field public static final q1:F

.field public static final r1:F

.field public static final s1:F

.field public static t1:Z


# instance fields
.field public A:I

.field public A0:Z

.field public B:I

.field public B0:Z

.field public C:I

.field public C0:Z

.field public D:F

.field public D0:Z

.field public E:Landroid/graphics/Rect;

.field public E0:Z

.field public F:F

.field public F0:Z

.field public G:Landroid/graphics/Camera;

.field public G0:Ljava/util/Calendar;

.field public H:Landroid/graphics/Matrix;

.field public H0:Ljava/util/Calendar;

.field public I:Z

.field public I0:Ljava/util/List;

.field public J:I

.field public J0:Z

.field public K:F

.field public K0:I

.field public L:F

.field public L0:Landroid/graphics/Matrix;

.field public M:Z

.field public M0:Landroid/text/TextPaint;

.field public N:Landroid/graphics/Typeface;

.field public N0:F

.field public O:Landroid/graphics/Typeface;

.field public O0:F

.field public P:Ljava/util/List;

.field public P0:F

.field public Q:Z

.field public Q0:I

.field public R:Landroid/view/VelocityTracker;

.field public R0:Z

.field public S:I

.field public S0:Z

.field public T:I

.field public T0:F

.field public U:Lkx3;

.field public U0:F

.field public V:I

.field public V0:Z

.field public W:I

.field public W0:F

.field public X0:F

.field public Y0:Landroid/media/AudioManager;

.field public Z0:F

.field public a0:F

.field public a1:I

.field public b:Landroid/graphics/Paint;

.field public b0:F

.field public b1:I

.field public c:Landroid/graphics/Paint;

.field public c0:F

.field public c1:Ljava/lang/String;

.field public d:Landroid/graphics/Paint;

.field public d0:F

.field public d1:Landroid/view/inputmethod/InputMethodManager;

.field public e:Z

.field public e0:F

.field public volatile e1:Z

.field public f:Landroid/graphics/Paint$FontMetrics;

.field public f0:J

.field public f1:Ljava/lang/String;

.field public g:I

.field public g0:I

.field public g1:Z

.field public h:I

.field public h0:I

.field public h1:Z

.field public i:F

.field public i0:Z

.field public i1:F

.field public j:Z

.field public j0:Landroid/graphics/Typeface;

.field public j1:F

.field public k:I

.field public k0:Landroid/graphics/Typeface;

.field public k1:F

.field public l:Z

.field public l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

.field public l1:F

.field public m:I

.field public m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

.field public m1:Ljava/lang/Runnable;

.field public mIsTouchStatus:Z

.field public n:F

.field public n0:Z

.field public n1:Landroid/animation/ValueAnimator;

.field public o:I

.field public o0:I

.field public o1:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;

.field public p:F

.field public p0:I

.field public p1:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

.field public q:Landroid/graphics/Paint$Cap;

.field public q0:I

.field public r:F

.field public r0:I

.field public s:Z

.field public s0:I

.field public t:I

.field public t0:I

.field public u:I

.field public u0:I

.field public v:I

.field public v0:I

.field public w:I

.field public w0:I

.field public x:I

.field public x0:I

.field public y:I

.field public y0:I

.field public z:I

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q1:F

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D0(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r1:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s1:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t1:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    .line 7
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q:Landroid/graphics/Paint$Cap;

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D:F

    .line 9
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q:Z

    .line 12
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    .line 13
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b0:F

    .line 14
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0:Z

    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j0:Landroid/graphics/Typeface;

    .line 16
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k0:Landroid/graphics/Typeface;

    .line 17
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0:Z

    .line 18
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I0:Ljava/util/List;

    .line 20
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L0:Landroid/graphics/Matrix;

    .line 21
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    const/high16 v2, 0x44340000    # 720.0f

    .line 22
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O0:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 23
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P0:F

    .line 24
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R0:Z

    .line 25
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    .line 26
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Z0:F

    const/16 v2, 0x18

    .line 27
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a1:I

    .line 28
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b1:I

    .line 29
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    .line 31
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g1:Z

    .line 32
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h1:Z

    .line 33
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i1:F

    .line 34
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j1:F

    const/high16 p3, -0x40800000    # -1.0f

    .line 35
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    .line 36
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    .line 37
    new-instance p3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m1:Ljava/lang/Runnable;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0(Landroid/content/Context;)V

    return-void
.end method

.method public static D0(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static H(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V0:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lkx3;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    return-object p0
.end method

.method private getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    if-gez v0, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_2

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    :cond_4
    :goto_2
    return v0
.end method

.method private getCurrentSelectedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    if-ltz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U0:F

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->T0:F

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->X0:F

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W0:F

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;C)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b0(C)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0()V

    return-void
.end method


# virtual methods
.method public final A(II)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    return p2

    :cond_1
    div-int/lit8 p2, p2, 0xa

    return p2

    :cond_2
    div-int/lit8 p2, p2, 0x64

    return p2

    :cond_3
    div-int/lit16 p2, p2, 0x3e8

    return p2
.end method

.method public final A0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Y0:Landroid/media/AudioManager;

    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Y0:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-lez v2, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->f(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->f(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->f(F)V

    :goto_0
    return-void
.end method

.method public final B(II)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    return p2

    :cond_1
    div-int/lit8 p2, p2, 0xa

    return p2

    :cond_2
    div-int/lit8 p2, p2, 0x64

    return p2

    :cond_3
    div-int/lit16 p2, p2, 0x3e8

    return p2
.end method

.method public final B0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g1:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method public final C0()V
    .locals 3

    sget-boolean v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t1:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h1:Z

    sput-boolean v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t1:Z

    new-instance v0, Lxlc;

    invoke-direct {v0, p0}, Lxlc;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final D(I)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-le p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G0:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0:Ljava/util/Calendar;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0:Ljava/util/Calendar;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G0:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I0:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J0:Z

    const-string v2, " "

    const-string v3, "%d"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$string;->day_time_picker:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I0:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I0:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$string;->day_time_picker:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final E0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentSelectedValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "00"

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final F()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final F0(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%02d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final G(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V:I

    int-to-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final G0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A0:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->T(I)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B0:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D0:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S(I)I

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M(I)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K0(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public H0(F)I
    .locals 8

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t0:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    const/high16 v1, -0x1000000

    and-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xff0000

    and-int v4, v0, v3

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int v6, v0, v5

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    and-int/2addr v3, p0

    ushr-int/lit8 v3, v3, 0x10

    and-int/2addr v5, p0

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-float v7, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v2, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v4, p0

    float-to-int p0, v4

    shl-int/lit8 p1, v1, 0x18

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public final I(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v1, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v4, v0

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr p4, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p4, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v2

    const/4 v2, 0x0

    cmpl-float v4, p0, v2

    if-lez v4, :cond_4

    mul-float v2, p0, v3

    :cond_4
    add-float/2addr p3, p4

    add-float/2addr p3, v1

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public I0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v0}, Lkx3;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v1}, Lkx3;->k()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v2}, Lkx3;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v3}, Lkx3;->getFixedFlingValue()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0()V

    :goto_0
    return-void
.end method

.method public final J(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual {v7, v10}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    iget v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D:F

    const/4 v6, 0x0

    cmpl-float v1, v0, v6

    if-lez v1, :cond_1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_1
    iget v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    cmpl-float v1, v0, v6

    if-lez v1, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v15

    :goto_2
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v16, v4

    move/from16 v4, p5

    move/from16 v17, v5

    move/from16 v5, p6

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawEditBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFILjava/lang/String;)V

    iget-boolean v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_4

    if-nez v13, :cond_4

    iget v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    if-ne v10, v0, :cond_4

    invoke-virtual {v7, v8, v9, v11, v12}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_3

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move/from16 v1, v17

    const/4 v0, 0x0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    iget-object v2, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    iget-object v2, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v14, v2, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v12, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v3

    cmpl-float v3, v1, v0

    if-lez v3, :cond_6

    mul-float v6, v1, v5

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    add-float v1, v11, v4

    add-float/2addr v1, v2

    iget-boolean v2, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-eqz v2, :cond_15

    iget v2, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Z0:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_15

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, p7, v2

    sub-float/2addr v3, v2

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a1:I

    div-int/lit8 v5, v4, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v2, :cond_7

    rsub-int/lit8 v5, v5, 0x0

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    goto :goto_6

    :cond_7
    if-ne v2, v10, :cond_a

    const/4 v12, -0x1

    if-ne v13, v12, :cond_8

    move v10, v4

    goto :goto_4

    :cond_8
    neg-int v10, v4

    :goto_4
    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    if-ne v13, v12, :cond_9

    sub-int/2addr v10, v4

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_5
    int-to-float v4, v4

    goto :goto_6

    :cond_9
    add-int/2addr v10, v4

    neg-int v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_5

    :cond_a
    move v4, v0

    :goto_6
    sub-float/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->descent()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    add-float/2addr v10, v12

    div-float/2addr v10, v5

    add-float/2addr v10, v1

    int-to-float v12, v2

    const v16, 0x3e4ccccd    # 0.2f

    mul-float v12, v12, v16

    const v17, 0x3dcccccd    # 0.1f

    if-gtz v13, :cond_b

    sub-float v12, v12, v17

    goto :goto_7

    :cond_b
    add-float v12, v12, v17

    :goto_7
    mul-float v16, v16, v3

    if-gtz v13, :cond_c

    add-float v12, v12, v16

    goto :goto_8

    :cond_c
    sub-float v12, v12, v16

    :goto_8
    const/high16 v16, 0x43d20000    # 420.0f

    mul-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v11

    if-gtz v13, :cond_d

    const/high16 v16, 0x430c0000    # 140.0f

    goto :goto_9

    :cond_d
    const/high16 v16, -0x3cf40000    # -140.0f

    :goto_9
    mul-float v12, v12, v16

    iget-object v5, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    iget-object v5, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G:Landroid/graphics/Camera;

    invoke-virtual {v5, v0, v0, v11}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G:Landroid/graphics/Camera;

    invoke-virtual {v0, v12}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G:Landroid/graphics/Camera;

    iget-object v5, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    neg-float v11, v10

    invoke-virtual {v0, v5, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    mul-int/lit8 v0, v2, 0x54

    if-gtz v13, :cond_e

    rsub-int v0, v0, 0x129

    goto :goto_a

    :cond_e
    rsub-int v0, v0, 0xd5

    :goto_a
    const/high16 v4, 0x42a80000    # 84.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    if-gtz v13, :cond_f

    sub-int/2addr v0, v3

    goto :goto_b

    :cond_f
    add-int/2addr v0, v3

    :goto_b
    const/16 v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v4, 0x4b

    if-gt v0, v4, :cond_10

    const/4 v0, 0x0

    :cond_10
    iget v4, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    and-int/2addr v3, v4

    add-int/lit16 v4, v3, -0x99

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v2, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v0, v2

    if-nez v0, :cond_11

    const/4 v10, 0x1

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    :goto_c
    iget-boolean v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M:Z

    if-eqz v0, :cond_12

    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_12
    iget-object v0, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    if-eqz v10, :cond_13

    iget-object v2, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N:Landroid/graphics/Typeface;

    goto :goto_d

    :cond_13
    iget-object v2, v7, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O:Landroid/graphics/Typeface;

    :goto_d
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v8, v14, v6, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_14

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_14
    return-void

    :cond_15
    invoke-virtual {v8, v14, v6, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_16

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_16
    return-void
.end method

.method public final J0()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method

.method public final K(F)V
    .locals 10

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N:Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O:Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k0:Landroid/graphics/Typeface;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_6
    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    int-to-float v2, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    move v6, v4

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v5, v3, :cond_a

    invoke-virtual {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0, v8, v2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->v(Landroid/text/TextPaint;Ljava/lang/String;FF)F

    move-result v8

    cmpg-float v9, v8, v6

    if-gez v9, :cond_9

    cmpg-float v6, v8, v7

    if-gtz v6, :cond_8

    move v6, v7

    goto :goto_4

    :cond_8
    move v6, v8

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    cmpl-float p1, v6, v4

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_5
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    return-void

    :cond_c
    :goto_6
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    return-void
.end method

.method public final K0(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->b(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-interface {p1, p0, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->a(II)V

    :cond_0
    return-void
.end method

.method public final L(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final L0(I)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public final M(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final M0(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N0(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D0:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L0(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final N()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final N0(Ljava/lang/String;I)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x834

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A(II)I

    move-result v1

    if-lt p2, v0, :cond_1

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final O()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v3, :cond_0

    if-eq v2, p0, :cond_0

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v3, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public P()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v0}, Lkx3;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkx3;->g(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object v0, v0, Lkx3;->y:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object p0, p0, Lkx3;->y:Ljv9;

    invoke-virtual {p0}, Ljv9;->c()V

    :cond_1
    return-void
.end method

.method public final Q(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-eqz v2, :cond_2

    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z0:Z

    if-eqz p1, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public R(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A0:Z

    const-string v2, "%d"

    const-string v3, "%02d"

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E0:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B0:Z

    if-eqz p0, :cond_2

    :goto_0
    move-object v2, v3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_4

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final S(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p1, p0, :cond_0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final T(I)I
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final U(I)I
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final V(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "%02d"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-gt p1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v4, p1

    if-nez v4, :cond_2

    const-string p1, "12"

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_4
    if-gt p1, v2, :cond_5

    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    :goto_0
    return-void
.end method

.method public final W(I)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "%02d"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-gt p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v1, v0, 0xa

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    goto :goto_0

    :cond_3
    if-gt p1, v1, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0(IZ)V

    :goto_0
    return-void
.end method

.method public final X(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public final Y(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x43

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v0, 0x10

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x29

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b0(C)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final Z(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V(I)V

    :goto_0
    return-void
.end method

.method public final a0(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    const/16 v1, 0x3b

    const-string v2, "%02d"

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public abortFinishScroll()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v0}, Lkx3;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v0}, Lkx3;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object v0, v0, Lkx3;->y:Ljv9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object p0, p0, Lkx3;->y:Ljv9;

    invoke-virtual {p0}, Ljv9;->c()V

    :cond_1
    return-void
.end method

.method public final b0(C)V
    .locals 1

    add-int/lit8 p1, p1, -0x30

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->X(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Z(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c0(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0(ILjava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public final d0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d1:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h1:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h1:Z

    sput-boolean v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t1:Z

    return-void
.end method

.method public drawEditBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p6, :cond_1

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p6

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    sub-float/2addr p4, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p4, v1

    add-float/2addr p3, p4

    add-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p4

    add-float/2addr p4, p3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    add-float/2addr p3, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float v1, p0, p2

    add-float/2addr p6, v1

    mul-float/2addr v0, p2

    add-float/2addr p6, v0

    sub-float/2addr p4, p2

    add-float v0, p3, p2

    move-object p0, p1

    move p1, v1

    move p2, p4

    move p3, p6

    move p4, v0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final e0(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e:Z

    invoke-static {}, Lolb;->l0()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J0:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$color;->os_wheel_text_select_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s0:I

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p1, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v6

    iput v6, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t0:I

    invoke-static {p1, v4, v5}, Lolb;->m(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u0:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K0:I

    sget v4, Lcom/transsion/widgetslib/R$attr;->wheelWidth:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v4, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x0:I

    sget v4, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_first:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o0:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_select:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->v0:I

    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height_select:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->w0:I

    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    int-to-float v4, v4

    const v5, 0x3faf5c29    # 1.37f

    mul-float/2addr v4, v5

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t0:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q1:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i:F

    const/4 p2, 0x5

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l:Z

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o:I

    sget p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s1:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n:F

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m:I

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p:F

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r:F

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s:Z

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t:I

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J:I

    const/high16 p2, 0x3f400000    # 0.75f

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O0:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P0:F

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a1:I

    return-void
.end method

.method public final f0(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Y0:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Y0:Landroid/media/AudioManager;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A0()V

    return-void
.end method

.method public finishEditing()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d0()V

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f1:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public forceFinishScroll()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v0}, Lkx3;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkx3;->g(Z)V

    :cond_0
    return-void
.end method

.method public final g0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->T:I

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Lkx3;

    invoke-direct {v1, p1, v0}, Lkx3;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G:Landroid/graphics/Camera;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N0:F

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M0:Landroid/text/TextPaint;

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i1:F

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j1:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J0()V

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d1:Landroid/view/inputmethod/InputMethodManager;

    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object p1, p1, Lkx3;->y:Ljv9;

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$a;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {p1, v0}, Lf43;->b(Lf43$r;)Lf43;

    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetContentDescriptionOverride"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c1:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurvedArcDirection()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J:I

    return p0
.end method

.method public getCurvedArcDirectionFactor()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K:F

    return p0
.end method

.method public getCurvedBoldForSelectedItemTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getCurvedNormalItemTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getCurvedRefractRatio()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    return p0
.end method

.method public getCustomContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c1:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    return-object p0
.end method

.method public getDividerCap()Landroid/graphics/Paint$Cap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public getDividerColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m:I

    return p0
.end method

.method public getDividerHeight()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n:F

    return p0
.end method

.method public getDividerPaddingForWrap()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p:F

    return p0
.end method

.method public getDividerType()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o:I

    return p0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-gez p1, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineSpacing()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i:F

    return p0
.end method

.method public getOnItemSelectedListener()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$f;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOnWheelChangedListener()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    return-object p0
.end method

.method public getPlayVolume()F
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->a()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getRefractRatio()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    return p0
.end method

.method public getSecondPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSelectedItemData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    return p0
.end method

.method public getSelectedPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSelectedRectColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t:I

    return p0
.end method

.method public getTextAlign()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k:I

    return p0
.end method

.method public getTextBoundaryMargin()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    return p0
.end method

.method public getTextSecondColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t0:I

    return p0
.end method

.method public getTextSelectColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    return p0
.end method

.method public getTextSizeSecond()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    return p0
.end method

.method public getTextSizeSelect()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleItems()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    return p0
.end method

.method public getWheelHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    return p0
.end method

.method public final h0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public final i0()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b0:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b0:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    if-eqz v1, :cond_0

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->d(I)V

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->v0(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public isAutoFitTextSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e:Z

    return p0
.end method

.method public isCurved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    return p0
.end method

.method public isCurvedBoldForSelectedItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M:Z

    return p0
.end method

.method public isCyclic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    return p0
.end method

.method public isDrawSelectedRect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s:Z

    return p0
.end method

.method public isPositionInRange(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResetSelectedPosition()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q:Z

    return p0
.end method

.method public isShowDivider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l:Z

    return p0
.end method

.method public isSoundEffect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0:Z

    return p0
.end method

.method public isYearDays()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z0:Z

    return p0
.end method

.method public final j0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

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

.method public final k0()Z
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v0

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final l0()Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    check-cast v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v3, v3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final m0(I)Z
    .locals 2

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E0:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_0

    const/16 p0, 0x17

    if-gt p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-lt p1, v1, :cond_2

    const/16 p0, 0xc

    if-gt p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public final n0(IZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G0()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v3, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B0:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t1:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h1:Z

    if-eqz p2, :cond_0

    invoke-virtual {v2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F0(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E0()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic o0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d1:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d1:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000006

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->e()V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d1:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K0:I

    move-object/from16 v9, p1

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v10

    iget v0, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    int-to-float v11, v10

    div-float/2addr v0, v11

    float-to-int v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v12, v1, v2

    div-float/2addr v1, v11

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x4

    shr-int/lit8 v3, v1, 0x1

    sub-int/2addr v0, v3

    add-int/2addr v1, v0

    int-to-float v13, v1

    mul-float v14, v11, v2

    sub-float v1, v12, v14

    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    sub-float v15, v1, v2

    iget v1, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v8, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K(F)V

    iget-boolean v1, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-eqz v1, :cond_8

    move v1, v0

    :goto_1
    int-to-float v3, v1

    cmpg-float v3, v3, v13

    if-gez v3, :cond_6

    mul-int v3, v1, v10

    int-to-float v3, v3

    add-float/2addr v3, v15

    sub-float v4, v12, v3

    sub-float/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v14

    if-gez v4, :cond_5

    iget v4, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b1:I

    if-nez v4, :cond_2

    sub-float v4, v3, v14

    float-to-int v4, v4

    iput v4, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b1:I

    :cond_2
    iget v4, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b1:I

    if-eqz v4, :cond_4

    int-to-float v5, v4

    sub-float/2addr v3, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Z0:F

    cmpl-float v2, v4, v2

    if-nez v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Z0:F

    :cond_3
    move v12, v0

    move v14, v1

    move/from16 v16, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v12, v0

    move v14, v1

    move/from16 v16, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, -0x1

    goto :goto_2

    :goto_3
    int-to-float v0, v12

    cmpg-float v0, v0, v13

    if-gez v0, :cond_7

    mul-int v0, v12, v10

    int-to-float v0, v0

    add-float v4, v15, v0

    sub-int v6, v12, v14

    iget-object v2, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v12

    move v5, v11

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    move v7, v0

    :goto_4
    int-to-float v0, v7

    cmpg-float v0, v0, v13

    if-gez v0, :cond_a

    mul-int v0, v7, v10

    int-to-float v0, v0

    add-float v4, v15, v0

    sub-float v0, v12, v4

    sub-float/2addr v0, v14

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v14

    if-gez v1, :cond_9

    div-float/2addr v0, v14

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    iget v3, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v5, v3

    div-float/2addr v2, v5

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iget-object v1, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v8, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H0(F)I

    move-result v0

    iget-object v1, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v7

    move v5, v11

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V

    goto :goto_5

    :cond_9
    move/from16 v17, v7

    iget-object v2, v8, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v17

    move v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V

    :goto_5
    add-int/lit8 v7, v17, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Y(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->v:I

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->w:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/lit8 p3, p2, 0x2

    sub-int p3, p1, p3

    int-to-float p3, p3

    iget p4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z()V

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y(I)I

    move-result p1

    if-lez p1, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object/from16 v4, p1

    goto/16 :goto_5

    :cond_2
    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e1:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0()V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v5, 0x2

    if-eq v1, v3, :cond_e

    if-eq v1, v5, :cond_4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_e

    goto/16 :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    iput-boolean v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d0:F

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0:F

    sub-float/2addr v4, v1

    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_6

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q0:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gez v1, :cond_7

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    :cond_7
    iput-boolean v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R0:Z

    :cond_8
    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    add-float/2addr v1, v4

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V0:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    if-eqz v2, :cond_9

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->T0:F

    goto :goto_0

    :cond_9
    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W0:F

    :goto_0
    if-eqz v2, :cond_a

    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U0:F

    goto :goto_1

    :cond_a
    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->X0:F

    :goto_1
    cmpl-float v1, v1, v4

    if-lez v1, :cond_b

    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    :cond_b
    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    iput v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    :cond_c
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    if-eqz v1, :cond_d

    invoke-interface {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->c(I)V

    :cond_d
    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->w0(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0()V

    goto/16 :goto_4

    :cond_e
    iput-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    iget v6, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S:I

    int-to-float v6, v6

    const/16 v7, 0x3e8

    invoke-virtual {v1, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_f

    iget-boolean v6, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    if-nez v6, :cond_f

    goto :goto_2

    :cond_f
    cmpl-float v6, v1, v7

    if-eqz v6, :cond_13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->T:I

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_10

    iget-boolean v6, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R0:Z

    if-eqz v6, :cond_13

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P()V

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    float-to-int v10, v4

    neg-float v1, v1

    float-to-int v12, v1

    iget v15, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V:I

    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/lit8 v17, v4, 0xa

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v8 .. v17}, Lkx3;->f(IIIIIIIII)V

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v1}, Lkx3;->getFinalY()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {v0, v2, v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0(ZF)F

    move-result v1

    iput v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v4, v1}, Lkx3;->setFixedFlingValue(F)V

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    cmpl-float v4, v2, v7

    if-lez v4, :cond_11

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    int-to-float v7, v4

    :cond_11
    invoke-virtual {v1, v2, v7, v3}, Lkx3;->m(FFZ)V

    goto/16 :goto_3

    :cond_12
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {v1}, Lkx3;->getFinalY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5, v2}, Lkx3;->m(FFZ)V

    goto :goto_3

    :cond_13
    :goto_2
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object v1, v1, Lkx3;->y:Ljv9;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lf43;->h()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget-object v1, v1, Lkx3;->y:Ljv9;

    invoke-virtual {v1}, Ljv9;->c()V

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f0:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x78

    cmp-long v1, v8, v10

    if-gtz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->w:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/2addr v4, v5

    if-gt v1, v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k0()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B0()V

    return v3

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    if-nez v1, :cond_16

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/2addr v4, v5

    if-le v1, v4, :cond_16

    goto :goto_4

    :cond_16
    int-to-float v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0(ZF)F

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z0()V

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    cmpl-float v4, v2, v7

    if-lez v4, :cond_17

    iget v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    int-to-float v7, v4

    :cond_17
    invoke-virtual {v1, v2, v7, v3}, Lkx3;->m(FFZ)V

    :cond_18
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0()V

    goto :goto_4

    :cond_19
    iput-boolean v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0:F

    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f0:J

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    invoke-static {v1}, Lolb;->B0(Landroid/graphics/Paint;)F

    move-result v1

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q0:I

    iput-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R0:Z

    :goto_4
    return v3

    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lolb;->S(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :cond_0
    return-void
.end method

.method public p0(ZF)F
    .locals 9

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    add-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->w(F)F

    move-result v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    add-float/2addr v1, p2

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    cmpl-float v4, p2, v0

    if-lez v4, :cond_1

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v2, v3

    :cond_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    float-to-int v5, p0

    float-to-int v7, p2

    const/16 v8, 0x15e

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lkx3;->l(IIIII)V

    :cond_4
    return p2
.end method

.method public playSoundEffect()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A0()V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->d()V

    :cond_0
    return-void
.end method

.method public final q0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o1:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;->onDialogDismiss()V

    :cond_0
    return-void
.end method

.method public final r0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p1:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;->a(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final s0()V
    .locals 5

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b0:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-lez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-nez v3, :cond_2

    :cond_1
    invoke-interface {v2, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->a(II)V

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u0(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->playSoundEffect()V

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public safeResetScrollOffsetY()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d0:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 13
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 14
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 15
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 16
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v0, v2

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 17
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 18
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    .line 19
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d0:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0:F

    .line 20
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    .line 21
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    .line 22
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s0()V

    return-void
.end method

.method public safeResetScrollOffsetY(I)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d0:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :cond_0
    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-float p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e0:F

    .line 6
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    .line 7
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d0:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c0:F

    .line 8
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    .line 9
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    .line 10
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s0()V

    return-void
.end method

.method public safeResetScrollOffsetY(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    return-void
.end method

.method public set24HoursFormat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->E0:Z

    return-void
.end method

.method public setAmPmWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->S0:Z

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setNeedMaxPullLimit(Z)V

    return-void
.end method

.method public setAutoFitTextSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->e:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBlackMode()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_black_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K0:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_text_primary_ims_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    return-void
.end method

.method public setCurved(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirection(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirectionFactor(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedBoldForSelectedItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->M:Z

    return-void
.end method

.method public setCurvedBoldForSelectedItemTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->N:Landroid/graphics/Typeface;

    return-void
.end method

.method public setCurvedNormalItemTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->O:Landroid/graphics/Typeface;

    return-void
.end method

.method public setCurvedRefractRatio(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setRefractRatio(F)V

    return-void
.end method

.method public setCustomContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c1:Ljava/lang/String;

    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceFinishScroll()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z()V

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h0:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z()V

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY()V

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    :cond_4
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDayWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->D0:Z

    return-void
.end method

.method public setDividerCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q:Landroid/graphics/Paint$Cap;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerColor(I)V

    return-void
.end method

.method public setDividerHeight(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerHeight(FZ)V

    return-void
.end method

.method public setDividerHeight(FZ)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n:F

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerPaddingForWrap(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerPaddingForWrap(FZ)V

    return-void
.end method

.method public setDividerPaddingForWrap(FZ)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p:F

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerType(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawSelectedRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEditingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g1:Z

    return-void
.end method

.method public setHourWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->A0:Z

    return-void
.end method

.method public setLineSpacing(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setLineSpacing(FZ)V

    return-void
.end method

.method public setLineSpacing(FZ)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i:F

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    .line 5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinuteWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->B0:Z

    return-void
.end method

.method public setMonthList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I0:Ljava/util/List;

    return-void
.end method

.method public setNeedMaxPullLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V0:Z

    return-void
.end method

.method public setOnDialogDismissListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->o1:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$d;

    return-void
.end method

.method public setOnInputInvalidListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p1:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$e;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$f;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    return-void
.end method

.method public setPlayVolume(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->f(F)V

    :cond_0
    return-void
.end method

.method public setRefractRatio(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->L:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setResetSelectedPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->Q:Z

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(IZ)V

    return-void
.end method

.method public setSelectedItemPosition(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(IZI)V

    return-void
.end method

.method public setSelectedItemPosition(IZI)V
    .locals 7

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_2
    if-eqz p2, :cond_4

    .line 7
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    float-to-int v3, p1

    if-lez p3, :cond_3

    :goto_0
    move v6, p3

    goto :goto_1

    :cond_3
    const/16 p3, 0xfa

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lkx3;->l(IIIII)V

    .line 8
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0()V

    goto :goto_2

    :cond_4
    int-to-float p2, v5

    .line 9
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G(F)V

    .line 10
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    .line 11
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t0(Ljava/lang/Object;I)V

    .line 12
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    if-eqz p1, :cond_5

    .line 13
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->b(I)V

    .line 14
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-interface {p1, p2, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;->a(II)V

    .line 15
    :cond_5
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x0(I)V

    .line 16
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0()V

    :goto_2
    return-void
.end method

.method public setSelectedRectColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedRectColorRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedRectColor(I)V

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSoundEffect(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->c()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f0(Landroid/content/Context;)V

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n0:Z

    return-void
.end method

.method public setSoundEffectResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->b(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextAlign(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->J0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBoundaryMargin(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextBoundaryMargin(FZ)V

    return-void
.end method

.method public setTextBoundaryMargin(FZ)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->H(F)F

    move-result p1

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSecondColor(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t0:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSizeSecond(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p0:I

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    const v1, 0x3faf5c29    # 1.37f

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSizeSelect(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->q0:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->d:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceFinishScroll()V

    .line 4
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i0:Z

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isBold()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j0:Landroid/graphics/Typeface;

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k0:Landroid/graphics/Typeface;

    goto :goto_0

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j0:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    .line 9
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k0:Landroid/graphics/Typeface;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C()V

    .line 13
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x()V

    .line 14
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g0:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    .line 15
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k1:F

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->l1:F

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->t(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->K0:I

    return-void
.end method

.method public setWheelHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWheelWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->x0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setYearDays(Ljava/util/Calendar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->G0:Ljava/util/Calendar;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->z0:Z

    return-void
.end method

.method public setYearWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->C0:Z

    return-void
.end method

.method public final t(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public t0(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final u(FF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    new-array v1, v0, [F

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

    new-instance v2, Ls53;

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Ls53;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$b;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$b;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v0

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->n1:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public u0(II)V
    .locals 0

    return-void
.end method

.method public final v(Landroid/text/TextPaint;Ljava/lang/String;FF)F
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v2, p4, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->i1:F

    sub-float v4, p3, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v3, v5

    sub-float v6, p3, v6

    mul-float/2addr v3, v5

    sub-float/2addr p3, v3

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j1:F

    sub-float/2addr p3, p0

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_1

    return v2

    :cond_1
    cmpl-float p0, v4, v0

    if-lez p0, :cond_2

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_2

    return v4

    :cond_2
    cmpl-float p0, v6, v0

    if-lez p0, :cond_3

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_3

    return v6

    :cond_3
    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_4
    :goto_0
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public v0(F)V
    .locals 0

    return-void
.end method

.method public final w(F)F
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    neg-int p0, v1

    int-to-float p0, p0

    :goto_0
    sub-float/2addr p0, p1

    return p0

    :cond_0
    int-to-float p0, v1

    goto :goto_0

    :cond_1
    neg-float p0, p1

    return p0
.end method

.method public w0(I)V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->k:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->F:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u:I

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->f:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->g:I

    return-void
.end method

.method public x0(I)V
    .locals 0

    return-void
.end method

.method public final y(I)I
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->a0:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final y0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->R:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->j:Z

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->V:I

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->y0:I

    mul-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->W:I

    return-void
.end method

.method public z0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->U:Lkx3;

    invoke-virtual {v0}, Lkx3;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m1:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
