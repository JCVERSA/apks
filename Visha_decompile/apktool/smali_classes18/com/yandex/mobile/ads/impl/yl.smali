.class public final Lcom/yandex/mobile/ads/impl/yl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "originalBitmap"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/yl;->b(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 34

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ls86;->b(D)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Ls86;->b(D)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createScaledBitmap(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v1, v12

    new-array v14, v13, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    move-object v5, v14

    move v7, v1

    move v10, v1

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v12, -0x1

    new-array v6, v13, [I

    new-array v7, v13, [I

    new-array v8, v13, [I

    invoke-static {v1, v12}, Lwn8;->d(II)I

    move-result v9

    new-array v9, v9, [I

    const/16 v10, 0x400

    new-array v11, v10, [I

    move v13, v2

    :goto_0
    if-ge v13, v10, :cond_0

    div-int/lit8 v15, v13, 0x4

    aput v15, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x3

    new-array v13, v10, [[I

    move v15, v2

    :goto_1
    if-ge v15, v10, :cond_1

    new-array v2, v10, [I

    aput-object v2, v13, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    const/16 v17, -0x1

    const/16 v18, 0x2

    if-ge v2, v12, :cond_6

    move/from16 v10, v17

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_3
    const v27, 0xff00

    const/high16 v28, 0xff0000

    if-gt v10, v3, :cond_3

    move-object/from16 v29, v0

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lwn8;->d(II)I

    move-result v0

    invoke-static {v4, v0}, Lwn8;->g(II)I

    move-result v0

    add-int/2addr v0, v15

    aget v0, v14, v0

    add-int/lit8 v30, v10, 0x1

    aget-object v31, v13, v30

    and-int v28, v0, v28

    shr-int/lit8 v28, v28, 0x10

    aput v28, v31, v3

    and-int v27, v0, v27

    shr-int/lit8 v27, v27, 0x8

    const/16 v28, 0x1

    aput v27, v31, v28

    and-int/lit16 v0, v0, 0xff

    aput v0, v31, v18

    invoke-static {v10}, Ljava/lang/StrictMath;->abs(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2

    aget v27, v31, v3

    mul-int v3, v27, v0

    add-int v17, v3, v17

    aget v3, v31, v28

    mul-int v28, v3, v0

    add-int v19, v28, v19

    aget v28, v31, v18

    mul-int v0, v0, v28

    add-int v20, v0, v20

    if-lez v10, :cond_2

    add-int v26, v26, v27

    add-int v25, v25, v3

    add-int v24, v24, v28

    goto :goto_4

    :cond_2
    add-int v23, v23, v27

    add-int v22, v22, v3

    add-int v21, v21, v28

    :goto_4
    move-object/from16 v0, v29

    move/from16 v10, v30

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v29, v0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_5
    if-ge v0, v1, :cond_5

    aget v10, v11, v17

    aput v10, v6, v15

    aget v10, v11, v19

    aput v10, v7, v15

    aget v10, v11, v20

    aput v10, v8, v15

    sub-int v17, v17, v23

    sub-int v19, v19, v22

    sub-int v20, v20, v21

    add-int/lit8 v10, v3, 0x2

    const/16 v30, 0x3

    rem-int/lit8 v10, v10, 0x3

    aget-object v10, v13, v10

    const/16 v30, 0x0

    aget v31, v10, v30

    sub-int v23, v23, v31

    const/16 v30, 0x1

    aget v31, v10, v30

    sub-int v22, v22, v31

    aget v30, v10, v18

    sub-int v21, v21, v30

    if-nez v2, :cond_4

    move-object/from16 v30, v11

    add-int/lit8 v11, v0, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v9, v0

    goto :goto_6

    :cond_4
    move-object/from16 v30, v11

    :goto_6
    aget v11, v9, v0

    add-int v11, v16, v11

    aget v11, v14, v11

    and-int v31, v11, v28

    shr-int/lit8 v31, v31, 0x10

    const/16 v32, 0x0

    aput v31, v10, v32

    and-int v32, v11, v27

    shr-int/lit8 v32, v32, 0x8

    const/16 v33, 0x1

    aput v32, v10, v33

    and-int/lit16 v11, v11, 0xff

    aput v11, v10, v18

    add-int v26, v26, v31

    add-int v25, v25, v32

    add-int v24, v24, v11

    add-int v17, v17, v26

    add-int v19, v19, v25

    add-int v20, v20, v24

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x3

    rem-int/2addr v3, v10

    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v13, v10

    const/4 v11, 0x0

    aget v31, v10, v11

    add-int v23, v23, v31

    const/4 v11, 0x1

    aget v32, v10, v11

    add-int v22, v22, v32

    aget v10, v10, v18

    add-int v21, v21, v10

    sub-int v26, v26, v31

    sub-int v25, v25, v32

    sub-int v24, v24, v10

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v30

    goto/16 :goto_5

    :cond_5
    move-object/from16 v30, v11

    add-int v16, v16, v1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v29

    const/4 v3, 0x1

    const/4 v10, 0x3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v29, v0

    move-object/from16 v30, v11

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_c

    mul-int/lit8 v0, v1, -0x1

    move-object/from16 v21, v9

    move/from16 v23, v12

    move-object/from16 v22, v14

    move/from16 v12, v17

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move v9, v0

    const/4 v0, 0x0

    :goto_8
    if-gt v12, v14, :cond_9

    const/4 v14, 0x0

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int v24, v24, v3

    add-int/lit8 v25, v12, 0x1

    aget-object v26, v13, v25

    aget v27, v6, v24

    aput v27, v26, v14

    aget v14, v7, v24

    const/16 v27, 0x1

    aput v14, v26, v27

    aget v14, v8, v24

    aput v14, v26, v18

    invoke-static {v12}, Ljava/lang/StrictMath;->abs(I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x2

    aget v27, v6, v24

    mul-int v27, v27, v14

    add-int v0, v27, v0

    aget v27, v7, v24

    mul-int v27, v27, v14

    add-int v2, v27, v2

    aget v24, v8, v24

    mul-int v24, v24, v14

    add-int v4, v24, v4

    if-lez v12, :cond_7

    const/4 v14, 0x0

    aget v24, v26, v14

    add-int v20, v20, v24

    const/16 v24, 0x1

    aget v27, v26, v24

    add-int v19, v19, v27

    aget v26, v26, v18

    add-int v16, v16, v26

    goto :goto_9

    :cond_7
    const/4 v14, 0x0

    const/16 v24, 0x1

    aget v27, v26, v14

    add-int v15, v15, v27

    aget v14, v26, v24

    add-int/2addr v11, v14

    aget v14, v26, v18

    add-int/2addr v10, v14

    :goto_9
    if-ge v12, v5, :cond_8

    add-int/2addr v9, v1

    :cond_8
    move/from16 v12, v25

    const/4 v14, 0x1

    goto :goto_8

    :cond_9
    move v14, v3

    move v9, v4

    move/from16 v12, v23

    const/4 v4, 0x0

    const/16 v28, 0x1

    :goto_a
    if-ge v4, v12, :cond_b

    aget v23, v22, v14

    const/high16 v24, -0x1000000

    and-int v23, v23, v24

    aget v24, v30, v0

    shl-int/lit8 v24, v24, 0x10

    or-int v23, v23, v24

    aget v24, v30, v2

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    aget v24, v30, v9

    or-int v23, v23, v24

    aput v23, v22, v14

    sub-int/2addr v0, v15

    sub-int/2addr v2, v11

    sub-int/2addr v9, v10

    add-int/lit8 v23, v28, 0x2

    const/16 v24, 0x3

    rem-int/lit8 v23, v23, 0x3

    aget-object v23, v13, v23

    const/16 v24, 0x0

    aget v25, v23, v24

    sub-int v15, v15, v25

    const/16 v24, 0x1

    aget v25, v23, v24

    sub-int v11, v11, v25

    aget v24, v23, v18

    sub-int v10, v10, v24

    if-nez v3, :cond_a

    move/from16 v24, v12

    add-int/lit8 v12, v4, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    mul-int/2addr v12, v1

    aput v12, v21, v4

    goto :goto_b

    :cond_a
    move/from16 v24, v12

    :goto_b
    aget v12, v21, v4

    add-int/2addr v12, v3

    aget v25, v6, v12

    const/16 v26, 0x0

    aput v25, v23, v26

    aget v26, v7, v12

    const/16 v27, 0x1

    aput v26, v23, v27

    aget v12, v8, v12

    aput v12, v23, v18

    add-int v20, v20, v25

    add-int v19, v19, v26

    add-int v16, v16, v12

    add-int v0, v0, v20

    add-int v2, v2, v19

    add-int v9, v9, v16

    add-int/lit8 v28, v28, 0x1

    const/4 v12, 0x3

    rem-int/lit8 v28, v28, 0x3

    aget-object v23, v13, v28

    const/16 v25, 0x0

    aget v26, v23, v25

    add-int v15, v15, v26

    const/16 v27, 0x1

    aget v31, v23, v27

    add-int v11, v11, v31

    aget v23, v23, v18

    add-int v10, v10, v23

    sub-int v20, v20, v26

    sub-int v19, v19, v31

    sub-int v16, v16, v23

    add-int/2addr v14, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v24

    goto/16 :goto_a

    :cond_b
    move/from16 v24, v12

    const/4 v12, 0x3

    const/16 v25, 0x0

    const/16 v27, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v21

    move-object/from16 v14, v22

    move/from16 v12, v24

    goto/16 :goto_7

    :cond_c
    move/from16 v24, v12

    move-object/from16 v22, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, v29

    move-object/from16 v5, v22

    move v7, v1

    move v10, v1

    move/from16 v11, v24

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-static/range {v29 .. v29}, Ly45;->g(Ljava/lang/Object;)V

    return-object v29
.end method
