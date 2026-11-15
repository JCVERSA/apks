.class public Lcom/transsion/widgetslib/view/damping/DampingLayout;
.super Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/DampingLayout$h;,
        Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final p0:Ljava/lang/String; = "DampingLayout"


# instance fields
.field public E:I

.field public F:I

.field public G:Lcom/transsion/widgetslib/view/LoadingView;

.field public H:Landroid/widget/TextView;

.field public I:Ljava/lang/Runnable;

.field public J:F

.field public K:F

.field public L:F

.field public M:Z

.field public N:Z

.field public O:Landroid/view/View;

.field public P:Ls53;

.field public Q:Landroid/animation/ValueAnimator;

.field public R:Landroid/animation/ValueAnimator;

.field public S:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

.field public T:I

.field public U:Z

.field public V:I

.field public W:I

.field public final a0:I

.field public final b0:I

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:Z

.field public i0:Landroid/view/View;

.field public final j0:Landroid/graphics/Rect;

.field public k0:Landroid/animation/ValueAnimator;

.field public l0:Landroid/app/Activity;

.field public m0:F

.field public n0:I

.field public final o0:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->j0:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->o0:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->DampingLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_mode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->T:I

    .line 9
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_use_scene:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->n0:I

    .line 10
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_margin_right:I

    const/high16 p3, 0x40c00000    # 6.0f

    const/4 v1, 0x1

    .line 11
    invoke-static {v1, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0:I

    .line 13
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_margin_top:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->b0:I

    .line 14
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_damping_bar_width:I

    const/high16 p3, 0x40400000    # 3.0f

    .line 15
    invoke-static {v1, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0:I

    .line 17
    sget p2, Lcom/transsion/widgetslib/R$styleable;->DampingLayout_os_limit_damping_edge:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->U:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->U()V

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/transsion/widgetslib/view/damping/DampingLayout;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->V:I

    return p0
.end method

.method public static bridge synthetic E(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Lcom/transsion/widgetslib/view/LoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->j0:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic J(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->M:Z

    return-void
.end method

.method public static bridge synthetic K(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->N:Z

    return-void
.end method

.method public static bridge synthetic L(Lcom/transsion/widgetslib/view/damping/DampingLayout;Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    return-void
.end method

.method public static bridge synthetic M(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->S(F)V

    return-void
.end method

.method public static bridge synthetic N(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->W()V

    return-void
.end method

.method public static bridge synthetic O(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0()V

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->b0(F)V

    return-void
.end method

.method public static bridge synthetic Q(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->d0()V

    return-void
.end method

.method private U()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->J:F

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->K:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_view:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->F:I

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->J:F

    int-to-float v1, v1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->J:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->V:I

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->W:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private getBarLayoutAttach()Landroid/view/ViewGroup;
    .locals 5

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->n0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_5
    :goto_2
    return-object v2
.end method


# virtual methods
.method public final R(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public final S(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Y(F)V

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->L:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->M:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0()V

    :cond_0
    return-void
.end method

.method public final T(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->L:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_down_pull_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->L:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->b0(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_release_for_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Z()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->L:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_5

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->N:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refreshing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/LoadingView;->start()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Z()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I:Ljava/lang/Runnable;

    if-nez p1, :cond_4

    new-instance p1, Lcom/transsion/widgetslib/view/damping/DampingLayout$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$3;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I:Ljava/lang/Runnable;

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final V()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$f;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$f;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final W()V
    .locals 2

    sget-boolean v0, Lolb;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->S:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->S:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$b;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->S:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {v1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->X()V

    return-void
.end method

.method public final X()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowTop()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$g;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$g;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->getEdgeGlowBottom()Landroid/widget/EdgeEffect;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$a;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    :cond_1
    return-void
.end method

.method public final Y(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->h0:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->j0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->V:I

    if-gt v0, v1, :cond_3

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->j0:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->V:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v1, v0, :cond_3

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->j0:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->d0()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->j0:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public final Z()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    new-array v1, v0, [F

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v0

    const/4 v0, 0x1

    aput v3, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/damping/DampingLayout$c;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$c;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final a0()V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_1

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->P:Ls53;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$d;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$d;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/widgetslib/view/damping/DampingLayout$e;

    invoke-direct {v4, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$e;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v1, v0, v4

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public abortRefreshing()V
    .locals 3

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->L:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->M:Z

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->N:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->M:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    return-void
.end method

.method public final b0(F)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, v0, v2

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->J:F

    cmpl-float v3, p1, v1

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->F:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->K:F

    cmpl-float v3, p1, v1

    if-lez v3, :cond_2

    move p1, v1

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/widgetslib/view/damping/DampingLayout;->p0:Ljava/lang/String;

    const-string v0, "refreshTitleLayout, error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final c0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final d0()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->o0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->S:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->N:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->T:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->T(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->draw(Landroid/graphics/Canvas;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-lez v1, :cond_e

    if-ge v1, v0, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->e0:I

    if-ne v4, v0, :cond_1

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->f0:I

    if-ne v4, v1, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->getBarLayoutAttach()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    new-instance v5, Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/transsion/widgetslib/view/damping/DampingLayout$ScrollBarView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    const-string v6, "#7FA1A1A1"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->n0:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0:I

    sub-int/2addr p1, v4

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0:I

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-static {}, Lolb;->l0()Z

    move-result v6

    if-eqz v6, :cond_4

    neg-int p1, p1

    :cond_4
    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->m0:F

    goto/16 :goto_4

    :cond_5
    new-array v4, v5, [I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v7, v4, v3

    aget v4, v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0:I

    sub-int/2addr v8, v9

    invoke-static {}, Lolb;->l0()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    if-eqz v9, :cond_7

    const/16 v9, 0x1e

    if-lt p1, v9, :cond_7

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Loh1;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {p1}, Luoc;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v5, :cond_6

    invoke-static {p1}, Lvoc;->a(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    goto :goto_0

    :cond_6
    move p1, v3

    :goto_0
    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0:I

    add-int/2addr v7, v9

    iget v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->a0:I

    add-int/2addr v7, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v7, p1

    goto :goto_1

    :cond_7
    move p1, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v9, "dimen"

    const-string v10, "android"

    const-string v11, "status_bar_height"

    invoke-virtual {v7, v11, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_2

    :cond_8
    move v7, v3

    :goto_2
    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActionBar;->getHeight()I

    move-result v9

    goto :goto_3

    :cond_9
    move v9, v3

    :goto_3
    sub-int v7, v4, v7

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iput v7, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->m0:F

    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->l0:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v7, v6, :cond_a

    int-to-float v4, v4

    iput v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->m0:F

    sub-int/2addr v8, p1

    :cond_a
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    int-to-float v4, v8

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    :goto_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->W:I

    if-ge p1, v4, :cond_c

    if-le v4, v1, :cond_b

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->W:I

    :cond_b
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->W:I

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_c
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sub-int p1, v0, v1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->g0:I

    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int p1, v1, p1

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->b0:I

    mul-int/2addr v2, v5

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->d0:I

    if-gez p1, :cond_d

    iput v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->d0:I

    :cond_d
    iput v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->e0:I

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->f0:I

    new-instance p1, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->e0(I)V

    return-void

    :cond_e
    :goto_5
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->h0:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->h0:Z

    return-void
.end method

.method public final e0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->h0:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->g0:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->b0:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->d0:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->m0:F

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/LoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    return-object p0
.end method

.method public isRefreshing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->N:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onAttachedToWindow()V

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->T:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->n0:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;-><init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->W()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->T:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setFillViewport(Z)V

    new-instance v1, Ls53;

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Ls53;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->P:Ls53;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$layout;->os_damping_layout_title:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->E:I

    const/4 v6, -0x1

    invoke-virtual {v3, v2, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->O:Landroid/view/View;

    invoke-virtual {v3, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/transsion/widgetslib/R$id;->damping_text_loading:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    sget v1, Lcom/transsion/widgetslib/R$id;->loading_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/LoadingView;

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/LoadingView;->setAutoAnim(Z)V

    :cond_1
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->e0(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->d0()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->V()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->i0:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->k0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->R(Landroid/animation/Animator;)V

    :goto_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->c0:I

    return-void
.end method

.method public setDampingMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->T:I

    return-void
.end method

.method public setLimitDampingEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->U:Z

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/DampingLayout$h;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->H:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setUseScene(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout;->n0:I

    return-void
.end method
