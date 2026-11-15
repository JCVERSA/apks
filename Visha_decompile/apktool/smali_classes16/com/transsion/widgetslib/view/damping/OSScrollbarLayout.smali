.class public Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;
    }
.end annotation


# static fields
.field public static final STYLE_MODE_PAGE:I = 0x1

.field public static final STYLE_MODE_WIDGET:I = 0x2

.field public static final l0:Ljava/lang/String; = "OSScrollbarLayout"

.field public static m0:Ljava/lang/reflect/Method;

.field public static n0:Ljava/lang/reflect/Method;

.field public static o0:Ljava/lang/reflect/Method;


# instance fields
.field public A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field public B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field public C:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

.field public D:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

.field public E:I

.field public F:Z

.field public G:I

.field public H:I

.field public I:F

.field public J:I

.field public K:I

.field public L:Landroid/view/animation/Interpolator;

.field public M:Landroid/view/animation/Interpolator;

.field public N:Landroid/view/animation/Interpolator;

.field public O:I

.field public P:Z

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:F

.field public V:F

.field public W:F

.field public a0:F

.field public b:I

.field public b0:I

.field public c:I

.field public c0:F

.field public d:I

.field public d0:Landroid/animation/ValueAnimator;

.field public e:I

.field public e0:I

.field public f:I

.field public f0:I

.field public g:I

.field public g0:I

.field public h:I

.field public h0:I

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:F

.field public k:I

.field public final k0:Ljava/lang/Runnable;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Landroid/view/View;

.field public w:Landroid/animation/ValueAnimator;

.field public x:Landroid/animation/ValueAnimator;

.field public y:Landroid/animation/ValueAnimator;

.field public z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K:I

    const/high16 v1, -0x80000000

    .line 6
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0:I

    .line 7
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    .line 8
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Z(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K:I

    const/high16 v1, -0x80000000

    .line 15
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0:I

    .line 16
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    .line 17
    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    .line 18
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Z(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K:I

    const/high16 v1, -0x80000000

    .line 24
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0:I

    .line 25
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    .line 26
    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    .line 27
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Z(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J()V

    return-void
.end method

.method public static bridge synthetic B(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/widget/ListView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0(Landroid/widget/ListView;)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0(Landroid/view/View;II)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m0(F)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n0(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h0:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c0:F

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f0:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->S:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->U:F

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Q:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->T:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->V:F

    return p0
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->R:I

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    return-void
.end method

.method private setScrollbarPressed(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->u:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->u:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    :goto_0
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    :goto_1
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    if-eqz p1, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eqz p1, :cond_5

    move v2, v3

    :cond_5
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    if-ne v3, v0, :cond_6

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    if-ne v3, v1, :cond_6

    cmpl-float v3, v4, v2

    if-nez v3, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0()V

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Q:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->R:I

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->S:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->T:I

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->U:F

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->V:F

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz p1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0()V

    :cond_9
    :goto_3
    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->F:Z

    return-void
.end method

.method public static bridge synthetic x(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f0:I

    return-void
.end method

.method public static bridge synthetic y(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n:I

    return-void
.end method

.method public static bridge synthetic z(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I()V

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n0(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J()V

    goto :goto_0

    :cond_2
    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m0(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->s:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->s:I

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    if-gez v1, :cond_1

    move v1, p0

    :cond_1
    check-cast v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->c(II)V

    :cond_2
    return-void
.end method

.method public final K(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    if-ne v1, v0, :cond_1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_page_margin_right:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_widget_margin_right:I

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    if-ne v1, v0, :cond_2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_page_pressed_width:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_widget_pressed_width:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_min_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j:I

    return-void
.end method

.method public final L(IIF)I
    .locals 3

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    if-gtz p2, :cond_1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    int-to-float v0, p2

    div-float v0, p3, v0

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O(II)F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_2

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_2

    return v0

    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    if-le v0, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    return p1
.end method

.method public final M(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final O(II)F
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b:I

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lt p0, p2, :cond_1

    return v0

    :cond_1
    int-to-float p1, p1

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final P(I)F
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0xf0

    invoke-static {p0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final Q()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    instance-of v0, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c0()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$10;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c0()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$11;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$11;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/widget/ListView;)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final R(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0:Ljava/lang/String;

    const-string p2, "getFieldValue error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final S(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->L:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/widgetsmotionlibrary/R$interpolator;->os_motion_l1_easing_easein:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->L:Landroid/view/animation/Interpolator;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/widgetsmotionlibrary/R$interpolator;->os_motion_l1_easing_easeout:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M:Landroid/view/animation/Interpolator;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/widgetsmotionlibrary/R$interpolator;->os_motion_l1_easing_standard:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N:Landroid/view/animation/Interpolator;

    :cond_2
    return-void
.end method

.method public final T(Landroid/widget/ListView;)I
    .locals 2

    :try_start_0
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o0:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-class p0, Landroid/view/View;

    const-string v1, "computeVerticalScrollExtent"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o0:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o0:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public final U(Landroid/widget/ListView;)I
    .locals 2

    :try_start_0
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m0:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-class p0, Landroid/view/View;

    const-string v1, "computeVerticalScrollOffset"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m0:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m0:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V(Landroid/widget/ListView;)I
    .locals 2

    :try_start_0
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n0:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-class p0, Landroid/view/View;

    const-string v1, "computeVerticalScrollRange"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n0:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n0:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W(Landroid/view/View;)I
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollOffset()I

    move-result p0

    return p0

    :cond_1
    instance-of p1, p1, Landroid/widget/ListView;

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h0:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final X(Landroid/view/View;)I
    .locals 1

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result p0

    return p0

    :cond_1
    instance-of p1, p1, Landroid/widget/ListView;

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0:I

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final Y(F)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    cmpg-float v2, p1, v1

    const/4 v5, -0x1

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v3, v4

    :cond_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    if-eq v0, v4, :cond_4

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_7

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    if-eq v0, v5, :cond_6

    iput v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    neg-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_7

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I()V

    return-void
.end method

.method public final Z(Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_scrollbar_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O:I

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_strong:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_strong_hios:I

    invoke-static {p2, v1, v2}, Lolb;->m(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k:I

    invoke-static {p2}, Lcom/transsion/widgetthemes/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->P:Z

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K(I)V

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_margin_top:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d:I

    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_margin_right:I

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h:I

    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_width:I

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    sget v0, Lcom/transsion/widgetslib/R$styleable;->OSScrollbarLayout_os_scrollbar_style_mode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->S(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0()V

    return-void
.end method

.method public final a0()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$c;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$c;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->L:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$d;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$d;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$e;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_7

    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mTopGlow"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->R(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v2, :cond_2

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_2
    const-string v1, "mBottomGlow"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->R(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_3

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v1

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/widget/ListView;

    const-string v1, "mEdgeGlowTop"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->R(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v2, :cond_6

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_6
    const-string v1, "mEdgeGlowBottom"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->R(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-nez v1, :cond_7

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->C:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    if-nez v0, :cond_8

    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$a;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->C:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->A:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->D:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    if-nez v0, :cond_9

    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$b;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->D:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->D:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->C:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    sget-object p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0:Ljava/lang/String;

    const-string v1, "onEdgeEffect error"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    return-void
.end method

.method public final d0()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0()V

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v0

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->P:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_9

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    instance-of v10, v9, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    if-eqz v10, :cond_5

    check-cast v9, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    invoke-static {v9}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-static {v9}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;)I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    invoke-static {v9}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;)I

    move-result v10

    if-ltz v10, :cond_4

    invoke-static {v9}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;)I

    move-result v10

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v10, v8

    add-float/2addr v7, v10

    sub-int/2addr v9, v8

    int-to-float v8, v9

    add-float/2addr v8, v7

    :cond_5
    cmpl-float v7, v6, v7

    if-ltz v7, :cond_6

    cmpg-float v7, v6, v8

    if-gtz v7, :cond_6

    move v7, v1

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    if-eqz v5, :cond_9

    if-eqz v7, :cond_9

    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    iput v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j0:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N()V

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0:I

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_7
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setScrollbarPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    return v1

    :cond_9
    iget-boolean v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    if-eqz v5, :cond_1a

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o:I

    if-lez v0, :cond_14

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m:I

    if-lez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j0:F

    sub-float v0, p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j0:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N()V

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    const/4 v2, -0x1

    if-ne p1, v1, :cond_a

    cmpg-float v5, v0, v3

    if-gez v5, :cond_a

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    cmpl-float v6, v5, v3

    if-lez v6, :cond_a

    neg-float p1, v0

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    sub-float/2addr v5, p1

    iput v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I()V

    goto :goto_5

    :cond_a
    if-ne p1, v2, :cond_b

    cmpl-float p1, v0, v3

    if-lez p1, :cond_b

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    cmpl-float v5, p1, v3

    if-lez v5, :cond_b

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    sub-float/2addr v5, p1

    iput v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j0()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I()V

    :cond_b
    :goto_5
    cmpl-float p1, v0, v3

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m:I

    if-lez p1, :cond_c

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o:I

    int-to-float v5, v5

    int-to-float p1, p1

    div-float/2addr v5, p1

    goto :goto_6

    :cond_c
    move v5, v3

    :goto_6
    cmpl-float p1, v5, v3

    if-lez p1, :cond_14

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W(Landroid/view/View;)I

    move-result p1

    mul-float v6, v0, v5

    float-to-int v6, v6

    add-int/2addr v6, p1

    if-gez v6, :cond_d

    move v6, v4

    goto :goto_7

    :cond_d
    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o:I

    if-le v6, v7, :cond_e

    move v6, v7

    :cond_e
    :goto_7
    sub-int/2addr v6, p1

    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-lez v6, :cond_f

    if-nez v7, :cond_f

    :goto_8
    move v2, v4

    goto :goto_9

    :cond_f
    if-gez v6, :cond_10

    if-nez v2, :cond_10

    goto :goto_8

    :cond_10
    move v2, v6

    :goto_9
    if-eqz v2, :cond_13

    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    instance-of v8, v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_11

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_a

    :cond_11
    instance-of v8, v7, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v8, :cond_12

    check-cast v7, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    add-int/2addr p1, v2

    invoke-virtual {v7, v4, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->scrollTo(II)V

    goto :goto_a

    :cond_12
    instance-of p1, v7, Landroid/widget/ListView;

    if-eqz p1, :cond_13

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/AbsListView;->scrollListBy(I)V

    :cond_13
    :goto_a
    int-to-float p1, v2

    div-float/2addr p1, v5

    sub-float/2addr v0, p1

    cmpl-float p1, v0, v3

    if-eqz p1, :cond_14

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Y(F)V

    :cond_14
    return v1

    :cond_15
    if-eq v0, v1, :cond_16

    const/4 p1, 0x3

    if-ne v0, p1, :cond_19

    :cond_16
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setScrollbarPressed(Z)V

    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_17
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz p1, :cond_18

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0:I

    :cond_18
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h0()V

    :cond_19
    return v1

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e0()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0()V

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v0

    const/4 v0, 0x1

    aput v2, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N()V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final h0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c0:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->N()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$i;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$i;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$j;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$j;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hasScrollBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    return p0
.end method

.method public final i0(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0()V

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->F:Z

    if-eqz v0, :cond_2

    cmpl-float p1, v1, p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    :cond_4
    return-void
.end method

.method public final j0()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O(II)F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->P(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v3, v2, v1

    if-lez v3, :cond_5

    if-gtz v0, :cond_2

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v3, v0

    float-to-double v4, v2

    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr v3, v0

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    mul-double/2addr v4, v8

    double-to-float v0, v4

    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    return-void

    :cond_5
    :goto_3
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    return-void

    :cond_6
    :goto_4
    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W:F

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a0:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b0:I

    :cond_7
    return-void
.end method

.method public final k0(Landroid/widget/ListView;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->V(Landroid/widget/ListView;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->U(Landroid/widget/ListView;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->T(Landroid/widget/ListView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez v2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0:I

    int-to-float v0, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h0:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h0:I

    return-void
.end method

.method public final l0(Landroid/view/View;II)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-lez v4, :cond_11

    if-lez v0, :cond_11

    if-ge v0, p2, :cond_11

    if-nez v5, :cond_5

    goto/16 :goto_5

    :cond_5
    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n:I

    if-ne v6, p2, :cond_6

    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    if-ne v6, v0, :cond_6

    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->H:I

    if-ne v6, v4, :cond_6

    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J:I

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    if-ne v6, v7, :cond_6

    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K:I

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    if-ne v6, v7, :cond_6

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0(I)V

    return-void

    :cond_6
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-nez v6, :cond_7

    new-instance v6, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_7
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    instance-of v7, v6, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->u:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    goto :goto_3

    :cond_9
    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j:I

    int-to-float v7, v7

    :goto_3
    check-cast v6, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    iget v8, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k:I

    iget v9, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    iget v10, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    invoke-virtual {v6, v8, v7, v9, v10}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d(IFII)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O:I

    sub-int/2addr p1, v6

    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_b

    neg-int p1, p1

    :cond_b
    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/view/View;->setTranslationX(F)V

    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateScrollBar, mScrollRange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", scrollRange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->H:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_f

    if-eqz v1, :cond_c

    int-to-float p1, v0

    int-to-float v1, p2

    div-float v1, p1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_4
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, v1, :cond_d

    move p1, v1

    :cond_d
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->O:I

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, p1, :cond_e

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_f

    :cond_e
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    sub-int p1, p2, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->o:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d:I

    mul-int/2addr p1, v2

    sub-int p1, v0, p1

    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m:I

    if-gez p1, :cond_10

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m:I

    :cond_10
    iput p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->H:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K:I

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->s:I

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->i0(I)V

    return-void

    :cond_11
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz p1, :cond_13

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    sget-object p1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateScrollBar, mHasScrollBar: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mViewScrollBar:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    return-void
.end method

.method public final m0(F)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->L(IIF)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->s:I

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final n0(I)V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->G:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->L(IIF)I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->s:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f0()V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->t:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e0()V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->m0(F)V

    goto :goto_0

    :cond_1
    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->n0(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->p:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->r:I

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->q:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->s:I

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->I:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0(Landroid/view/View;II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->d0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->M(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->u:Z

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    instance-of v2, v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k:I

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j:I

    int-to-float p0, p0

    invoke-virtual {v1, v2, p0, p1, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d(IFII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshHasScrollBarSync()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k0(Landroid/widget/ListView;)V

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g0:I

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->h0:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0(Landroid/view/View;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOverScrollView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c0()V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$f;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$f;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$g;

    invoke-direct {v1, p0, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$g;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_2
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->E:I

    check-cast p1, Landroid/widget/ListView;

    new-instance v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$h;-><init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Q()V

    return-void
.end method

.method public setScrollbarStyleMode(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K(I)V

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->f:I

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->c:I

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->g:I

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->e:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->j:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->J:I

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->K:I

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->v:Landroid/view/View;

    instance-of v3, v2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->k:I

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d(IFII)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->X(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->W(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public updateScrollBar()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "awakenScrollBars"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->z:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->Q()V

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->l0:Ljava/lang/String;

    const-string v1, "invoke awakenScrollBars error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
