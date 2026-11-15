.class public Lcom/transsion/widgetslib/view/damping/HeaderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "HeaderHelper"


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/transsion/widgetslib/view/OSLoadingView;

.field public d:Landroid/widget/TextView;

.field public e:Ljava/lang/Runnable;

.field public f:F

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Landroid/view/View;

.field public m:Landroid/animation/ValueAnimator;

.field public final n:Landroid/content/Context;

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->j:Z

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->n:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->n()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->i:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->t(F)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->u(F)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/view/damping/HeaderHelper;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->w(I)V

    return-void
.end method


# virtual methods
.method public getLayoutHeader()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method

.method public getTextRefreshing()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public j()V
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->i:Z

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->t(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->i:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public l(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final m(Landroid/view/MotionEvent;)V
    .locals 3

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
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->w(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_down_pull_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->u(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_release_for_refresh:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->s()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h:F

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_4

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k:Z

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refreshing:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    new-instance v0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->s()V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    new-instance p1, Lcom/transsion/widgetslib/view/damping/HeaderHelper$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$3;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    if-nez p1, :cond_5

    new-instance p1, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->f:F

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->g:F

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_damping_layout_loading_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->b:I

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->f:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->f:F

    return-void
.end method

.method public o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k:Z

    return p0
.end method

.method public p()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->v()V

    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->damping_text_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget v0, Lcom/transsion/widgetslib/R$id;->os_loading_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->b:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/view/OSLoadingView;->setPullPercent(F)V

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->w(I)V

    return-void
.end method

.method public r(F)V
    .locals 1

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->i:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->t(F)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->w(I)V

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->u(F)V

    return-void
.end method

.method public setHeaderLayoutBg(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setHeaderLayoutBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHeaderLayoutBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o:I

    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$a;)V
    .locals 0

    return-void
.end method

.method public setRefreshEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->j:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getTextRefreshing()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getTextRefreshing()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final t(F)V
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->n:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$anim;->os_damping_collapse:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/HeaderHelper$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$a;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper$b;-><init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o:I

    int-to-float v2, v2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    const/4 p1, 0x1

    aput v2, v0, p1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final u(F)V
    .locals 7

    :try_start_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->a:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, p1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    iget v3, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->g:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-virtual {v2, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->setPullPercent(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    float-to-double v3, v0

    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d:Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->f:F

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->p:Ljava/lang/String;

    const-string v0, "refresh title layout error"

    invoke-static {p1, v0, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->k(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final w(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->o:I

    if-ne p1, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
