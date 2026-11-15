.class public final Lipc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz4;


# instance fields
.field public final a:Lsz4;

.field public b:F

.field public final c:Landroid/graphics/RectF;

.field public d:F

.field public e:F

.field public final f:Lcom/yandex/div/internal/widget/indicator/b;


# direct methods
.method public constructor <init>(Lsz4;)V
    .locals 6

    const-string v0, "styleParams"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipc;->a:Lsz4;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lipc;->c:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div/internal/widget/indicator/c$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div/internal/widget/indicator/c$a;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$a;->e()Lcom/yandex/div/internal/widget/indicator/b$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result v2

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result p1

    add-float/2addr v2, p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/internal/widget/indicator/b$b;->d(Lcom/yandex/div/internal/widget/indicator/b$b;FFFILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lipc;->f:Lcom/yandex/div/internal/widget/indicator/b;

    return-void

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lipc;->d:F

    return-void
.end method

.method public c(FFFZ)Landroid/graphics/RectF;
    .locals 6

    iget v0, p0, Lipc;->e:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Lipc;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v0

    :cond_0
    iget-object v2, p0, Lipc;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lipc;->a:Lsz4;

    invoke-virtual {v3}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/indicator/b;->a()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p4, :cond_1

    iget-object p4, p0, Lipc;->c:Landroid/graphics/RectF;

    iget v3, p0, Lipc;->d:F

    iget v5, p0, Lipc;->b:F

    sub-float/2addr v5, v2

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-static {v3, v1}, Lwn8;->c(FF)F

    move-result v2

    sub-float v2, p1, v2

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    iput v2, p4, Landroid/graphics/RectF;->right:F

    iget-object p4, p0, Lipc;->c:Landroid/graphics/RectF;

    iget v2, p0, Lipc;->d:F

    iget v3, p0, Lipc;->b:F

    mul-float/2addr v3, v2

    mul-float/2addr v3, v4

    invoke-static {v3, v2}, Lwn8;->f(FF)F

    move-result v2

    sub-float/2addr p1, v2

    sub-float/2addr p1, v0

    iput p1, p4, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lipc;->c:Landroid/graphics/RectF;

    iget v3, p0, Lipc;->d:F

    iget v5, p0, Lipc;->b:F

    mul-float/2addr v5, v3

    mul-float/2addr v5, v4

    invoke-static {v5, v3}, Lwn8;->f(FF)F

    move-result v3

    add-float/2addr v3, p1

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    iput v3, p4, Landroid/graphics/RectF;->right:F

    iget-object p4, p0, Lipc;->c:Landroid/graphics/RectF;

    iget v3, p0, Lipc;->d:F

    iget v5, p0, Lipc;->b:F

    sub-float/2addr v5, v2

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-static {v3, v1}, Lwn8;->c(FF)F

    move-result v2

    add-float/2addr p1, v2

    sub-float/2addr p1, v0

    iput p1, p4, Landroid/graphics/RectF;->left:F

    :goto_0
    iget-object p1, p0, Lipc;->c:Landroid/graphics/RectF;

    iget-object p4, p0, Lipc;->a:Lsz4;

    invoke-virtual {p4}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b;->a()F

    move-result p4

    div-float/2addr p4, v4

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lipc;->c:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p2, v1

    if-gez p4, :cond_2

    neg-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    iget-object p1, p0, Lipc;->c:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p2, p3

    if-lez p4, :cond_3

    sub-float/2addr p2, p3

    neg-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    iget-object p0, p0, Lipc;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lipc;->e:F

    return-void
.end method

.method public e(I)F
    .locals 0

    iget-object p0, p0, Lipc;->a:Lsz4;

    invoke-virtual {p0}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/c;->b()F

    move-result p0

    return p0
.end method

.method public f(I)Lcom/yandex/div/internal/widget/indicator/b;
    .locals 0

    iget-object p0, p0, Lipc;->f:Lcom/yandex/div/internal/widget/indicator/b;

    return-object p0
.end method

.method public g(I)I
    .locals 0

    iget-object p0, p0, Lipc;->a:Lsz4;

    invoke-virtual {p0}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/c;->a()I

    move-result p0

    return p0
.end method

.method public h(IF)V
    .locals 0

    iput p2, p0, Lipc;->b:F

    return-void
.end method

.method public i(I)I
    .locals 0

    iget-object p0, p0, Lipc;->a:Lsz4;

    invoke-virtual {p0}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/c;->c()I

    move-result p0

    return p0
.end method
