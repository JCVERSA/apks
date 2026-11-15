.class public final Lcom/yandex/mobile/ads/impl/cl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/al;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/al;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/al;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/cl1;-><init>(Lcom/yandex/mobile/ads/impl/al;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/al;)V
    .locals 1

    .line 3
    const-string v0, "bestSizeForScalePreviewCalculator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cl1;->a:Lcom/yandex/mobile/ads/impl/al;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/xj0;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageValue"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    if-ne v3, v4, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cl1;->a:Lcom/yandex/mobile/ads/impl/al;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v1

    const/16 v2, 0x64

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lu15;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lu15;-><init>(II)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Lq15;

    invoke-virtual {v3}, Lq15;->nextInt()I

    move-result v3

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v5

    rem-int/2addr v4, v5

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result p0

    mul-int/2addr p0, v3

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result p2

    div-int/2addr p0, p2

    new-instance p2, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-direct {p2, v3, p0}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    move-object p0, p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->a()I

    move-result v4

    mul-int/2addr v4, v3

    int-to-double v4, v4

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/xj0;->g()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ls86;->b(D)I

    move-result v6

    int-to-double v7, v6

    sub-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    div-double v4, v7, v4

    cmpg-double v7, v4, v1

    if-gez v7, :cond_3

    new-instance p0, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-direct {p0, v3, v6}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    move-wide v1, v4

    goto :goto_0

    :cond_5
    :goto_1
    new-instance p2, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    const-string v0, "<this>"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v0

    div-int/2addr v1, v0

    new-instance v0, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result p2

    div-int/2addr v2, p2

    new-instance p2, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v1

    invoke-direct {p2, v2, v1}, Lcom/yandex/mobile/ads/impl/fz1;-><init>(II)V

    invoke-static {v0, p2}, Leb1;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/fz1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string p1, "createScaledBitmap(...)"

    invoke-static {v2, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 v4, p1, 0x2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fz1;->a()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    :goto_2
    return-object p1
.end method
