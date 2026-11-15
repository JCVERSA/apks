.class public final Le50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/DisplayMetrics;

.field public final b:Lcom/yandex/div2/DivTextRangeBorder;

.field public final c:Lcom/yandex/div2/DivTextRangeBackground;

.field public final d:Landroid/graphics/Canvas;

.field public final e:Loj3;

.field public final f:Landroid/graphics/Paint;

.field public final g:[F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;Landroid/graphics/Canvas;Loj3;)V
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvas"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le50;->a:Landroid/util/DisplayMetrics;

    iput-object p2, p0, Le50;->b:Lcom/yandex/div2/DivTextRangeBorder;

    iput-object p3, p0, Le50;->c:Lcom/yandex/div2/DivTextRangeBackground;

    iput-object p4, p0, Le50;->d:Landroid/graphics/Canvas;

    iput-object p5, p0, Le50;->e:Loj3;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Le50;->f:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    invoke-static {p2, p1, p5}, Lat2;->a(Lcom/yandex/div2/DivTextRangeBorder;Landroid/util/DisplayMetrics;Loj3;)[F

    move-result-object p4

    iput-object p4, p0, Le50;->g:[F

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p2, Lcom/yandex/div2/DivTextRangeBorder;->b:Lcom/yandex/div2/DivStroke;

    invoke-static {p0, p5, p1}, Ltg2;->a(Lcom/yandex/div2/DivStroke;Loj3;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p2, Lcom/yandex/div2/DivTextRangeBorder;->b:Lcom/yandex/div2/DivStroke;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Le50;->g:[F

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 6

    iget-object v1, p0, Le50;->g:[F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Le50;->b([FFFFF)V

    return-void
.end method

.method public final b([FFFFF)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Le50;->c:Lcom/yandex/div2/DivTextRangeBackground;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div2/DivTextRangeBackground;->b()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v2, v1, Lcom/yandex/div2/DivSolidBackground;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    check-cast v1, Lcom/yandex/div2/DivSolidBackground;

    iget-object v1, v1, Lcom/yandex/div2/DivSolidBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v3, p0, Le50;->e:Loj3;

    invoke-virtual {v1, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Le50;->d:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, v0}, Le50;->g([FLandroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    invoke-virtual/range {p0 .. p5}, Le50;->f([FFFFF)V

    return-void
.end method

.method public final c(FFFF)V
    .locals 7

    const/16 v0, 0x8

    new-array v2, v0, [F

    iget-object v0, p0, Le50;->g:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x1

    aput v3, v2, v1

    const/4 v1, 0x2

    aget v4, v0, v1

    aput v4, v2, v1

    const/4 v1, 0x3

    aget v4, v0, v1

    aput v4, v2, v1

    const/4 v1, 0x4

    aget v4, v0, v1

    aput v4, v2, v1

    const/4 v1, 0x5

    aget v0, v0, v1

    aput v0, v2, v1

    const/4 v0, 0x6

    aput v3, v2, v0

    const/4 v0, 0x7

    aput v3, v2, v0

    :cond_0
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Le50;->b([FFFFF)V

    return-void
.end method

.method public final d(FFFF)V
    .locals 7

    const/16 v0, 0x8

    new-array v2, v0, [F

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Le50;->b([FFFFF)V

    return-void
.end method

.method public final e(FFFF)V
    .locals 7

    const/16 v0, 0x8

    new-array v2, v0, [F

    iget-object v0, p0, Le50;->g:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v3, v0, v1

    aput v3, v2, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    aput v3, v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x3

    aput v3, v2, v1

    const/4 v1, 0x4

    aput v3, v2, v1

    const/4 v1, 0x5

    aput v3, v2, v1

    const/4 v1, 0x6

    aget v3, v0, v1

    aput v3, v2, v1

    const/4 v1, 0x7

    aget v0, v0, v1

    aput v0, v2, v1

    :cond_0
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Le50;->b([FFFFF)V

    return-void
.end method

.method public final f([FFFFF)V
    .locals 5

    iget-object v0, p0, Le50;->b:Lcom/yandex/div2/DivTextRangeBorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivTextRangeBorder;->b:Lcom/yandex/div2/DivStroke;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Le50;->b:Lcom/yandex/div2/DivTextRangeBorder;

    iget-object v2, v2, Lcom/yandex/div2/DivTextRangeBorder;->b:Lcom/yandex/div2/DivStroke;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v3, p0, Le50;->e:Loj3;

    iget-object v4, p0, Le50;->a:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3, v4}, Ltg2;->a(Lcom/yandex/div2/DivStroke;Loj3;Landroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    const/4 v3, 0x0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr p3, v2

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    sub-float/2addr p4, v2

    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    sub-float/2addr p5, v2

    invoke-static {v3, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, [F

    :cond_2
    if-eqz v1, :cond_3

    array-length p2, v1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget p4, p1, p3

    sub-float/2addr p4, v2

    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    aput p4, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Le50;->d:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, v0}, Le50;->g([FLandroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object p2

    iget-object p0, p0, Le50;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final g([FLandroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 1

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p2, p1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0
.end method
