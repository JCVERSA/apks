.class public final Ly77;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly77;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly77;

    invoke-direct {v0}, Ly77;-><init>()V

    sput-object v0, Ly77;->a:Ly77;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ly77;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFLr67;I)Lz77;
    .locals 53

    move-object/from16 v0, p0

    move/from16 v1, p4

    const/4 v4, 0x7

    const/4 v5, 0x1

    const-string v6, "config"

    move-object/from16 v7, p3

    invoke-static {v7, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    cmpg-float v8, p1, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v8, :cond_2

    cmpg-float v8, p2, v6

    if-gtz v8, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lr67;->getGapSizeRatio()F

    move-result v8

    invoke-static {v8, v6, v9}, Lwn8;->j(FFF)F

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lr67;->getMainPeakBrightness()F

    move-result v10

    invoke-static {v10, v6, v9}, Lwn8;->j(FFF)F

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lr67;->getSecondaryPeakBrightnessRatio()F

    move-result v11

    invoke-static {v11, v6, v9}, Lwn8;->j(FFF)F

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lr67;->getCurvePower()I

    move-result v12

    invoke-static {v12, v5, v4}, Lwn8;->k(III)I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Lr67;->getGapHardness()F

    move-result v13

    invoke-static {v13, v6, v9}, Lwn8;->j(FFF)F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lr67;->getGapBrightness()F

    move-result v14

    invoke-static {v14, v6, v9}, Lwn8;->j(FFF)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v4, p1, v15

    mul-float v2, p2, v15

    float-to-double v5, v2

    move/from16 v20, v10

    float-to-double v9, v4

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v21

    const v15, 0x40c90fdb

    move/from16 p1, v4

    float-to-double v3, v15

    div-double v0, v21, v3

    double-to-float v0, v0

    move v1, v12

    move v15, v13

    neg-double v12, v9

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    div-double/2addr v5, v3

    double-to-float v5, v5

    neg-float v2, v2

    float-to-double v12, v2

    move/from16 v2, p1

    neg-float v2, v2

    float-to-double v6, v2

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v21, 0x401921fb54442d18L    # 6.283185307179586

    add-double v6, v6, v21

    div-double/2addr v6, v3

    double-to-float v2, v6

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double v6, v6, v21

    div-double/2addr v6, v3

    double-to-float v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v9, v4, v3

    sub-float v4, v3, v2

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v6, v2, v5

    sub-float v7, v5, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v6, 0x3f7ae148    # 0.98f

    mul-float/2addr v4, v6

    const v6, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/16 v6, 0xff

    int-to-float v7, v6

    mul-float v10, v7, v20

    invoke-static {v10}, Ls86;->c(F)I

    move-result v8

    int-to-float v10, v8

    mul-float/2addr v11, v10

    invoke-static {v11}, Ls86;->c(F)I

    move-result v11

    mul-float/2addr v7, v14

    invoke-static {v7}, Ls86;->c(F)I

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v12, 0x0

    invoke-static {v7, v12, v6}, Lwn8;->k(III)I

    move-result v6

    const v7, 0x3f266666    # 0.65f

    mul-float/2addr v7, v15

    const/high16 v12, 0x3f400000    # 0.75f

    sub-float/2addr v12, v7

    mul-float/2addr v10, v12

    invoke-static {v10}, Ls86;->c(F)I

    move-result v7

    int-to-float v10, v11

    mul-float/2addr v12, v10

    invoke-static {v12}, Ls86;->c(F)I

    move-result v10

    sub-float/2addr v9, v4

    add-float/2addr v9, v0

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v9, v12

    sub-float v9, v0, v9

    sub-float v13, v5, v4

    sub-float v14, v13, v0

    mul-float/2addr v14, v12

    add-float/2addr v14, v0

    add-float v15, v5, v4

    sub-float v20, v2, v15

    mul-float v20, v20, v12

    sub-float v20, v2, v20

    sub-float v21, v3, v4

    sub-float v22, v21, v2

    mul-float v22, v22, v12

    add-float v22, v2, v22

    const v12, 0x3eaaaaab

    move/from16 p1, v5

    move/from16 p2, v6

    float-to-double v5, v12

    move/from16 v25, v13

    int-to-double v12, v1

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v1, v5, v1

    const v6, 0x3f2aaaab

    move/from16 v27, v8

    move/from16 v28, v9

    float-to-double v8, v6

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float v9, v5, v8

    sub-float v13, v25, v14

    const v5, 0x3eaaaaab

    mul-float v12, v13, v5

    add-float/2addr v12, v14

    mul-float/2addr v13, v6

    add-float/2addr v13, v14

    int-to-float v8, v10

    mul-float v26, v8, v1

    invoke-static/range {v26 .. v26}, Ls86;->c(F)I

    move-result v6

    mul-float v26, v8, v9

    invoke-static/range {v26 .. v26}, Ls86;->c(F)I

    sub-float v26, v20, v15

    mul-float v30, v26, v5

    add-float v30, v15, v30

    const v29, 0x3f2aaaab

    mul-float v26, v26, v29

    add-float v26, v15, v26

    int-to-float v5, v7

    mul-float/2addr v9, v5

    move/from16 v32, v7

    invoke-static {v9}, Ls86;->c(F)I

    move-result v7

    mul-float/2addr v5, v1

    invoke-static {v5}, Ls86;->c(F)I

    move-result v1

    sub-float v33, v21, v22

    const v31, 0x3eaaaaab

    mul-float v31, v31, v33

    add-float v31, v22, v31

    mul-float v33, v33, v29

    add-float v33, v22, v33

    invoke-static {v5}, Ls86;->c(F)I

    move-result v5

    invoke-static {v9}, Ls86;->c(F)I

    move-result v9

    add-float/2addr v4, v3

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v29, v19, v4

    add-float v34, v29, v28

    const/16 v18, 0x0

    cmpl-float v35, v34, v18

    if-lez v35, :cond_1

    div-float v23, v29, v34

    goto :goto_0

    :cond_1
    const/high16 v23, 0x3f000000    # 0.5f

    :goto_0
    mul-float v23, v23, v8

    invoke-static/range {v23 .. v23}, Ls86;->c(F)I

    move-result v8

    move/from16 v23, v5

    move/from16 v5, p2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 p2, v9

    new-instance v9, Lz77;

    move-object/from16 v29, v9

    const/16 v9, 0x14

    new-array v9, v9, [F

    const/16 v24, 0x0

    aput v18, v9, v24

    const/16 v17, 0x1

    aput v28, v9, v17

    const/16 v16, 0x2

    aput v0, v9, v16

    const/4 v0, 0x3

    aput v14, v9, v0

    const/4 v0, 0x4

    aput v12, v9, v0

    const/4 v0, 0x5

    aput v13, v9, v0

    const/4 v0, 0x6

    aput v25, v9, v0

    const/4 v0, 0x7

    aput p1, v9, v0

    const/16 v0, 0x8

    aput v15, v9, v0

    const/16 v0, 0x9

    aput v30, v9, v0

    const/16 v0, 0xa

    aput v26, v9, v0

    const/16 v0, 0xb

    aput v20, v9, v0

    const/16 v0, 0xc

    aput v2, v9, v0

    const/16 v0, 0xd

    aput v22, v9, v0

    const/16 v0, 0xe

    aput v31, v9, v0

    const/16 v0, 0xf

    aput v33, v9, v0

    const/16 v0, 0x10

    aput v21, v9, v0

    const/16 v0, 0x11

    aput v3, v9, v0

    const/16 v0, 0x12

    aput v4, v9, v0

    const/16 v0, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v9, v0

    move-object/from16 v0, p0

    move/from16 v2, p4

    invoke-virtual {v0, v2, v8}, Ly77;->b(II)I

    move-result v33

    invoke-virtual {v0, v2, v10}, Ly77;->b(II)I

    move-result v34

    invoke-virtual {v0, v2, v11}, Ly77;->b(II)I

    move-result v35

    invoke-virtual {v0, v2, v10}, Ly77;->b(II)I

    move-result v36

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ly77;->b(II)I

    move-result v37

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v38

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v39

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v40

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v41

    invoke-virtual {v0, v2, v7}, Ly77;->b(II)I

    move-result v42

    invoke-virtual {v0, v2, v1}, Ly77;->b(II)I

    move-result v43

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Ly77;->b(II)I

    move-result v44

    move/from16 v3, v27

    invoke-virtual {v0, v2, v3}, Ly77;->b(II)I

    move-result v45

    invoke-virtual {v0, v2, v1}, Ly77;->b(II)I

    move-result v46

    move/from16 v1, v23

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ly77;->b(II)I

    move-result v47

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Ly77;->b(II)I

    move-result v48

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v49

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v50

    invoke-virtual {v0, v2, v5}, Ly77;->b(II)I

    move-result v51

    invoke-virtual {v0, v2, v8}, Ly77;->b(II)I

    move-result v52

    filled-new-array/range {v33 .. v52}, [I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lr67;->getGapRotationDegrees()F

    move-result v1

    move-object/from16 v2, v29

    invoke-direct {v2, v9, v0, v1}, Lz77;-><init>([F[IF)V

    return-object v2

    :cond_2
    :goto_1
    new-instance v0, Lz77;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const v2, 0x33ffffff

    const v3, 0xdffffff

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lz77;-><init>([F[IF)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b(II)I
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0xff

    invoke-static {p2, p0, v0}, Lwn8;->k(III)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    const p2, 0xffffff

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public final c(Landroid/content/Context;I)Lr67;
    .locals 18

    move/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly77;->b:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    sget v7, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_rotation_square:I

    goto :goto_0

    :cond_0
    sget v7, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_rotation_capsule_v:I

    goto :goto_0

    :cond_1
    sget v7, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_rotation_capsule_h:I

    goto :goto_0

    :cond_2
    sget v7, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_rotation_circle:I

    :goto_0
    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_size_square:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_size_capsule_v:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_size_capsule_h:I

    goto :goto_1

    :cond_5
    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_size_circle:I

    :goto_1
    new-instance v4, Lr67;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v9, v5

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v10, v0, v5

    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_peak_brightness:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float v11, v0, v5

    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_secondary_ratio:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float v12, v0, v5

    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_curve_power:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sget v0, Lcom/transsion/widgetslib/R$integer;->os_liquid_outline_gap_brightness:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float v15, v0, v5

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v17}, Lr67;-><init>(FFFFIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    check-cast v4, Lr67;

    return-object v4
.end method

.method public final d(FFF)I
    .locals 3

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    const/4 v1, 0x2

    if-lez v0, :cond_3

    cmpg-float v0, p2, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    div-float v0, p1, p2

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const v2, 0x3f2aaaab

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p3, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p3, p0

    cmpl-float p0, p3, p1

    if-ltz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method
