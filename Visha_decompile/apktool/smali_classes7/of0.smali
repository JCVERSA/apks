.class public Lof0;
.super Lif0;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "of0"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lif0;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lof0;->a:I

    const/16 v0, 0x9

    iput v0, p0, Lof0;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p3}, Lof0;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v1, v12, v13

    new-array v14, v1, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    move v4, v12

    move v7, v12

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v12, -0x1

    add-int/lit8 v2, v13, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v12, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_2

    mul-int v15, v8, v12

    add-int/2addr v15, v4

    aget v15, v14, v15

    invoke-virtual {v0, v15}, Lof0;->d(I)Z

    move-result v15

    if-eqz v15, :cond_0

    move v5, v4

    goto :goto_2

    :cond_0
    if-nez v6, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    move v4, v1

    move v8, v4

    :goto_4
    if-ltz v4, :cond_9

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_7

    mul-int v16, v15, v12

    add-int v16, v16, v4

    aget v3, v14, v16

    invoke-virtual {v0, v3}, Lof0;->d(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v8, v4

    goto :goto_6

    :cond_5
    if-nez v6, :cond_6

    const/4 v6, 0x1

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    if-ge v8, v1, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_9
    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v3, v13, :cond_e

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v12, :cond_c

    mul-int v16, v3, v12

    add-int v16, v16, v15

    aget v7, v14, v16

    invoke-virtual {v0, v7}, Lof0;->d(I)Z

    move-result v7

    if-eqz v7, :cond_a

    move v4, v3

    goto :goto_a

    :cond_a
    if-nez v6, :cond_b

    const/4 v6, 0x1

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    if-lez v4, :cond_d

    goto :goto_b

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    :goto_b
    move v3, v2

    move v7, v3

    :goto_c
    if-ltz v3, :cond_13

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v12, :cond_11

    mul-int v16, v3, v12

    add-int v16, v16, v15

    move/from16 v17, v7

    aget v7, v14, v16

    invoke-virtual {v0, v7}, Lof0;->d(I)Z

    move-result v7

    if-eqz v7, :cond_f

    move v7, v3

    goto :goto_e

    :cond_f
    if-nez v6, :cond_10

    const/4 v6, 0x1

    :cond_10
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v17

    goto :goto_d

    :cond_11
    move/from16 v17, v7

    :goto_e
    if-ge v7, v2, :cond_12

    goto :goto_f

    :cond_12
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_13
    move/from16 v17, v7

    :goto_f
    if-eqz v6, :cond_16

    if-ge v5, v8, :cond_16

    if-ge v4, v7, :cond_16

    const/4 v3, 0x5

    if-gt v5, v3, :cond_14

    sub-int/2addr v12, v8

    if-gt v12, v3, :cond_14

    if-gt v4, v3, :cond_14

    sub-int/2addr v13, v7

    if-le v13, v3, :cond_16

    :cond_14
    sget-object v3, Lof0;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "left:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " right:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " top:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bottom:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v8, v5

    const/4 v6, 0x1

    add-int/2addr v8, v6

    sub-int/2addr v7, v4

    add-int/2addr v7, v6

    iget v6, v0, Lof0;->a:I

    int-to-float v6, v6

    iget v0, v0, Lof0;->b:I

    int-to-float v0, v0

    div-float/2addr v6, v0

    int-to-float v0, v8

    int-to-float v12, v7

    div-float v13, v0, v12

    cmpl-float v13, v13, v6

    if-lez v13, :cond_15

    mul-float/2addr v12, v6

    float-to-int v0, v12

    move v6, v7

    goto :goto_10

    :cond_15
    div-float/2addr v0, v6

    float-to-int v0, v0

    move v6, v0

    move v0, v8

    :goto_10
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    div-int/lit8 v0, v0, 0x2

    sub-int v7, v5, v0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v5, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v4, v6

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v4, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v7, v0, :cond_16

    if-ge v1, v2, :cond_16

    sub-int/2addr v0, v7

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sub-int/2addr v2, v1

    add-int/2addr v2, v4

    invoke-static {v9, v7, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cropBlackBorders cost time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_16
    sget-object v0, Lof0;->c:Ljava/lang/String;

    const-string v1, "No valid crop area found, returning original bitmap."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method public final d(I)Z
    .locals 2

    shr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0x14

    if-gt p0, v1, :cond_1

    if-gt v0, v1, :cond_1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    const-class p0, Lof0;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
