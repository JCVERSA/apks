.class public final Lgw8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldn9;


# instance fields
.field public final a:Lsz4;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lsz4;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgw8;->a:Lsz4;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lgw8;->b:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lgw8;->c:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lgw8;->d:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgw8;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.widget.indicator.IndicatorParams.Shape.RoundedRect"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v1

    iget-object v2, p0, Lgw8;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lgw8;->a:Lsz4;

    invoke-virtual {v3}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/indicator/c;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v2

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v3

    iget-object v4, p0, Lgw8;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->f()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lgw8;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v0

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v1

    iget-object p0, p0, Lgw8;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;FFLcom/yandex/div/internal/widget/indicator/b;IFI)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemSize"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/yandex/div/internal/widget/indicator/b$b;

    iget-object v0, p0, Lgw8;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Lgw8;->d:Landroid/graphics/RectF;

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p5, Landroid/graphics/RectF;->left:F

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result v0

    div-float/2addr v0, v1

    sub-float v0, p3, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float p2, v2

    iput p2, p5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result p2

    div-float/2addr p2, v1

    add-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p5, Landroid/graphics/RectF;->bottom:F

    const/4 p3, 0x0

    cmpl-float v0, p6, p3

    if-lez v0, :cond_0

    div-float v0, p6, v1

    iget v1, p5, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p5, Landroid/graphics/RectF;->top:F

    iget v1, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p5, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v0

    iput p2, p5, Landroid/graphics/RectF;->bottom:F

    :cond_0
    iget-object p2, p0, Lgw8;->d:Landroid/graphics/RectF;

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result p5

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v0

    iget-object v1, p0, Lgw8;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p5, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p7, :cond_2

    cmpg-float p2, p6, p3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lgw8;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, p7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lgw8;->d:Landroid/graphics/RectF;

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result p3

    invoke-virtual {p4}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result p4

    iget-object p0, p0, Lgw8;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method
