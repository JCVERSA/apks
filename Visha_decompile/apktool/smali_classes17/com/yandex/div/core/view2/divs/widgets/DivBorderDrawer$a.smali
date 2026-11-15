.class public final Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Path;

.field public c:Z

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:Landroid/graphics/RectF;

.field public final synthetic h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)V
    .locals 3

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->b:Landroid/graphics/Path;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->b(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->d:F

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->b(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->e:F

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->b(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->f:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->g:Landroid/graphics/RectF;

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final a(FF[F)F
    .locals 5

    const/4 p0, 0x2

    int-to-float v0, p0

    mul-float/2addr p1, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    array-length p2, p3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    sget-object p0, Lne5;->a:Lne5;

    sget-object p2, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p0, p2}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong corner radii count "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". Expected 8"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    const-string v0, "DivBorderDrawer"

    invoke-virtual {p0, p3, v0, p2}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1

    :cond_1
    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p2, p0}, Lxh8;->c(III)I

    move-result p0

    if-ltz p0, :cond_2

    :goto_0
    aget p2, p3, v0

    add-int/lit8 v1, v0, 0x1

    aget v1, p3, v1

    sub-float/2addr p1, p2

    sub-float/2addr p1, v1

    mul-float/2addr p2, p2

    mul-float/2addr v1, v1

    add-float/2addr p2, v1

    float-to-double v1, p2

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    double-to-float p2, v1

    add-float/2addr p1, p2

    if-eq v0, p0, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lwn8;->c(FF)F

    move-result p0

    return p0
.end method

.method public final b(F)Landroid/graphics/DashPathEffect;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iget v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->e:F

    iget p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->f:F

    add-float v2, v1, p0

    div-float v3, p1, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float v4, v2, v3

    sub-float/2addr p1, v4

    mul-float v4, p1, v1

    div-float/2addr v4, v2

    mul-float/2addr p1, p0

    div-float/2addr p1, v2

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    div-float/2addr p1, v3

    add-float/2addr p0, p1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->e:F

    iget p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->f:F

    :goto_0
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p0, v2, v1

    invoke-direct {p1, v2, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object p1
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final d()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public final e()F
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->d:F

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final f([F)V
    .locals 4

    const-string v0, "radii"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)F

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->e()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->d(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->d(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->g:Landroid/graphics/RectF;

    sub-float/2addr v1, v0

    sub-float/2addr v2, v0

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->g:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->a:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->a(FF[F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->b(F)Landroid/graphics/DashPathEffect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->c:Z

    return-void
.end method

.method public final h(FI)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->e()F

    move-result v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
