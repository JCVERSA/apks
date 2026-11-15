.class public Lgv9;
.super Lab0;
.source "SourceFile"


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:Landroid/graphics/PointF;

.field public final k:Lab0;

.field public final l:Lab0;

.field public m:Liu5;

.field public n:Liu5;


# direct methods
.method public constructor <init>(Lab0;Lab0;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lab0;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lgv9;->i:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lgv9;->j:Landroid/graphics/PointF;

    iput-object p1, p0, Lgv9;->k:Lab0;

    iput-object p2, p0, Lgv9;->l:Lab0;

    invoke-virtual {p0}, Lab0;->f()F

    move-result p1

    invoke-virtual {p0, p1}, Lgv9;->n(F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic h()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lgv9;->q()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgv9;->r(Ldg5;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public n(F)V
    .locals 2

    iget-object v0, p0, Lgv9;->k:Lab0;

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    iget-object v0, p0, Lgv9;->l:Lab0;

    invoke-virtual {v0, p1}, Lab0;->n(F)V

    iget-object p1, p0, Lgv9;->i:Landroid/graphics/PointF;

    iget-object v0, p0, Lgv9;->k:Lab0;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lgv9;->l:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lab0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lab0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lab0$b;

    invoke-interface {v0}, Lab0$b;->e()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgv9;->r(Ldg5;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public r(Ldg5;F)Landroid/graphics/PointF;
    .locals 9

    iget-object p1, p0, Lgv9;->m:Liu5;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgv9;->k:Lab0;

    invoke-virtual {p1}, Lab0;->b()Ldg5;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Ldg5;->h:Ljava/lang/Float;

    iget-object v1, p0, Lgv9;->m:Liu5;

    iget v2, p1, Ldg5;->g:F

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v3, v0

    :goto_0
    iget-object v0, p1, Ldg5;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    iget-object p1, p1, Ldg5;->c:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/Float;

    iget-object p1, p0, Lgv9;->k:Lab0;

    invoke-virtual {p1}, Lab0;->d()F

    move-result v6

    iget-object p1, p0, Lgv9;->k:Lab0;

    invoke-virtual {p1}, Lab0;->e()F

    move-result v7

    iget-object p1, p0, Lgv9;->k:Lab0;

    invoke-virtual {p1}, Lab0;->f()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iget-object v0, p0, Lgv9;->n:Liu5;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgv9;->l:Lab0;

    invoke-virtual {v0}, Lab0;->b()Ldg5;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p2, v0, Ldg5;->h:Ljava/lang/Float;

    iget-object v1, p0, Lgv9;->n:Liu5;

    iget v2, v0, Ldg5;->g:F

    if-nez p2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    move v3, p2

    :goto_2
    iget-object p2, v0, Ldg5;->b:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Ljava/lang/Float;

    iget-object p2, v0, Ldg5;->c:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/lang/Float;

    iget-object p2, p0, Lgv9;->l:Lab0;

    invoke-virtual {p2}, Lab0;->d()F

    move-result v6

    iget-object p2, p0, Lgv9;->l:Lab0;

    invoke-virtual {p2}, Lab0;->e()F

    move-result v7

    iget-object p2, p0, Lgv9;->l:Lab0;

    invoke-virtual {p2}, Lab0;->f()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    :cond_3
    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lgv9;->j:Landroid/graphics/PointF;

    iget-object v1, p0, Lgv9;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lgv9;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    if-nez p2, :cond_5

    iget-object p1, p0, Lgv9;->j:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lgv9;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lgv9;->j:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    :goto_4
    iget-object p0, p0, Lgv9;->j:Landroid/graphics/PointF;

    return-object p0
.end method

.method public s(Liu5;)V
    .locals 2

    iget-object v0, p0, Lgv9;->m:Liu5;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liu5;->c(Lab0;)V

    :cond_0
    iput-object p1, p0, Lgv9;->m:Liu5;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Liu5;->c(Lab0;)V

    :cond_1
    return-void
.end method

.method public t(Liu5;)V
    .locals 2

    iget-object v0, p0, Lgv9;->n:Liu5;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liu5;->c(Lab0;)V

    :cond_0
    iput-object p1, p0, Lgv9;->n:Liu5;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Liu5;->c(Lab0;)V

    :cond_1
    return-void
.end method
