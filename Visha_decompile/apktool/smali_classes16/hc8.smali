.class public Lhc8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:F

.field public static o:I

.field public static p:I


# instance fields
.field public final a:Landroid/view/View;

.field public b:J

.field public c:I

.field public final d:Landroid/view/animation/Interpolator;

.field public e:Ljava/util/ArrayList;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Lgc8;

.field public j:Lgc8;

.field public k:Lgc8;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lhc8;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lhc8;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhc8;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lhc8;->h:I

    iput-object p1, p0, Lhc8;->a:Landroid/view/View;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lhc8;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_overflowmenu_circle_radiu:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lhc8;->n:F

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_overflowmenu_circle_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lhc8;->o:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    sget v1, Lhc8;->n:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Lhc8;->p:I

    invoke-virtual {p0}, Lhc8;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Lhc8;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lhc8;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iput v2, p0, Lhc8;->f:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lhc8;->f:I

    :goto_0
    iget-object v0, p0, Lhc8;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgc8;

    iget-object v1, p0, Lhc8;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgc8;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lhc8;->e(Lgc8;Lgc8;I)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 5

    iget v0, p0, Lhc8;->l:I

    sget v1, Lhc8;->p:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lhc8;->i:Lgc8;

    sget v2, Lhc8;->n:F

    invoke-virtual {v1, v0, v0, v2}, Lgc8;->c(IIF)V

    iget v1, p0, Lhc8;->m:I

    iget-object v2, p0, Lhc8;->j:Lgc8;

    sget v3, Lhc8;->n:F

    invoke-virtual {v2, v0, v1, v3}, Lgc8;->c(IIF)V

    iget v2, p0, Lhc8;->m:I

    sget v3, Lhc8;->p:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lhc8;->k:Lgc8;

    sget v4, Lhc8;->n:F

    invoke-virtual {v3, v0, v2, v4}, Lgc8;->c(IIF)V

    iget-object v3, p0, Lhc8;->j:Lgc8;

    invoke-virtual {v3, v2, v0}, Lgc8;->b(II)V

    iget-object v0, p0, Lhc8;->k:Lgc8;

    invoke-virtual {v0, v1, v1}, Lgc8;->b(II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lhc8;->i:Lgc8;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lhc8;->j:Lgc8;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x2

    iget-object p0, p0, Lhc8;->k:Lgc8;

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lgc8;

    invoke-direct {v0}, Lgc8;-><init>()V

    iput-object v0, p0, Lhc8;->i:Lgc8;

    new-instance v0, Lgc8;

    invoke-direct {v0}, Lgc8;-><init>()V

    iput-object v0, p0, Lhc8;->j:Lgc8;

    new-instance v0, Lgc8;

    invoke-direct {v0}, Lgc8;-><init>()V

    iput-object v0, p0, Lhc8;->k:Lgc8;

    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 6

    iget v0, p0, Lhc8;->l:I

    sget v1, Lhc8;->p:I

    add-int/2addr v0, v1

    iget v2, p0, Lhc8;->m:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lhc8;->i:Lgc8;

    sget v3, Lhc8;->n:F

    invoke-virtual {v1, v0, v2, v3}, Lgc8;->c(IIF)V

    iget v1, p0, Lhc8;->m:I

    iget-object v3, p0, Lhc8;->j:Lgc8;

    sget v4, Lhc8;->n:F

    invoke-virtual {v3, v0, v1, v4}, Lgc8;->c(IIF)V

    iget v3, p0, Lhc8;->m:I

    sget v4, Lhc8;->p:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lhc8;->k:Lgc8;

    sget v5, Lhc8;->n:F

    invoke-virtual {v4, v0, v3, v5}, Lgc8;->c(IIF)V

    iget-object v0, p0, Lhc8;->j:Lgc8;

    invoke-virtual {v0, v2, v2}, Lgc8;->b(II)V

    iget-object v0, p0, Lhc8;->k:Lgc8;

    invoke-virtual {v0, v1, v1}, Lgc8;->b(II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lhc8;->i:Lgc8;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lhc8;->j:Lgc8;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x2

    iget-object p0, p0, Lhc8;->k:Lgc8;

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Lgc8;Lgc8;I)V
    .locals 2

    iget-boolean p3, p0, Lhc8;->g:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    iput p3, p0, Lhc8;->f:I

    iget p3, p0, Lhc8;->h:I

    if-nez p3, :cond_0

    iget p3, p0, Lhc8;->l:I

    sget v0, Lhc8;->p:I

    sub-int/2addr p3, v0

    iget v0, p0, Lhc8;->m:I

    invoke-virtual {p1, p3, v0}, Lgc8;->b(II)V

    iget p1, p0, Lhc8;->l:I

    sget p3, Lhc8;->p:I

    sub-int/2addr p1, p3

    iget v0, p0, Lhc8;->m:I

    add-int/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Lgc8;->b(II)V

    goto :goto_0

    :cond_0
    iget p3, p0, Lhc8;->l:I

    sget v0, Lhc8;->p:I

    add-int/2addr p3, v0

    iget v0, p0, Lhc8;->m:I

    invoke-virtual {p1, p3, v0}, Lgc8;->b(II)V

    iget p1, p0, Lhc8;->l:I

    sget p3, Lhc8;->p:I

    add-int/2addr p1, p3

    iget v0, p0, Lhc8;->m:I

    add-int/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Lgc8;->b(II)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    iput p3, p0, Lhc8;->f:I

    iget p3, p0, Lhc8;->h:I

    if-nez p3, :cond_2

    iget p3, p0, Lhc8;->l:I

    sget v0, Lhc8;->p:I

    add-int/2addr p3, v0

    iget v1, p0, Lhc8;->m:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3, v1}, Lgc8;->b(II)V

    iget p1, p0, Lhc8;->l:I

    iget p3, p0, Lhc8;->m:I

    invoke-virtual {p2, p1, p3}, Lgc8;->b(II)V

    goto :goto_0

    :cond_2
    iget p3, p0, Lhc8;->l:I

    sget v0, Lhc8;->p:I

    sub-int/2addr p3, v0

    iget v1, p0, Lhc8;->m:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3, v1}, Lgc8;->b(II)V

    iget p1, p0, Lhc8;->l:I

    iget p3, p0, Lhc8;->m:I

    invoke-virtual {p2, p1, p3}, Lgc8;->b(II)V

    :goto_0
    iget-object p0, p0, Lhc8;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f(II)V
    .locals 0

    iput p1, p0, Lhc8;->l:I

    iput p2, p0, Lhc8;->m:I

    return-void
.end method

.method public g(ILjava/util/ArrayList;)V
    .locals 1

    iget v0, p0, Lhc8;->h:I

    if-eq v0, p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lhc8;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lhc8;->d(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    iput-object p2, p0, Lhc8;->e:Ljava/util/ArrayList;

    iput p1, p0, Lhc8;->h:I

    return-void
.end method

.method public h(ZI)V
    .locals 4

    iget p2, p0, Lhc8;->f:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lhc8;->e:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgc8;

    iget-object v2, p0, Lhc8;->e:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgc8;

    invoke-virtual {p0, p2, v2, v1}, Lhc8;->e(Lgc8;Lgc8;I)V

    :cond_0
    iput-boolean p1, p0, Lhc8;->g:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lhc8;->b:J

    iput v0, p0, Lhc8;->f:I

    invoke-virtual {p0}, Lhc8;->i()V

    return-void
.end method

.method public i()V
    .locals 8

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lhc8;->b:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lhc8;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lhc8;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lhc8;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lhc8;->e:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc8;

    iget v4, v3, Lgc8;->a:I

    int-to-float v5, v4

    iget v6, v3, Lgc8;->c:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Lgc8;->a:I

    iget v4, v3, Lgc8;->b:I

    int-to-float v5, v4

    iget v6, v3, Lgc8;->d:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Lgc8;->b:I

    iget-object v4, p0, Lhc8;->e:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgc8;

    iget v5, v4, Lgc8;->a:I

    int-to-float v6, v5

    iget v7, v4, Lgc8;->c:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v4, Lgc8;->a:I

    iget v5, v4, Lgc8;->b:I

    int-to-float v6, v5

    iget v7, v4, Lgc8;->d:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    float-to-int v2, v6

    iput v2, v4, Lgc8;->b:I

    iget-object v2, p0, Lhc8;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-wide v5, p0, Lhc8;->b:J

    sub-long/2addr v0, v5

    iget v2, p0, Lhc8;->c:I

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v4, v0}, Lhc8;->e(Lgc8;Lgc8;I)V

    :cond_1
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lhc8;->c:I

    return-void
.end method
