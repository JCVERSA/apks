.class public abstract Lrr1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[D

.field public static final b:[D

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lrr1;->a:[D

    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lrr1;->b:[D

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lrr1;->c:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_1
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data
.end method

.method public static a(I)C
    .locals 1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x57

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method public static b(DIZI[ZLjava/lang/StringBuilder;)I
    .locals 43

    move/from16 v0, p2

    move-object/from16 v1, p6

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    invoke-static/range {p0 .. p1}, Lrr1;->m(D)I

    move-result v5

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    aput-boolean v2, p5, v6

    invoke-static/range {p0 .. p1}, Lrr1;->m(D)I

    move-result v5

    const v7, 0x7fffffff

    and-int/2addr v5, v7

    move-wide/from16 v7, p0

    invoke-static {v7, v8, v5}, Lrr1;->j(DI)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p0

    aput-boolean v6, p5, v6

    :goto_0
    invoke-static {v7, v8}, Lrr1;->m(D)I

    move-result v5

    const/high16 v9, 0x7ff00000

    and-int/2addr v5, v9

    const v10, 0xfffff

    if-ne v5, v9, :cond_2

    invoke-static {v7, v8}, Lrr1;->n(D)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v7, v8}, Lrr1;->m(D)I

    move-result v0

    and-int/2addr v0, v10

    if-nez v0, :cond_1

    const-string v0, "Infinity"

    goto :goto_1

    :cond_1
    const-string v0, "NaN"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x270f

    return v0

    :cond_2
    const-wide/16 v11, 0x0

    cmpl-double v5, v7, v11

    const/16 v9, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_3
    invoke-static {v7, v8, v3, v4}, Lrr1;->e(D[I[I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v7, v8}, Lrr1;->m(D)I

    move-result v13

    ushr-int/lit8 v13, v13, 0x14

    and-int/lit16 v13, v13, 0x7ff

    const/16 v14, 0x20

    const/4 v15, -0x1

    if-eqz v13, :cond_4

    invoke-static {v7, v8}, Lrr1;->m(D)I

    move-result v16

    and-int v16, v16, v10

    const/high16 v17, 0x3ff00000    # 1.875f

    or-int v10, v16, v17

    invoke-static {v7, v8, v10}, Lrr1;->j(DI)D

    move-result-wide v16

    add-int/lit16 v13, v13, -0x3ff

    move v9, v6

    move-wide/from16 v41, v16

    move-object/from16 v17, v3

    move-wide/from16 v2, v41

    goto :goto_3

    :cond_4
    aget v10, v4, v6

    aget v13, v3, v6

    add-int/2addr v10, v13

    add-int/lit16 v13, v10, 0x432

    if-le v13, v14, :cond_5

    invoke-static {v7, v8}, Lrr1;->m(D)I

    move-result v9

    move-object/from16 v17, v3

    int-to-long v2, v9

    rsub-int/lit8 v9, v13, 0x40

    shl-long/2addr v2, v9

    invoke-static {v7, v8}, Lrr1;->n(D)I

    move-result v9

    add-int/lit16 v13, v10, 0x412

    ushr-int/2addr v9, v13

    int-to-long v11, v9

    or-long/2addr v2, v11

    goto :goto_2

    :cond_5
    move-object/from16 v17, v3

    invoke-static {v7, v8}, Lrr1;->n(D)I

    move-result v2

    int-to-long v2, v2

    rsub-int/lit8 v9, v13, 0x20

    shl-long/2addr v2, v9

    :goto_2
    long-to-double v2, v2

    invoke-static {v2, v3}, Lrr1;->m(D)I

    move-result v9

    const/high16 v11, 0x1f00000

    sub-int/2addr v9, v11

    invoke-static {v2, v3, v9}, Lrr1;->j(DI)D

    move-result-wide v2

    add-int/lit8 v13, v10, -0x1

    const/4 v9, 0x1

    :goto_3
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v10

    const-wide v10, 0x3fd287a7636f4361L    # 0.289529654602168

    mul-double/2addr v2, v10

    const-wide v10, 0x3fc68a288b60c8b3L    # 0.1760912590558

    add-double/2addr v2, v10

    int-to-double v10, v13

    const-wide v19, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double v10, v10, v19

    add-double/2addr v2, v10

    double-to-int v10, v2

    const-wide/16 v11, 0x0

    cmpg-double v19, v2, v11

    if-gez v19, :cond_6

    int-to-double v11, v10

    cmpl-double v2, v2, v11

    if-eqz v2, :cond_6

    add-int/lit8 v10, v10, -0x1

    :cond_6
    if-ltz v10, :cond_8

    const/16 v2, 0x16

    if-gt v10, v2, :cond_8

    sget-object v2, Lrr1;->a:[D

    aget-wide v2, v2, v10

    cmpg-double v2, v7, v2

    if-gez v2, :cond_7

    add-int/lit8 v10, v10, -0x1

    :cond_7
    move v2, v6

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    aget v3, v4, v6

    sub-int/2addr v3, v13

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    if-ltz v3, :cond_9

    move v11, v3

    move v3, v6

    goto :goto_5

    :cond_9
    neg-int v3, v3

    move v11, v6

    :goto_5
    if-ltz v10, :cond_a

    add-int/2addr v11, v10

    move v12, v6

    move v13, v10

    goto :goto_6

    :cond_a
    sub-int/2addr v3, v10

    neg-int v12, v10

    move v13, v6

    :goto_6
    if-ltz v0, :cond_b

    const/16 v15, 0x9

    if-le v0, v15, :cond_c

    :cond_b
    move v0, v6

    :cond_c
    const/4 v15, 0x5

    if-le v0, v15, :cond_d

    add-int/lit8 v0, v0, -0x4

    move/from16 v19, v6

    goto :goto_7

    :cond_d
    const/16 v19, 0x1

    :goto_7
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    if-eq v0, v6, :cond_13

    if-eq v0, v15, :cond_11

    if-eq v0, v14, :cond_10

    const/4 v6, 0x4

    if-eq v0, v6, :cond_f

    const/4 v6, 0x5

    if-eq v0, v6, :cond_e

    move/from16 v22, p4

    const/4 v6, 0x0

    const/16 v23, 0x0

    :goto_8
    const/16 v24, 0x1

    goto :goto_c

    :cond_e
    const/4 v6, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_9
    add-int v22, p4, v10

    add-int/lit8 v23, v22, 0x1

    move/from16 v24, v6

    move/from16 v6, v23

    move/from16 v23, v22

    move/from16 v22, p4

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_a
    if-gtz p4, :cond_12

    const/16 v22, 0x1

    goto :goto_b

    :cond_12
    move/from16 v22, p4

    :goto_b
    move/from16 v24, v6

    move/from16 v6, v22

    move/from16 v23, v6

    goto :goto_c

    :cond_13
    const/4 v6, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    goto :goto_8

    :goto_c
    const/16 v14, 0xe

    const-wide/16 v25, 0x30

    const-wide/high16 v27, 0x4024000000000000L    # 10.0

    if-ltz v6, :cond_2d

    if-gt v6, v14, :cond_2d

    if-eqz v19, :cond_2d

    if-lez v10, :cond_17

    sget-object v19, Lrr1;->a:[D

    and-int/lit8 v29, v10, 0xf

    aget-wide v29, v19, v29

    shr-int/lit8 v19, v10, 0x4

    and-int/lit8 v31, v19, 0x10

    if-eqz v31, :cond_14

    and-int/lit8 v19, v19, 0xf

    sget-object v31, Lrr1;->b:[D

    const/16 v21, 0x4

    aget-wide v31, v31, v21

    div-double v31, v7, v31

    move-wide/from16 v33, v31

    move-wide/from16 v31, v29

    const/16 v30, 0x0

    move/from16 v29, v19

    const/16 v19, 0x3

    goto :goto_d

    :cond_14
    move-wide/from16 v33, v7

    move-wide/from16 v31, v29

    const/16 v30, 0x0

    move/from16 v29, v19

    const/16 v19, 0x2

    :goto_d
    if-eqz v29, :cond_16

    and-int/lit8 v35, v29, 0x1

    if-eqz v35, :cond_15

    add-int/lit8 v19, v19, 0x1

    sget-object v35, Lrr1;->b:[D

    aget-wide v35, v35, v30

    mul-double v31, v31, v35

    :cond_15
    shr-int/lit8 v29, v29, 0x1

    add-int/lit8 v30, v30, 0x1

    goto :goto_d

    :cond_16
    div-double v33, v33, v31

    move/from16 v14, v19

    goto :goto_f

    :cond_17
    neg-int v14, v10

    if-eqz v14, :cond_19

    sget-object v19, Lrr1;->a:[D

    and-int/lit8 v29, v14, 0xf

    aget-wide v29, v19, v29

    mul-double v29, v29, v7

    const/16 v19, 0x4

    shr-int/lit8 v14, v14, 0x4

    move/from16 v19, v14

    move-wide/from16 v33, v29

    const/4 v14, 0x2

    const/16 v29, 0x0

    :goto_e
    if-eqz v19, :cond_1a

    and-int/lit8 v30, v19, 0x1

    if-eqz v30, :cond_18

    add-int/lit8 v14, v14, 0x1

    sget-object v30, Lrr1;->b:[D

    aget-wide v30, v30, v29

    mul-double v33, v33, v30

    :cond_18
    shr-int/lit8 v19, v19, 0x1

    add-int/lit8 v29, v29, 0x1

    goto :goto_e

    :cond_19
    move-wide/from16 v33, v7

    const/4 v14, 0x2

    :cond_1a
    :goto_f
    if-eqz v2, :cond_1c

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v33, v29

    if-gez v19, :cond_1c

    if-lez v6, :cond_1c

    if-gtz v23, :cond_1b

    move v15, v6

    move-wide/from16 v31, v7

    move/from16 v29, v10

    const/16 v19, 0x1

    :goto_10
    move v8, v15

    goto :goto_11

    :cond_1b
    add-int/lit8 v19, v10, -0x1

    mul-double v33, v33, v27

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v31, v7

    move/from16 v29, v19

    move/from16 v15, v23

    const/16 v19, 0x0

    move v8, v6

    goto :goto_11

    :cond_1c
    move v15, v6

    move-wide/from16 v31, v7

    move/from16 v29, v10

    const/16 v19, 0x0

    goto :goto_10

    :goto_11
    int-to-double v6, v14

    mul-double v6, v6, v33

    const-wide/high16 v35, 0x401c000000000000L    # 7.0

    add-double v6, v6, v35

    invoke-static {v6, v7}, Lrr1;->m(D)I

    move-result v14

    const/high16 v35, 0x3400000

    sub-int v14, v14, v35

    invoke-static {v6, v7, v14}, Lrr1;->j(DI)D

    move-result-wide v6

    if-nez v15, :cond_1f

    const-wide/high16 v35, 0x4014000000000000L    # 5.0

    sub-double v33, v33, v35

    cmpl-double v14, v33, v6

    if-lez v14, :cond_1d

    const/16 v14, 0x31

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    add-int/lit8 v29, v29, 0x2

    return v29

    :cond_1d
    move v14, v10

    move/from16 v35, v11

    neg-double v10, v6

    cmpg-double v10, v33, v10

    if-gez v10, :cond_1e

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/16 v19, 0x1

    goto :goto_12

    :cond_1f
    move v14, v10

    move/from16 v35, v11

    :goto_12
    if-nez v19, :cond_2b

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-eqz v24, :cond_26

    sget-object v19, Lrr1;->a:[D

    add-int/lit8 v36, v15, -0x1

    aget-wide v36, v19, v36

    div-double v10, v10, v36

    sub-double/2addr v10, v6

    move/from16 v37, v2

    move/from16 v38, v3

    move/from16 v36, v8

    move-wide/from16 v7, v33

    const/4 v6, 0x0

    :goto_13
    double-to-long v2, v7

    move/from16 v39, v13

    move/from16 v40, v14

    long-to-double v13, v2

    sub-double v33, v7, v13

    add-long v2, v2, v25

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmpg-double v2, v33, v10

    if-gez v2, :cond_20

    const/4 v2, 0x1

    add-int/lit8 v29, v29, 0x1

    return v29

    :cond_20
    const/4 v2, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v7, v7, v33

    cmpg-double v3, v7, v10

    if-gez v3, :cond_23

    :cond_21
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x39

    if-eq v0, v3, :cond_22

    move v9, v0

    goto :goto_14

    :cond_22
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_21

    add-int/lit8 v29, v29, 0x1

    const/16 v9, 0x30

    :goto_14
    add-int/2addr v9, v2

    int-to-char v0, v9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v29, v29, 0x1

    return v29

    :cond_23
    add-int/2addr v6, v2

    if-lt v6, v15, :cond_25

    move-object v8, v4

    :cond_24
    const/16 v19, 0x1

    goto/16 :goto_17

    :cond_25
    mul-double v10, v10, v27

    mul-double v7, v33, v27

    move/from16 v13, v39

    move/from16 v14, v40

    goto :goto_13

    :cond_26
    move/from16 v37, v2

    move/from16 v38, v3

    move/from16 v36, v8

    move/from16 v39, v13

    move/from16 v40, v14

    sget-object v2, Lrr1;->a:[D

    add-int/lit8 v3, v15, -0x1

    aget-wide v2, v2, v3

    mul-double/2addr v6, v2

    move-wide/from16 v13, v33

    const/4 v2, 0x1

    :goto_15
    double-to-long v10, v13

    move-object v8, v4

    long-to-double v3, v10

    sub-double v33, v13, v3

    add-long v10, v10, v25

    long-to-int v3, v10

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v2, v15, :cond_2a

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v10, v6, v3

    cmpl-double v2, v33, v10

    if-lez v2, :cond_29

    :cond_27
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x39

    if-eq v0, v3, :cond_28

    move v9, v0

    goto :goto_16

    :cond_28
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_27

    add-int/lit8 v29, v29, 0x1

    const/16 v9, 0x30

    :goto_16
    add-int/2addr v9, v2

    int-to-char v0, v9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v29, v29, 0x1

    return v29

    :cond_29
    const/4 v2, 0x1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double v10, v3, v6

    cmpg-double v3, v33, v10

    if-gez v3, :cond_24

    invoke-static/range {p6 .. p6}, Lrr1;->k(Ljava/lang/StringBuilder;)V

    add-int/lit8 v29, v29, 0x1

    return v29

    :cond_2a
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v2, v2, 0x1

    mul-double v13, v33, v27

    move-object v4, v8

    goto :goto_15

    :cond_2b
    move/from16 v37, v2

    move/from16 v38, v3

    move/from16 v36, v8

    move/from16 v39, v13

    move/from16 v40, v14

    move-object v8, v4

    :goto_17
    const/4 v2, 0x0

    if-eqz v19, :cond_2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_18

    :cond_2c
    move/from16 v10, v29

    move-wide/from16 v31, v33

    goto :goto_19

    :cond_2d
    move/from16 v37, v2

    move/from16 v38, v3

    move/from16 v36, v6

    move-wide/from16 v31, v7

    move/from16 v40, v10

    move/from16 v35, v11

    move/from16 v39, v13

    const/4 v2, 0x0

    move-object v8, v4

    :goto_18
    move/from16 v15, v36

    move/from16 v10, v40

    :goto_19
    aget v3, v17, v2

    const-wide/16 v6, 0x1

    if-ltz v3, :cond_36

    const/16 v2, 0xe

    if-gt v10, v2, :cond_36

    sget-object v0, Lrr1;->a:[D

    aget-wide v13, v0, v10

    if-gez v22, :cond_30

    if-gtz v15, :cond_30

    if-ltz v15, :cond_2e

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v13, v2

    cmpg-double v0, v31, v13

    if-ltz v0, :cond_2e

    if-nez p3, :cond_2f

    cmpl-double v0, v31, v13

    if-nez v0, :cond_2f

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1a

    :cond_2f
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    add-int/2addr v10, v0

    return v10

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_30
    const/4 v0, 0x1

    :goto_1b
    div-double v2, v31, v13

    double-to-long v2, v2

    long-to-double v4, v2

    mul-double/2addr v4, v13

    sub-double v31, v31, v4

    add-long v4, v2, v25

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v0, v15, :cond_34

    add-double v31, v31, v31

    cmpl-double v0, v31, v13

    if-gtz v0, :cond_32

    if-nez v0, :cond_31

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_32

    if-eqz p3, :cond_31

    goto :goto_1c

    :cond_31
    const/4 v2, 0x1

    goto :goto_1e

    :cond_32
    :goto_1c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x39

    if-eq v0, v3, :cond_33

    move v9, v0

    goto :goto_1d

    :cond_33
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_32

    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0x30

    :goto_1d
    add-int/2addr v9, v2

    int-to-char v0, v9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_34
    const/4 v2, 0x1

    mul-double v31, v31, v27

    const-wide/16 v17, 0x0

    cmpl-double v3, v31, v17

    if-nez v3, :cond_35

    :goto_1e
    add-int/2addr v10, v2

    return v10

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_36
    if-eqz v24, :cond_3b

    const/4 v2, 0x2

    if-ge v0, v2, :cond_38

    if-eqz v9, :cond_37

    add-int/lit16 v3, v3, 0x433

    move v2, v3

    goto :goto_1f

    :cond_37
    const/4 v2, 0x0

    aget v3, v8, v2

    rsub-int/lit8 v2, v3, 0x36

    :goto_1f
    move v4, v2

    move v2, v12

    move/from16 v3, v38

    move/from16 v13, v39

    goto :goto_21

    :cond_38
    add-int/lit8 v2, v15, -0x1

    if-lt v12, v2, :cond_39

    sub-int v2, v12, v2

    move/from16 v13, v39

    move/from16 v41, v12

    move v12, v2

    move/from16 v2, v41

    goto :goto_20

    :cond_39
    sub-int/2addr v2, v12

    add-int v13, v39, v2

    add-int/2addr v12, v2

    move v2, v12

    const/4 v12, 0x0

    :goto_20
    if-gez v15, :cond_3a

    sub-int v3, v38, v15

    const/4 v4, 0x0

    goto :goto_21

    :cond_3a
    move v4, v15

    move/from16 v3, v38

    :goto_21
    add-int v8, v38, v4

    add-int v11, v35, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_22

    :cond_3b
    const/4 v4, 0x0

    move v2, v12

    move/from16 v11, v35

    move/from16 v3, v38

    move v8, v3

    move/from16 v13, v39

    :goto_22
    if-lez v3, :cond_3d

    if-lez v11, :cond_3d

    if-ge v3, v11, :cond_3c

    move v9, v3

    goto :goto_23

    :cond_3c
    move v9, v11

    :goto_23
    sub-int/2addr v8, v9

    sub-int/2addr v3, v9

    sub-int/2addr v11, v9

    :cond_3d
    if-lez v2, :cond_40

    if-eqz v24, :cond_3f

    if-lez v12, :cond_3e

    invoke-static {v4, v12}, Lrr1;->h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_3e
    sub-int/2addr v2, v12

    if-eqz v2, :cond_40

    invoke-static {v5, v2}, Lrr1;->h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_24

    :cond_3f
    invoke-static {v5, v2}, Lrr1;->h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    :cond_40
    :goto_24
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    if-lez v13, :cond_41

    invoke-static {v2, v13}, Lrr1;->h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_41
    const/4 v6, 0x2

    if-ge v0, v6, :cond_42

    invoke-static/range {v31 .. v32}, Lrr1;->n(D)I

    move-result v6

    if-nez v6, :cond_42

    invoke-static/range {v31 .. v32}, Lrr1;->m(D)I

    move-result v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    if-nez v6, :cond_42

    invoke-static/range {v31 .. v32}, Lrr1;->m(D)I

    move-result v6

    const/high16 v7, 0x7fe00000

    and-int/2addr v6, v7

    if-eqz v6, :cond_42

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_25

    :cond_42
    const/4 v6, 0x0

    :goto_25
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_26
    const/4 v14, 0x4

    if-ge v9, v14, :cond_44

    shl-int/lit8 v12, v12, 0x8

    array-length v14, v7

    if-ge v9, v14, :cond_43

    aget-byte v14, v7, v9

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    :cond_43
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_44
    if-eqz v13, :cond_45

    invoke-static {v12}, Lrr1;->f(I)I

    move-result v7

    const/16 v9, 0x20

    rsub-int/lit8 v7, v7, 0x20

    goto :goto_27

    :cond_45
    const/4 v7, 0x1

    :goto_27
    add-int/2addr v7, v11

    and-int/lit8 v7, v7, 0x1f

    if-eqz v7, :cond_46

    rsub-int/lit8 v7, v7, 0x20

    :cond_46
    const/4 v9, 0x4

    if-le v7, v9, :cond_47

    add-int/lit8 v7, v7, -0x4

    :goto_28
    add-int/2addr v8, v7

    add-int/2addr v3, v7

    add-int/2addr v11, v7

    goto :goto_29

    :cond_47
    if-ge v7, v9, :cond_48

    add-int/lit8 v7, v7, 0x1c

    goto :goto_28

    :cond_48
    :goto_29
    if-lez v8, :cond_49

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    :cond_49
    if-lez v11, :cond_4a

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_4a
    const-wide/16 v7, 0xa

    if-eqz v37, :cond_4c

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-gez v9, :cond_4c

    add-int/lit8 v10, v10, -0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v24, :cond_4b

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_4b
    move/from16 v15, v23

    :cond_4c
    if-gtz v15, :cond_4f

    const/4 v9, 0x2

    if-le v0, v9, :cond_4f

    if-ltz v15, :cond_4d

    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4d

    if-nez v0, :cond_4e

    if-nez p3, :cond_4e

    :cond_4d
    const/4 v0, 0x0

    goto :goto_2a

    :cond_4e
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    add-int/2addr v10, v0

    return v10

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    return v9

    :cond_4f
    const/4 v9, 0x1

    if-eqz v24, :cond_64

    if-lez v3, :cond_50

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_50
    if-eqz v6, :cond_51

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2b

    :cond_51
    move-object v3, v4

    :goto_2b
    move v6, v9

    :goto_2c
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v5

    aget-object v11, v5, v9

    const/4 v9, 0x0

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/16 v9, 0x30

    add-int/2addr v5, v9

    int-to-char v5, v5

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gtz v13, :cond_52

    const/4 v12, 0x1

    goto :goto_2d

    :cond_52
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v12

    :goto_2d
    if-nez v12, :cond_56

    if-nez v0, :cond_56

    invoke-static/range {v31 .. v32}, Lrr1;->n(D)I

    move-result v13

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-nez v13, :cond_57

    const/16 v13, 0x39

    if-ne v5, v13, :cond_54

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lrr1;->i(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_53

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    add-int/2addr v10, v14

    return v10

    :cond_54
    if-lez v9, :cond_55

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    :cond_55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v10, v14

    return v10

    :cond_56
    const/4 v14, 0x1

    :cond_57
    if-ltz v9, :cond_5e

    if-nez v9, :cond_58

    if-nez v0, :cond_58

    invoke-static/range {v31 .. v32}, Lrr1;->n(D)I

    move-result v9

    and-int/2addr v9, v14

    if-nez v9, :cond_58

    goto :goto_2f

    :cond_58
    if-lez v12, :cond_5b

    const/16 v9, 0x39

    if-ne v5, v9, :cond_5a

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lrr1;->i(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_59

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_59
    const/4 v0, 0x1

    add-int/2addr v10, v0

    return v10

    :cond_5a
    const/4 v0, 0x1

    add-int/2addr v5, v0

    int-to-char v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v10, v0

    return v10

    :cond_5b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v6, v15, :cond_5c

    const/4 v3, 0x1

    goto/16 :goto_33

    :cond_5c
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    if-ne v4, v3, :cond_5d

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v3

    goto :goto_2e

    :cond_5d
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_2e
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto/16 :goto_2c

    :cond_5e
    :goto_2f
    if-lez v12, :cond_5f

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_61

    if-nez v2, :cond_60

    and-int/lit8 v2, v5, 0x1

    if-eq v2, v0, :cond_61

    if-eqz p3, :cond_5f

    goto :goto_30

    :cond_5f
    const/4 v3, 0x1

    goto :goto_31

    :cond_60
    move v3, v0

    goto :goto_31

    :cond_61
    :goto_30
    add-int/lit8 v0, v5, 0x1

    int-to-char v0, v0

    const/16 v2, 0x39

    if-ne v5, v2, :cond_63

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lrr1;->i(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_62

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_62
    const/4 v3, 0x1

    add-int/2addr v10, v3

    return v10

    :cond_63
    const/4 v3, 0x1

    move v5, v0

    :goto_31
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v10, v3

    return v10

    :cond_64
    move v3, v9

    move v11, v3

    :goto_32
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v4, v0, v3

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v6, 0x30

    add-int/2addr v0, v6

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v11, v15, :cond_68

    move v5, v0

    move-object v11, v4

    :goto_33
    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_67

    if-nez v0, :cond_65

    and-int/lit8 v0, v5, 0x1

    if-eq v0, v3, :cond_67

    if-eqz p3, :cond_65

    goto :goto_34

    :cond_65
    invoke-static/range {p6 .. p6}, Lrr1;->k(Ljava/lang/StringBuilder;)V

    :cond_66
    const/4 v9, 0x1

    goto :goto_35

    :cond_67
    :goto_34
    invoke-static/range {p6 .. p6}, Lrr1;->i(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    add-int/2addr v10, v3

    return v10

    :goto_35
    add-int/2addr v10, v9

    return v10

    :cond_68
    move v9, v3

    const/16 v0, 0x31

    const/4 v3, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v11, v11, 0x1

    move-object v5, v4

    move v3, v9

    goto :goto_32
.end method

.method public static c(ID)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    if-gt v0, p0, :cond_16

    const/16 v0, 0x24

    if-gt p0, v0, :cond_16

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NaN"

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    cmpl-double p0, p1, v1

    if-lez p0, :cond_1

    const-string p0, "Infinity"

    goto :goto_0

    :cond_1
    const-string p0, "-Infinity"

    :goto_0
    return-object p0

    :cond_2
    cmpl-double v0, p1, v1

    if-nez v0, :cond_3

    const-string p0, "0"

    return-object p0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    neg-double p1, p1

    move v0, v2

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v5, v3

    long-to-double v7, v5

    cmpl-double v7, v7, v3

    if-nez v7, :cond_6

    if-eqz v0, :cond_5

    neg-long v5, v5

    :cond_5
    invoke-static {v5, v6, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const/16 v7, 0x34

    shr-long v7, v5, v7

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0x7ff

    const-wide v8, 0xfffffffffffffL

    if-nez v7, :cond_7

    and-long/2addr v5, v8

    shl-long/2addr v5, v2

    goto :goto_2

    :cond_7
    and-long/2addr v5, v8

    const-wide/high16 v8, 0x10000000000000L

    or-long/2addr v5, v8

    :goto_2
    if-eqz v0, :cond_8

    neg-long v5, v5

    :cond_8
    add-int/lit16 v7, v7, -0x433

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    if-lez v7, :cond_9

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    :cond_9
    if-gez v7, :cond_a

    neg-int v5, v7

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    cmpl-double v5, p1, v3

    if-nez v5, :cond_b

    return-object v0

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-double v3, p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x20

    shr-long v6, p1, v0

    long-to-int v0, v6

    long-to-int p1, p1

    new-array p2, v2, [I

    new-array v6, v2, [I

    invoke-static {v3, v4, p2, v6}, Lrr1;->e(D[I[I)Ljava/math/BigInteger;

    move-result-object v3

    ushr-int/lit8 v4, v0, 0x14

    and-int/lit16 v4, v4, 0x7ff

    neg-int v4, v4

    if-nez v4, :cond_c

    const/4 v4, -0x1

    :cond_c
    add-int/lit16 v6, v4, 0x434

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    if-nez p1, :cond_d

    const v10, 0xfffff

    and-int/2addr v10, v0

    if-nez v10, :cond_d

    const/high16 v10, 0x7fe00000

    and-int/2addr v0, v10

    if-eqz v0, :cond_d

    add-int/lit16 v6, v4, 0x435

    const-wide/16 v10, 0x2

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v0, v9

    :goto_5
    aget p2, p2, v1

    add-int/2addr p2, v6

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v6, p0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    move p0, v1

    :goto_6
    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p2

    aget-object v6, p2, v2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    int-to-char p2, p2

    if-ne v9, v0, :cond_e

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v9, v0

    goto :goto_7

    :cond_e
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v9, v7

    :goto_7
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gtz v10, :cond_f

    move v8, v2

    goto :goto_8

    :cond_f
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    :goto_8
    if-nez v8, :cond_11

    and-int/lit8 v10, p1, 0x1

    if-nez v10, :cond_11

    if-lez v7, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    move p0, v2

    goto :goto_c

    :cond_11
    if-ltz v7, :cond_13

    if-nez v7, :cond_12

    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_12

    goto :goto_b

    :cond_12
    if-lez v8, :cond_14

    :goto_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_13
    :goto_b
    if-lez v8, :cond_10

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-lez p0, :cond_10

    goto :goto_a

    :cond_14
    :goto_c
    invoke-static {p2}, Lrr1;->a(I)C

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_15

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    move-object p2, v6

    goto :goto_6

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad base: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/StringBuilder;IID)V
    .locals 11

    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne p1, v10, :cond_1

    const-wide v1, 0x444b1ae4d6e2ef50L    # 1.0E21

    cmpl-double v1, p3, v1

    if-gez v1, :cond_0

    const-wide v1, -0x3bb4e51b291d10b0L    # -1.0E21

    cmpg-double v1, p3, v1

    if-gtz v1, :cond_1

    :cond_0
    move p1, v9

    :cond_1
    sget-object v1, Lrr1;->c:[I

    aget v3, v1, p1

    if-lt p1, v10, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v9

    :goto_0
    move-wide v1, p3

    move v5, p2

    move-object v6, v8

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lrr1;->b(DIZI[ZLjava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x270f

    if-eq v1, v3, :cond_12

    const/4 v3, -0x5

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v10, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    move p1, v9

    move p2, p1

    goto :goto_4

    :cond_3
    if-lt v1, v3, :cond_5

    if-le v1, p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v9

    goto :goto_4

    :cond_5
    :goto_2
    move p1, v0

    goto :goto_4

    :cond_6
    if-ltz p2, :cond_9

    add-int/2addr p2, v1

    goto :goto_1

    :cond_7
    move p2, v9

    goto :goto_2

    :cond_8
    if-lt v1, v3, :cond_a

    const/16 p1, 0x15

    if-le v1, p1, :cond_9

    goto :goto_3

    :cond_9
    move p2, v1

    goto :goto_1

    :cond_a
    :goto_3
    move p1, v0

    move p2, v9

    :goto_4
    const/16 v3, 0x30

    if-ge v2, p2, :cond_c

    :cond_b
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, p2, :cond_b

    move v2, p2

    :cond_c
    const/16 p2, 0x2e

    if-eqz p1, :cond_f

    if-eq v2, v0, :cond_d

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_d
    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v0

    if-ltz v1, :cond_e

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_f
    if-eq v1, v2, :cond_12

    if-lez v1, :cond_10

    invoke-virtual {p0, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_10
    move p1, v9

    :goto_5
    rsub-int/lit8 v2, v1, 0x1

    if-ge p1, v2, :cond_11

    invoke-virtual {p0, v9, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_12
    :goto_6
    aget-boolean p1, v8, v9

    if-eqz p1, :cond_15

    invoke-static {p3, p4}, Lrr1;->m(D)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_13

    invoke-static {p3, p4}, Lrr1;->n(D)I

    move-result p1

    if-eqz p1, :cond_15

    :cond_13
    invoke-static {p3, p4}, Lrr1;->m(D)I

    move-result p1

    const/high16 p2, 0x7ff00000

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_14

    invoke-static {p3, p4}, Lrr1;->n(D)I

    move-result p1

    if-nez p1, :cond_15

    invoke-static {p3, p4}, Lrr1;->m(D)I

    move-result p1

    const p2, 0xfffff

    and-int/2addr p1, p2

    if-nez p1, :cond_15

    :cond_14
    const/16 p1, 0x2d

    invoke-virtual {p0, v9, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_15
    return-void
.end method

.method public static e(D[I[I)Ljava/math/BigInteger;
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    long-to-int p0, p0

    const p1, 0xfffff

    and-int/2addr p1, v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    const/high16 v2, 0x100000

    or-int/2addr p1, v2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    const/16 v5, 0x8

    new-array v5, v5, [B

    invoke-static {p0}, Lrr1;->g(I)I

    move-result v6

    ushr-int/2addr p0, v6

    if-eqz v6, :cond_1

    rsub-int/lit8 v7, v6, 0x20

    shl-int v7, p1, v7

    or-int/2addr p0, v7

    invoke-static {v5, v3, p0}, Lrr1;->l([BII)V

    shr-int/2addr p1, v6

    goto :goto_0

    :cond_1
    invoke-static {v5, v3, p0}, Lrr1;->l([BII)V

    :goto_0
    invoke-static {v5, v4, p1}, Lrr1;->l([BII)V

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    new-array v5, v3, [B

    invoke-static {p1}, Lrr1;->g(I)I

    move-result p0

    ushr-int/2addr p1, p0

    invoke-static {v5, v4, p1}, Lrr1;->l([BII)V

    add-int/lit8 v6, p0, 0x20

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    add-int/lit16 v1, v1, -0x433

    add-int/2addr v1, v6

    aput v1, p2, v4

    rsub-int/lit8 p0, v6, 0x35

    aput p0, p3, v4

    goto :goto_2

    :cond_4
    add-int/lit16 v1, v1, -0x432

    add-int/2addr v1, v6

    aput v1, p2, v4

    mul-int/2addr v2, v0

    invoke-static {p1}, Lrr1;->f(I)I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, p3, v4

    :goto_2
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v5}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static f(I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    shl-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    :cond_1
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    :cond_2
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_3
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p0, v1

    if-nez p0, :cond_4

    const/16 p0, 0x20

    return p0

    :cond_4
    return v0
.end method

.method public static g(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    ushr-int/lit8 p0, p0, 0x10

    const/16 v1, 0x10

    :cond_3
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_4
    and-int/lit8 v0, p0, 0xf

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_5
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 p0, p0, 0x2

    :cond_6
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    ushr-int/2addr p0, v2

    and-int/2addr p0, v2

    if-nez p0, :cond_7

    const/16 p0, 0x20

    return p0

    :cond_7
    return v1
.end method

.method public static h(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/StringBuilder;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-eq v4, v5, :cond_0

    add-int/2addr v4, v2

    int-to-char v2, v4

    invoke-virtual {p0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return v2
.end method

.method public static j(DI)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static k(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public static l([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static m(D)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static n(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
