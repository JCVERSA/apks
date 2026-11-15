.class public final Lq19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz4;


# instance fields
.field public final a:Lsz4;

.field public final b:Landroid/animation/ArgbEvaluator;

.field public final c:Landroid/util/SparseArray;

.field public d:I


# direct methods
.method public constructor <init>(Lsz4;)V
    .locals 1

    const-string v0, "styleParams"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq19;->a:Lsz4;

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lq19;->b:Landroid/animation/ArgbEvaluator;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lq19;->c:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    iput p1, p0, Lq19;->d:I

    return-void
.end method

.method public c(FFFZ)Landroid/graphics/RectF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(I)F
    .locals 3

    iget-object v0, p0, Lq19;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq19;->a:Lsz4;

    invoke-virtual {v1}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v2

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v0

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result p0

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public f(I)Lcom/yandex/div/internal/widget/indicator/b;
    .locals 7

    iget-object v0, p0, Lq19;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/c$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq19;->a:Lsz4;

    invoke-virtual {v1}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.Circle"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/c$a;

    new-instance v2, Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$a;->e()Lcom/yandex/div/internal/widget/indicator/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$a;->d()F

    move-result v1

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/c$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$a;->e()Lcom/yandex/div/internal/widget/indicator/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/b$a;->d()F

    move-result v0

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lq19;->l(FFF)F

    move-result p0

    invoke-direct {v2, p0}, Lcom/yandex/div/internal/widget/indicator/b$a;-><init>(F)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq19;->a:Lsz4;

    invoke-virtual {v1}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/c$b;

    new-instance v2, Lcom/yandex/div/internal/widget/indicator/b$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v3

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v4

    add-float/2addr v3, v4

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v4

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lq19;->l(FFF)F

    move-result v3

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result v4

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result v5

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lq19;->l(FFF)F

    move-result v4

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v0

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lq19;->l(FFF)F

    move-result p0

    invoke-direct {v2, v3, v4, p0}, Lcom/yandex/div/internal/widget/indicator/b$b;-><init>(FFF)V

    :goto_0
    return-object v2

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public g(I)I
    .locals 3

    iget-object v0, p0, Lq19;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq19;->a:Lsz4;

    invoke-virtual {v1}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result p1

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c$b;->f()I

    move-result v1

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->f()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lq19;->j(FII)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h(IF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lq19;->m(IF)V

    iget v0, p0, Lq19;->d:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lq19;->m(IF)V

    goto :goto_0

    :cond_0
    if-le v0, v2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lq19;->m(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lq19;->k(I)F

    move-result p1

    iget-object v0, p0, Lq19;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c;->c()I

    move-result v0

    iget-object v1, p0, Lq19;->a:Lsz4;

    invoke-virtual {v1}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/c;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lq19;->j(FII)I

    move-result p0

    return p0
.end method

.method public final j(FII)I
    .locals 0

    iget-object p0, p0, Lq19;->b:Landroid/animation/ArgbEvaluator;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final k(I)F
    .locals 1

    iget-object p0, p0, Lq19;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "itemsScale.get(position, 0f)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final l(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public final m(IF)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lq19;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq19;->c:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lq19;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lq19;->c:Landroid/util/SparseArray;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
