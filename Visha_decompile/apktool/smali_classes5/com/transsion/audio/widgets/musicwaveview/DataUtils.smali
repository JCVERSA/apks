.class public Lcom/transsion/audio/widgets/musicwaveview/DataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDB([F)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput v1, p0, v0

    goto :goto_1

    :cond_0
    aget v1, p0, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static calculateFft([F[B)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, p0, v1

    .line 4
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v0, :cond_0

    .line 5
    aget-byte v1, p1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    aput v1, p0, v0

    :cond_0
    move v0, v2

    .line 6
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    .line 7
    aget-byte v3, p1, v1

    int-to-double v3, v3

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "calculateFft float array size must small than (fft.length /2 + 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateFft([F[BI)V
    .locals 6

    .line 9
    array-length v0, p1

    .line 10
    array-length v1, p0

    add-int/2addr v1, p2

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-gt v1, v0, :cond_1

    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    mul-int/lit8 v1, v1, 0x2

    .line 12
    aget-byte v2, p1, v1

    int-to-double v2, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "calculateFft float array size must small than (fft.length /2 + 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static filterAverage([FI)V
    .locals 8

    new-array v0, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    aget v5, p0, v3

    aput v5, v0, v3

    aget v5, p0, v3

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    int-to-float v3, p1

    div-float/2addr v4, v3

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_2

    aget v6, p0, v5

    cmpg-float v6, v6, v4

    if-gez v6, :cond_1

    aput v1, p0, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, p1

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_4

    rem-int/2addr v2, p1

    aget v6, p0, v5

    div-float v7, v6, v3

    add-float/2addr v4, v7

    aget v7, v0, v2

    div-float/2addr v7, v3

    sub-float/2addr v4, v7

    aput v6, v0, v2

    aget v6, p0, v5

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    aput v1, p0, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static insertValue7([F[F[F[F[F[F[F[F[F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    aput v1, p5, v0

    aget v3, p0, v0

    add-float/2addr v3, v1

    div-float/2addr v3, v2

    aput v3, p3, v0

    aget v1, p0, v0

    add-float/2addr v3, v1

    div-float/2addr v3, v2

    aput v3, p2, v0

    aget v1, p3, v0

    aget v3, p5, v0

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    aput v1, p4, v0

    aget v1, p5, v0

    aget v3, p1, v0

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    aput v1, p7, v0

    aget v3, p5, v0

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    aput v1, p6, v0

    aget v1, p7, v0

    aget v3, p1, v0

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    aput v1, p8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static savitzkyGolay([FI)V
    .locals 12

    array-length v0, p0

    new-array v1, v0, [F

    new-array v2, p1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    div-int/lit8 v5, p1, 0x2

    if-le v4, v5, :cond_0

    aget v6, v2, v5

    sub-int v5, v4, v5

    sub-int/2addr v6, v5

    aput v6, v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    aput v5, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_2
    div-int/lit8 v7, p1, 0x2

    if-ge v5, v7, :cond_2

    aget v7, v2, v5

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    aget v5, v2, v7

    int-to-float v5, v5

    add-float/2addr v6, v5

    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_6

    move v8, v3

    move v9, v4

    :goto_4
    if-ge v8, p1, :cond_5

    sub-int v10, v5, v7

    add-int/2addr v10, v8

    if-gez v10, :cond_3

    sub-int v10, v0, v7

    add-int/2addr v10, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v11, v0, -0x1

    if-le v10, v11, :cond_4

    sub-int v10, v8, v7

    add-int/lit8 v10, v10, -0x1

    :cond_4
    :goto_5
    aget v11, v2, v8

    int-to-float v11, v11

    aget v10, p0, v10

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    div-float/2addr v9, v6

    aput v9, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static savitzkyGolay7([F)[F
    .locals 22

    move-object/from16 v0, p0

    array-length v1, v0

    new-array v2, v1, [F

    const/16 v3, 0x10

    int-to-float v3, v3

    const/4 v4, 0x1

    int-to-float v5, v4

    add-int/lit8 v6, v1, -0x3

    aget v7, v0, v6

    mul-float/2addr v7, v5

    const/4 v8, 0x2

    int-to-float v9, v8

    add-int/lit8 v10, v1, -0x2

    aget v11, v0, v10

    mul-float/2addr v11, v9

    add-float/2addr v7, v11

    const/4 v11, 0x3

    int-to-float v12, v11

    add-int/lit8 v13, v1, -0x1

    aget v14, v0, v13

    mul-float/2addr v14, v12

    add-float/2addr v7, v14

    const/4 v14, 0x4

    int-to-float v15, v14

    const/16 v16, 0x0

    aget v17, v0, v16

    mul-float v17, v17, v15

    add-float v7, v7, v17

    aget v17, v0, v4

    mul-float v18, v12, v17

    add-float v7, v7, v18

    aget v18, v0, v8

    mul-float v19, v9, v18

    add-float v7, v7, v19

    aget v19, v0, v11

    mul-float v20, v5, v19

    add-float v7, v7, v20

    div-float/2addr v7, v3

    aput v7, v2, v16

    aget v7, v0, v10

    mul-float/2addr v7, v5

    aget v20, v0, v13

    mul-float v20, v20, v9

    add-float v7, v7, v20

    aget v20, v0, v16

    mul-float v21, v12, v20

    add-float v7, v7, v21

    mul-float v17, v17, v15

    add-float v7, v7, v17

    mul-float v17, v12, v18

    add-float v7, v7, v17

    mul-float v17, v9, v19

    add-float v7, v7, v17

    aget v14, v0, v14

    mul-float v17, v5, v14

    add-float v7, v7, v17

    div-float/2addr v7, v3

    aput v7, v2, v4

    aget v7, v0, v13

    mul-float/2addr v7, v5

    mul-float v20, v20, v9

    add-float v7, v7, v20

    aget v17, v0, v4

    mul-float v17, v17, v12

    add-float v7, v7, v17

    mul-float v18, v18, v15

    add-float v7, v7, v18

    mul-float v19, v19, v12

    add-float v7, v7, v19

    mul-float/2addr v14, v9

    add-float/2addr v7, v14

    const/4 v14, 0x5

    aget v14, v0, v14

    mul-float/2addr v14, v5

    add-float/2addr v7, v14

    div-float/2addr v7, v3

    aput v7, v2, v8

    :goto_0
    if-ge v11, v6, :cond_0

    add-int/lit8 v7, v11, -0x3

    aget v7, v0, v7

    mul-float/2addr v7, v5

    add-int/lit8 v14, v11, -0x2

    aget v14, v0, v14

    mul-float/2addr v14, v9

    add-float/2addr v7, v14

    add-int/lit8 v14, v11, -0x1

    aget v14, v0, v14

    mul-float/2addr v14, v12

    add-float/2addr v7, v14

    aget v14, v0, v11

    mul-float/2addr v14, v15

    add-float/2addr v7, v14

    add-int/lit8 v14, v11, 0x1

    aget v17, v0, v14

    mul-float v17, v17, v12

    add-float v7, v7, v17

    add-int/lit8 v17, v11, 0x2

    aget v17, v0, v17

    mul-float v17, v17, v9

    add-float v7, v7, v17

    add-int/lit8 v17, v11, 0x3

    aget v17, v0, v17

    mul-float v17, v17, v5

    add-float v7, v7, v17

    div-float/2addr v7, v3

    aput v7, v2, v11

    move v11, v14

    goto :goto_0

    :cond_0
    aget v7, v0, v16

    mul-float/2addr v7, v5

    aget v11, v0, v13

    mul-float/2addr v11, v9

    add-float/2addr v7, v11

    aget v11, v0, v10

    mul-float/2addr v11, v12

    add-float/2addr v7, v11

    aget v11, v0, v6

    mul-float/2addr v11, v15

    add-float/2addr v7, v11

    add-int/lit8 v11, v1, -0x4

    aget v14, v0, v11

    mul-float/2addr v14, v12

    add-float/2addr v7, v14

    add-int/lit8 v14, v1, -0x5

    aget v17, v0, v14

    mul-float v17, v17, v9

    add-float v7, v7, v17

    add-int/lit8 v1, v1, -0x6

    aget v1, v0, v1

    mul-float/2addr v1, v5

    add-float/2addr v7, v1

    div-float/2addr v7, v3

    aput v7, v2, v6

    aget v1, v0, v4

    mul-float/2addr v1, v5

    aget v7, v0, v16

    mul-float/2addr v7, v9

    add-float/2addr v1, v7

    aget v7, v0, v13

    mul-float/2addr v7, v12

    add-float/2addr v1, v7

    aget v7, v0, v10

    mul-float/2addr v7, v15

    add-float/2addr v1, v7

    aget v7, v0, v6

    mul-float/2addr v7, v12

    add-float/2addr v1, v7

    aget v7, v0, v11

    mul-float/2addr v7, v9

    add-float/2addr v1, v7

    aget v7, v0, v14

    mul-float/2addr v7, v5

    add-float/2addr v1, v7

    div-float/2addr v1, v3

    aput v1, v2, v10

    aget v1, v0, v8

    mul-float/2addr v1, v5

    aget v4, v0, v4

    mul-float/2addr v4, v9

    add-float/2addr v1, v4

    aget v4, v0, v16

    mul-float/2addr v4, v12

    add-float/2addr v1, v4

    aget v4, v0, v13

    mul-float/2addr v15, v4

    add-float/2addr v1, v15

    aget v4, v0, v10

    mul-float/2addr v12, v4

    add-float/2addr v1, v12

    aget v4, v0, v6

    mul-float/2addr v9, v4

    add-float/2addr v1, v9

    aget v0, v0, v11

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    div-float/2addr v1, v3

    aput v1, v2, v13

    return-object v2
.end method

.method public static smoothNum([FI)[F
    .locals 7

    if-eqz p0, :cond_5

    array-length v0, p0

    if-lez v0, :cond_5

    if-gtz p1, :cond_0

    goto :goto_4

    :cond_0
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    add-int v3, v2, p1

    array-length v4, p0

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_1

    add-int v4, v2, v3

    aget v4, p0, v4

    add-float/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    int-to-float v3, p1

    div-float/2addr v5, v3

    aput v5, v0, v2

    goto :goto_3

    :cond_2
    array-length v3, p0

    sub-int/2addr v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_3

    add-int v6, v2, v4

    aget v6, p0, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    int-to-float v3, v3

    div-float/2addr v5, v3

    aput v5, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_4
    return-object p0
.end method

.method public static smoth5([F)[F
    .locals 8

    array-length v0, p0

    new-array v0, v0, [F

    array-length v1, p0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    aget v3, p0, v3

    aput v3, v0, v1

    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    array-length v4, p0

    sub-int/2addr v4, v3

    aget v4, p0, v4

    aput v4, v0, v1

    const/4 v1, 0x0

    aget v4, p0, v1

    aget v5, p0, v3

    add-float/2addr v4, v5

    aget v6, p0, v2

    add-float/2addr v4, v6

    const/4 v6, 0x3

    aget v7, p0, v6

    add-float/2addr v4, v7

    const/4 v7, 0x4

    aget v7, p0, v7

    add-float/2addr v4, v7

    aget v7, v0, v3

    aput v7, v0, v1

    aput v5, v0, v3

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, v6

    if-ge v2, v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v1, v4, v1

    aput v1, v0, v2

    add-int/lit8 v1, v2, -0x2

    aget v1, p0, v1

    sub-float/2addr v4, v1

    add-int/lit8 v1, v2, 0x3

    aget v1, p0, v1

    add-float/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
