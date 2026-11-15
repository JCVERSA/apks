.class public final Lcom/yandex/mobile/ads/impl/ou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Path;

.field private final d:[F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FFFF)V
    .locals 8

    .line 1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 2
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ou;-><init>(Landroid/view/View;FFFFLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFFFLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 1

    .line 4
    const-string v0, "roundView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipRect"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipPath"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    .line 7
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ou;->b:Landroid/graphics/RectF;

    .line 8
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ou;->c:Landroid/graphics/Path;

    .line 9
    invoke-static {p2, p3, p4, p5}, Lcom/yandex/mobile/ads/impl/ou;->a(FFFF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ou;->d:[F

    return-void
.end method

.method private static a(FFFF)[F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-gtz v1, :cond_1

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_1

    cmpl-float v1, p2, v0

    if-gtz v1, :cond_1

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 4
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 p0, 0x2

    aput p1, v0, p0

    const/4 p0, 0x3

    aput p1, v0, p0

    const/4 p0, 0x4

    aput p2, v0, p0

    const/4 p0, 0x5

    aput p2, v0, p0

    const/4 p0, 0x6

    aput p3, v0, p0

    const/4 p0, 0x7

    aput p3, v0, p0

    move-object p0, v0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou;->d:[F

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 11
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ou;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v2, v0, :cond_0

    if-ge v3, v1, :cond_0

    .line 12
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ou;->b:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ou;->b:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou;->d:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ou;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou;->c:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    return-void
.end method
