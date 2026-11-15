.class public final Lcom/yandex/mobile/ads/impl/p02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l02;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/l02;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/l02;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/p02;->a:Lcom/yandex/mobile/ads/impl/l02;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-string v1, "#2E7D32"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/p02;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/p02;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/j02;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "view"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "bitmap"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "smartCenter"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    .line 6
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    cmpg-float v10, v5, v8

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v10, v7, v8

    if-nez v10, :cond_1

    :goto_0
    return-void

    :cond_1
    div-float v10, v3, v5

    div-float v11, v6, v7

    cmpl-float v10, v10, v11

    const/4 v11, 0x0

    if-lez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    if-eqz v10, :cond_3

    div-float v13, v3, v6

    goto :goto_2

    :cond_3
    div-float v13, v5, v7

    :goto_2
    mul-float/2addr v6, v13

    mul-float/2addr v7, v13

    const/4 v15, 0x2

    if-eqz v10, :cond_4

    move v12, v8

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->d()I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->c()I

    move-result v17

    .line 8
    div-int/lit8 v17, v17, 0x2

    add-int v14, v17, v16

    int-to-float v14, v14

    mul-float/2addr v14, v13

    int-to-float v12, v15

    div-float v12, v3, v12

    sub-float/2addr v12, v14

    cmpl-float v14, v12, v8

    if-lez v14, :cond_5

    move-object v3, v9

    goto :goto_3

    :cond_5
    add-float v14, v12, v6

    cmpg-float v14, v14, v3

    if-gez v14, :cond_6

    sub-float/2addr v3, v6

    .line 9
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 10
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    :cond_7
    :goto_4
    if-eqz v10, :cond_b

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->e()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->b()I

    move-result v6

    .line 12
    div-int/2addr v6, v15

    add-int/2addr v6, v3

    int-to-float v3, v6

    mul-float/2addr v3, v13

    int-to-float v6, v15

    div-float v6, v5, v6

    sub-float/2addr v6, v3

    cmpl-float v3, v6, v8

    if-lez v3, :cond_8

    goto :goto_5

    :cond_8
    add-float v3, v6, v7

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    sub-float/2addr v5, v7

    .line 13
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_a

    .line 14
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_6

    :cond_a
    move v8, v6

    .line 15
    :cond_b
    :goto_6
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v13, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    invoke-virtual {v3, v12, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 17
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 19
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/p02;->a:Lcom/yandex/mobile/ads/impl/l02;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "context"

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 21
    const-string v5, "preference_smart_centers_debug_enabled"

    invoke-interface {v3, v5, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 22
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 23
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/p02;->d:Landroid/graphics/Rect;

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->d()I

    move-result v6

    .line 26
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->e()I

    move-result v7

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->d()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->c()I

    move-result v9

    add-int/2addr v9, v8

    .line 28
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->e()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/j02;->b()I

    move-result v4

    add-int/2addr v4, v8

    .line 29
    invoke-virtual {v5, v6, v7, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/p02;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_c
    return-void
.end method

.method public final a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/impl/j02;Ljava/lang/String;)V
    .locals 8

    .line 32
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCenter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backGroundColor"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 36
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 37
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->c()I

    move-result v4

    int-to-float v4, v4

    .line 38
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->b()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpg-float v7, v1, v6

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v7, v5, v6

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v6, v3, v6

    if-nez v6, :cond_2

    :goto_0
    return-void

    :cond_2
    div-float v6, v0, v1

    div-float v7, v4, v5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    div-float v4, v0, v4

    goto :goto_1

    :cond_3
    div-float v4, v1, v5

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    div-float v4, v2, v3

    cmpg-float v4, v6, v4

    if-gez v4, :cond_5

    div-float v4, v0, v2

    goto :goto_2

    :cond_5
    div-float v4, v1, v3

    .line 39
    :goto_2
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->d()I

    move-result v2

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->c()I

    move-result v3

    const/4 v5, 0x2

    .line 40
    div-int/2addr v3, v5

    add-int/2addr v3, v2

    int-to-float v2, v3

    mul-float/2addr v2, v4

    int-to-float v3, v5

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    .line 41
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->e()I

    move-result v2

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->b()I

    move-result v6

    .line 42
    div-int/2addr v6, v5

    add-int/2addr v6, v2

    int-to-float v2, v6

    mul-float/2addr v2, v4

    div-float/2addr v1, v3

    sub-float/2addr v1, v2

    .line 43
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 44
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p02;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 47
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/p02;->a:Lcom/yandex/mobile/ads/impl/l02;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "context"

    invoke-static {v0, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 50
    const-string v0, "preference_smart_centers_debug_enabled"

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 51
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 52
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p02;->d:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->d()I

    move-result v1

    .line 55
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->e()I

    move-result v2

    .line 56
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->d()I

    move-result v3

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->c()I

    move-result v4

    add-int/2addr v4, v3

    .line 57
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->e()I

    move-result v3

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/j02;->b()I

    move-result p3

    add-int/2addr p3, v3

    .line 58
    invoke-virtual {v0, v1, v2, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p02;->c:Landroid/graphics/Paint;

    invoke-virtual {p4, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    return-void
.end method
