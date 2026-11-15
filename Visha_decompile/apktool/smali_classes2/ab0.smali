.class public abstract Lab0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lab0$d;,
        Lab0$b;,
        Lab0$c;,
        Lab0$f;,
        Lab0$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public b:Z

.field public final c:Lab0$d;

.field public d:F

.field public e:Liu5;

.field public f:Ljava/lang/Object;

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lab0;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lab0;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lab0;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Lab0;->f:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lab0;->g:F

    iput v0, p0, Lab0;->h:F

    invoke-static {p1}, Lab0;->p(Ljava/util/List;)Lab0$d;

    move-result-object p1

    iput-object p1, p0, Lab0;->c:Lab0$d;

    return-void
.end method

.method public static p(Ljava/util/List;)Lab0$d;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lab0$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lab0$c;-><init>(Lab0$a;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lab0$f;

    invoke-direct {v0, p0}, Lab0$f;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, Lab0$e;

    invoke-direct {v0, p0}, Lab0$e;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Lab0$b;)V
    .locals 0

    iget-object p0, p0, Lab0;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ldg5;
    .locals 2

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "BaseKeyframeAnimation#getCurrentKeyframe"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lab0;->c:Lab0$d;

    invoke-interface {p0}, Lab0$d;->a()Ldg5;

    move-result-object p0

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_1
    return-object p0
.end method

.method public c()F
    .locals 2

    iget v0, p0, Lab0;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lab0;->c:Lab0$d;

    invoke-interface {v0}, Lab0$d;->e()F

    move-result v0

    iput v0, p0, Lab0;->h:F

    :cond_0
    iget p0, p0, Lab0;->h:F

    return p0
.end method

.method public d()F
    .locals 2

    invoke-virtual {p0}, Lab0;->b()Ldg5;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldg5;->i()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Ldg5;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lab0;->e()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()F
    .locals 3

    iget-boolean v0, p0, Lab0;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lab0;->b()Ldg5;

    move-result-object v0

    invoke-virtual {v0}, Ldg5;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lab0;->d:F

    invoke-virtual {v0}, Ldg5;->f()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Ldg5;->c()F

    move-result v1

    invoke-virtual {v0}, Ldg5;->f()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lab0;->d:F

    return p0
.end method

.method public final g()F
    .locals 2

    iget v0, p0, Lab0;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lab0;->c:Lab0$d;

    invoke-interface {v0}, Lab0$d;->b()F

    move-result v0

    iput v0, p0, Lab0;->g:F

    :cond_0
    iget p0, p0, Lab0;->g:F

    return p0
.end method

.method public h()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lab0;->e()F

    move-result v0

    iget-object v1, p0, Lab0;->e:Liu5;

    if-nez v1, :cond_0

    iget-object v1, p0, Lab0;->c:Lab0$d;

    invoke-interface {v1, v0}, Lab0$d;->c(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lab0;->f:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lab0;->b()Ldg5;

    move-result-object v1

    iget-object v2, v1, Ldg5;->e:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    iget-object v3, v1, Ldg5;->f:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v1, Ldg5;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lab0;->j(Ldg5;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lab0;->d()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lab0;->i(Ldg5;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lab0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract i(Ldg5;F)Ljava/lang/Object;
.end method

.method public j(Ldg5;FFF)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This animation does not support split dimensions!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lab0;->e:Liu5;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()V
    .locals 3

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "BaseKeyframeAnimation#notifyListeners"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lab0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lab0;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lab0$b;

    invoke-interface {v2}, Lab0$b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lab0;->b:Z

    return-void
.end method

.method public n(F)V
    .locals 2

    invoke-static {}, Lyh5;->h()Z

    move-result v0

    const-string v1, "BaseKeyframeAnimation#setProgress"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lyh5;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lab0;->c:Lab0$d;

    invoke-interface {v0}, Lab0$d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lab0;->g()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lab0;->g()F

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lab0;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lab0;->c()F

    move-result p1

    :cond_4
    :goto_0
    iget v0, p0, Lab0;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_5
    return-void

    :cond_6
    iput p1, p0, Lab0;->d:F

    iget-object v0, p0, Lab0;->c:Lab0$d;

    invoke-interface {v0, p1}, Lab0$d;->d(F)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lab0;->l()V

    :cond_7
    invoke-static {}, Lyh5;->h()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v1}, Lyh5;->c(Ljava/lang/String;)F

    :cond_8
    return-void
.end method

.method public o(Liu5;)V
    .locals 2

    iget-object v0, p0, Lab0;->e:Liu5;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liu5;->c(Lab0;)V

    :cond_0
    iput-object p1, p0, Lab0;->e:Liu5;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Liu5;->c(Lab0;)V

    :cond_1
    return-void
.end method
