.class public final Lcom/yandex/mobile/ads/impl/v30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o10;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/o10;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o10;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v30;->a:Lcom/yandex/mobile/ads/impl/o10;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;II)Landroid/graphics/drawable/LayerDrawable;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v30;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/v30;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ls86;->c(F)I

    move-result v2

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/v30;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ls86;->c(F)I

    move-result v4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v30;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {v3, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    mul-int p1, v1, p3

    add-int/lit8 v0, p3, 0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, p1

    new-instance p1, Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, p0

    const/4 v7, 0x0

    invoke-direct {p1, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v5, 0x8

    new-array v7, v5, [F

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_0

    aput v6, v7, v9

    add-int/2addr v9, v3

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v6, 0x0

    invoke-direct {v5, v7, p1, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/high16 v5, -0x1000000

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p0, 0x66

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    new-array v5, p3, [Landroid/graphics/drawable/ShapeDrawable;

    move v6, v8

    :goto_1
    if-ge v6, p3, :cond_2

    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    if-eq v6, p2, :cond_1

    invoke-virtual {v7, p0}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    :cond_1
    sget-object v9, Lzfb;->a:Lzfb;

    aput-object v7, v5, v6

    add-int/2addr v6, v3

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    new-instance p2, Liv9;

    const/4 v6, 0x2

    invoke-direct {p2, v6}, Liv9;-><init>(I)V

    invoke-virtual {p2, p1}, Liv9;->a(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Liv9;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Liv9;->c()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p2, p1}, Liv9;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-ge v8, p3, :cond_3

    add-int p1, v2, v1

    mul-int p2, p1, v8

    add-int v7, p2, v2

    add-int/lit8 p2, v8, 0x1

    mul-int/2addr p1, p2

    sub-int v9, v0, p1

    move-object v5, p0

    move v6, p2

    move v8, v4

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v8, p2

    goto :goto_2

    :cond_3
    return-object p0
.end method
