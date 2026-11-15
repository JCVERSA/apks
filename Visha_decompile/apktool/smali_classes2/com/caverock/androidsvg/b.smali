.class public Lcom/caverock/androidsvg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/b$g;,
        Lcom/caverock/androidsvg/b$b;,
        Lcom/caverock/androidsvg/b$c;,
        Lcom/caverock/androidsvg/b$d;,
        Lcom/caverock/androidsvg/b$i;,
        Lcom/caverock/androidsvg/b$k;,
        Lcom/caverock/androidsvg/b$e;,
        Lcom/caverock/androidsvg/b$j;,
        Lcom/caverock/androidsvg/b$f;,
        Lcom/caverock/androidsvg/b$h;
    }
.end annotation


# static fields
.field public static i:Ljava/util/HashSet;


# instance fields
.field public a:Landroid/graphics/Canvas;

.field public b:F

.field public c:Lcom/caverock/androidsvg/SVG;

.field public d:Lcom/caverock/androidsvg/b$h;

.field public e:Ljava/util/Stack;

.field public f:Ljava/util/Stack;

.field public g:Ljava/util/Stack;

.field public h:Lcom/caverock/androidsvg/CSSParser$m;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->h:Lcom/caverock/androidsvg/CSSParser$m;

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iput p2, p0, Lcom/caverock/androidsvg/b;->b:F

    return-void
.end method

.method public static varargs F(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized V()V
    .locals 3

    const-class v0, Lcom/caverock/androidsvg/b;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Structure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "BasicStructure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "ConditionalProcessing"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Style"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "ViewportAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Shape"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "BasicText"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "PaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "BasicPaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "OpacityAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "BasicGraphicsAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Marker"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Gradient"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Clip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "BasicClip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "Mask"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static varargs Z0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/caverock/androidsvg/b;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/caverock/androidsvg/b;)Lcom/caverock/androidsvg/b$h;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-object p0
.end method

.method public static synthetic d(Lcom/caverock/androidsvg/b;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(FFFFFZZFFLcom/caverock/androidsvg/SVG$w;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/b;->h(FFFFFZZFFLcom/caverock/androidsvg/SVG$w;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static h(FFFFFZZFFLcom/caverock/androidsvg/SVG$w;)V
    .locals 31

    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    cmpl-float v4, p0, v2

    if-nez v4, :cond_0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-eqz v5, :cond_a

    cmpl-float v4, p3, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p9

    move v1, v2

    goto/16 :goto_4

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v0

    const-wide v8, 0x4076800000000000L    # 360.0

    rem-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    sub-float v10, p0, v2

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-float v14, p1, v3

    float-to-double v14, v14

    div-double/2addr v14, v12

    mul-double v16, v8, v10

    mul-double v18, v6, v14

    add-double v12, v16, v18

    neg-double v2, v6

    mul-double/2addr v2, v10

    mul-double/2addr v14, v8

    add-double/2addr v2, v14

    mul-float v10, v4, v4

    float-to-double v10, v10

    mul-float v14, v5, v5

    float-to-double v14, v14

    mul-double v16, v12, v12

    mul-double v18, v2, v2

    div-double v20, v16, v10

    div-double v22, v18, v14

    add-double v20, v20, v22

    const-wide v22, 0x3fefffeb074a771dL    # 0.99999

    cmpl-double v22, v20, v22

    if-lez v22, :cond_2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide v14, 0x3ff0000a7c5ac472L    # 1.00001

    mul-double/2addr v10, v14

    float-to-double v14, v4

    mul-double/2addr v14, v10

    double-to-float v4, v14

    float-to-double v14, v5

    mul-double/2addr v10, v14

    double-to-float v5, v10

    mul-float v10, v4, v4

    float-to-double v10, v10

    mul-float v14, v5, v5

    float-to-double v14, v14

    :cond_2
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    move-wide/from16 v24, v22

    goto :goto_0

    :cond_3
    move-wide/from16 v24, v20

    :goto_0
    mul-double v26, v10, v14

    mul-double v10, v10, v18

    sub-double v26, v26, v10

    mul-double v14, v14, v16

    sub-double v26, v26, v14

    add-double/2addr v10, v14

    div-double v26, v26, v10

    const-wide/16 v10, 0x0

    cmpg-double v0, v26, v10

    if-gez v0, :cond_4

    move-wide/from16 v26, v10

    :cond_4
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double v24, v24, v14

    float-to-double v14, v4

    mul-double v16, v14, v2

    float-to-double v10, v5

    div-double v16, v16, v10

    mul-double v16, v16, v24

    mul-double v26, v10, v12

    move v0, v4

    move/from16 v28, v5

    div-double v4, v26, v14

    neg-double v4, v4

    mul-double v24, v24, v4

    move/from16 v4, p7

    add-float v5, p0, v4

    float-to-double v4, v5

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    div-double v4, v4, v26

    move/from16 p2, v0

    move/from16 v0, p8

    add-float v1, p1, v0

    float-to-double v0, v1

    div-double v0, v0, v26

    mul-double v26, v8, v16

    mul-double v29, v6, v24

    sub-double v26, v26, v29

    add-double v4, v4, v26

    mul-double v6, v6, v16

    mul-double v8, v8, v24

    add-double/2addr v6, v8

    add-double/2addr v0, v6

    sub-double v6, v12, v16

    div-double/2addr v6, v14

    sub-double v8, v2, v24

    div-double/2addr v8, v10

    neg-double v12, v12

    sub-double v12, v12, v16

    div-double/2addr v12, v14

    neg-double v2, v2

    sub-double v2, v2, v24

    div-double/2addr v2, v10

    mul-double v10, v6, v6

    mul-double v14, v8, v8

    add-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v24, v8, v16

    if-gez v24, :cond_5

    move-wide/from16 v16, v22

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v20

    :goto_1
    div-double v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    mul-double v16, v16, v14

    mul-double v14, v12, v12

    mul-double v24, v2, v2

    add-double v14, v14, v24

    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v14, v6, v12

    mul-double v24, v8, v2

    add-double v14, v14, v24

    mul-double/2addr v6, v2

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    const-wide/16 v2, 0x0

    cmpg-double v6, v6, v2

    if-gez v6, :cond_6

    move-wide/from16 v20, v22

    :cond_6
    div-double/2addr v14, v10

    invoke-static {v14, v15}, Lcom/caverock/androidsvg/b;->v(D)D

    move-result-wide v6

    mul-double v20, v20, v6

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    if-nez p6, :cond_7

    cmpl-double v8, v20, v2

    if-lez v8, :cond_7

    sub-double v20, v20, v6

    goto :goto_2

    :cond_7
    if-eqz p6, :cond_8

    cmpg-double v2, v20, v2

    if-gez v2, :cond_8

    add-double v20, v20, v6

    :cond_8
    :goto_2
    rem-double v2, v20, v6

    rem-double v6, v16, v6

    invoke-static {v6, v7, v2, v3}, Lcom/caverock/androidsvg/b;->i(DD)[F

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v6, p2

    move/from16 v7, v28

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v6, p4

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v4, v4

    double-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    move/from16 v1, p7

    aput v1, v2, v0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move/from16 v3, p8

    aput v3, v2, v0

    const/4 v0, 0x0

    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_9

    aget v1, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, v2, v5

    add-int/lit8 v6, v0, 0x4

    aget v6, v2, v6

    add-int/lit8 v7, v0, 0x5

    aget v7, v2, v7

    move-object/from16 p0, p9

    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    invoke-interface/range {p0 .. p6}, Lcom/caverock/androidsvg/SVG$w;->d(FFFFFF)V

    add-int/lit8 v0, v0, 0x6

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    move v1, v2

    move-object/from16 v0, p9

    :goto_4
    invoke-interface {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$w;->b(FF)V

    return-void
.end method

.method public static i(DD)[F
    .locals 17

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v4, v0

    div-double v4, p2, v4

    div-double v1, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    add-double/2addr v1, v8

    div-double/2addr v6, v1

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-double v8, v2

    mul-double/2addr v8, v4

    add-double v8, p0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-int/lit8 v14, v3, 0x1

    mul-double v15, v6, v12

    move-wide/from16 p2, v4

    sub-double v4, v10, v15

    double-to-float v4, v4

    aput v4, v1, v3

    add-int/lit8 v4, v3, 0x2

    mul-double/2addr v10, v6

    add-double/2addr v12, v10

    double-to-float v5, v12

    aput v5, v1, v14

    move-wide/from16 v10, p2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    add-int/lit8 v5, v3, 0x3

    mul-double v14, v6, v8

    add-double/2addr v14, v12

    double-to-float v14, v14

    aput v14, v1, v4

    add-int/lit8 v4, v3, 0x4

    mul-double v14, v6, v12

    sub-double v14, v8, v14

    double-to-float v14, v14

    aput v14, v1, v5

    add-int/lit8 v5, v3, 0x5

    double-to-float v12, v12

    aput v12, v1, v4

    add-int/lit8 v3, v3, 0x6

    double-to-float v4, v8

    aput v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v10

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static v(D)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static w(F)I
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static x(IF)I
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    shl-int/lit8 p1, v1, 0x18

    const v0, 0xffffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static varargs y(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final A0(Lcom/caverock/androidsvg/SVG$l0;)V
    .locals 1

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$s;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->u(Lcom/caverock/androidsvg/SVG$l0;)V

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$d0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/caverock/androidsvg/SVG$d0;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->x0(Lcom/caverock/androidsvg/SVG$d0;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$b1;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/caverock/androidsvg/SVG$b1;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->E0(Lcom/caverock/androidsvg/SVG$b1;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$q0;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/caverock/androidsvg/SVG$q0;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->B0(Lcom/caverock/androidsvg/SVG$q0;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$l;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/caverock/androidsvg/SVG$l;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->q0(Lcom/caverock/androidsvg/SVG$l;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$n;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/caverock/androidsvg/SVG$n;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r0(Lcom/caverock/androidsvg/SVG$n;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$u;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/caverock/androidsvg/SVG$u;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->t0(Lcom/caverock/androidsvg/SVG$u;)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$a0;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/caverock/androidsvg/SVG$a0;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->w0(Lcom/caverock/androidsvg/SVG$a0;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$d;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/caverock/androidsvg/SVG$d;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->o0(Lcom/caverock/androidsvg/SVG$d;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$i;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/caverock/androidsvg/SVG$i;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p0(Lcom/caverock/androidsvg/SVG$i;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$p;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/caverock/androidsvg/SVG$p;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->s0(Lcom/caverock/androidsvg/SVG$p;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$z;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/caverock/androidsvg/SVG$z;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->v0(Lcom/caverock/androidsvg/SVG$z;)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$y;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/caverock/androidsvg/SVG$y;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->u0(Lcom/caverock/androidsvg/SVG$y;)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$u0;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/caverock/androidsvg/SVG$u0;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->D0(Lcom/caverock/androidsvg/SVG$u0;)V

    :cond_d
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    return-void
.end method

.method public final B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$t;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    check-cast v0, Lcom/caverock/androidsvg/SVG$t;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$t;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$x;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/caverock/androidsvg/SVG$x;

    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/b;->L(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$x;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final B0(Lcom/caverock/androidsvg/SVG$q0;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Switch render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$l;->o:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->K0(Lcom/caverock/androidsvg/SVG$q0;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    return-void
.end method

.method public final C(Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v1, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->M:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p1, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v3, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v4, v4, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final C0(Lcom/caverock/androidsvg/SVG$r0;Lcom/caverock/androidsvg/SVG$b;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Symbol render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->e:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v1, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-object p2, v1, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget-object p2, v1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p2, p2, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget v1, p2, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$b;->b:F

    iget v3, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget p2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/caverock/androidsvg/b;->O0(FFFF)V

    :cond_2
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v2, v2, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, v2, p2, v0}, Lcom/caverock/androidsvg/b;->o(Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    iput-object v0, p2, Lcom/caverock/androidsvg/b$h;->g:Lcom/caverock/androidsvg/SVG$b;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget v1, v0, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v0, v0, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->F0(Lcom/caverock/androidsvg/SVG$h0;Z)V

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final D(FFFF)F
    .locals 0

    mul-float/2addr p1, p3

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    return p1
.end method

.method public final D0(Lcom/caverock/androidsvg/SVG$u0;)V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Text render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v1, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$u0;->s:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$y0;->o:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$y0;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$y0;->p:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$y0;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$y0;->q:Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$y0;->q:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$y0;->r:Ljava/util/List;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$y0;->r:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v2

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->O()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v5, :cond_b

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->n(Lcom/caverock/androidsvg/SVG$w0;)F

    move-result v5

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v6, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    :cond_a
    sub-float/2addr v1, v5

    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v0, :cond_c

    new-instance v0, Lcom/caverock/androidsvg/b$i;

    invoke-direct {v0, p0, v1, v3}, Lcom/caverock/androidsvg/b$i;-><init>(Lcom/caverock/androidsvg/b;FF)V

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    new-instance v5, Lcom/caverock/androidsvg/SVG$b;

    iget-object v6, v0, Lcom/caverock/androidsvg/b$i;->d:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v0, v0, Lcom/caverock/androidsvg/b$i;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {v5, v7, v8, v6, v0}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_c
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v0

    new-instance v5, Lcom/caverock/androidsvg/b$f;

    add-float/2addr v1, v4

    add-float/2addr v3, v2

    invoke-direct {v5, p0, v1, v3}, Lcom/caverock/androidsvg/b$f;-><init>(Lcom/caverock/androidsvg/b;FF)V

    invoke-virtual {p0, p1, v5}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_d
    return-void
.end method

.method public final E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V
    .locals 4

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$l0;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$a1;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/caverock/androidsvg/SVG$a1;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$a1;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p0, v2, v1, v3}, Lcom/caverock/androidsvg/b;->T0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/b$j;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/caverock/androidsvg/b;->l0(Lcom/caverock/androidsvg/SVG$l0;Lcom/caverock/androidsvg/b$j;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final E0(Lcom/caverock/androidsvg/SVG$b1;)V
    .locals 7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Use render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$b1;->s:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$b1;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$b1;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$b1;->p:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$l;->o:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$b1;->q:Lcom/caverock/androidsvg/SVG$o;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$b1;->r:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v2

    :cond_7
    iget-object v3, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->i0(Lcom/caverock/androidsvg/SVG$h0;)V

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$d0;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    check-cast v0, Lcom/caverock/androidsvg/SVG$d0;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$b1;->s:Lcom/caverock/androidsvg/SVG$o;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$b1;->t:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {p0, v3, v3, v2, v4}, Lcom/caverock/androidsvg/b;->f0(Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    invoke-virtual {p0, v0, v2}, Lcom/caverock/androidsvg/b;->y0(Lcom/caverock/androidsvg/SVG$d0;Lcom/caverock/androidsvg/SVG$b;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    goto :goto_3

    :cond_8
    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$r0;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$b1;->s:Lcom/caverock/androidsvg/SVG$o;

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    new-instance v2, Lcom/caverock/androidsvg/SVG$o;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v4, v5}, Lcom/caverock/androidsvg/SVG$o;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    :goto_1
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$b1;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    new-instance v5, Lcom/caverock/androidsvg/SVG$o;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v5, v4, v6}, Lcom/caverock/androidsvg/SVG$o;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    :goto_2
    invoke-virtual {p0, v3, v3, v2, v5}, Lcom/caverock/androidsvg/b;->f0(Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    check-cast v0, Lcom/caverock/androidsvg/SVG$r0;

    invoke-virtual {p0, v0, v2}, Lcom/caverock/androidsvg/b;->C0(Lcom/caverock/androidsvg/SVG$r0;Lcom/caverock/androidsvg/SVG$b;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->A0(Lcom/caverock/androidsvg/SVG$l0;)V

    :goto_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->h0()V

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    return-void
.end method

.method public final F0(Lcom/caverock/androidsvg/SVG$h0;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->i0(Lcom/caverock/androidsvg/SVG$h0;)V

    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$h0;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$l0;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->A0(Lcom/caverock/androidsvg/SVG$l0;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->h0()V

    :cond_2
    return-void
.end method

.method public final G(Lcom/caverock/androidsvg/SVG$w0;Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$l0;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$w0;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/caverock/androidsvg/SVG$w0;

    invoke-virtual {p0, v2, p2}, Lcom/caverock/androidsvg/b;->G(Lcom/caverock/androidsvg/SVG$w0;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$a1;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/caverock/androidsvg/SVG$a1;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$a1;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p0, v2, v1, v3}, Lcom/caverock/androidsvg/b;->T0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public G0(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/a;)V
    .locals 6

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->p()Lcom/caverock/androidsvg/SVG$d0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Nothing to render. Document is empty."

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/a;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p2, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->j(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;

    move-result-object v1

    const-string v2, "SVGAndroidRenderer"

    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/caverock/androidsvg/SVG$c1;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/caverock/androidsvg/SVG$c1;

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-nez v3, :cond_2

    iget-object p0, p2, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "View element with id \"%s\" is missing a viewBox attribute."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_3

    :cond_3
    :goto_0
    iget-object p0, p2, Lcom/caverock/androidsvg/a;->e:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "View element with id \"%s\" not found."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p2}, Lcom/caverock/androidsvg/a;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/caverock/androidsvg/a;->d:Lcom/caverock/androidsvg/SVG$b;

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    goto :goto_1

    :goto_2
    invoke-virtual {p2}, Lcom/caverock/androidsvg/a;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/caverock/androidsvg/a;->b:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_3
    invoke-virtual {p2}, Lcom/caverock/androidsvg/a;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p2, Lcom/caverock/androidsvg/a;->a:Lcom/caverock/androidsvg/CSSParser$n;

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG;->a(Lcom/caverock/androidsvg/CSSParser$n;)V

    :cond_7
    invoke-virtual {p2}, Lcom/caverock/androidsvg/a;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$m;

    invoke-direct {v2}, Lcom/caverock/androidsvg/CSSParser$m;-><init>()V

    iput-object v2, p0, Lcom/caverock/androidsvg/b;->h:Lcom/caverock/androidsvg/CSSParser$m;

    iget-object v4, p2, Lcom/caverock/androidsvg/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG;->j(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$j0;

    move-result-object v4

    iput-object v4, v2, Lcom/caverock/androidsvg/CSSParser$m;->a:Lcom/caverock/androidsvg/SVG$j0;

    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->N0()V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->u(Lcom/caverock/androidsvg/SVG$l0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    new-instance v2, Lcom/caverock/androidsvg/SVG$b;

    iget-object v4, p2, Lcom/caverock/androidsvg/a;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {v2, v4}, Lcom/caverock/androidsvg/SVG$b;-><init>(Lcom/caverock/androidsvg/SVG$b;)V

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$d0;->s:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v4, :cond_9

    iget v5, v2, Lcom/caverock/androidsvg/SVG$b;->c:F

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v4

    iput v4, v2, Lcom/caverock/androidsvg/SVG$b;->c:F

    :cond_9
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v4, :cond_a

    iget v5, v2, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v4

    iput v4, v2, Lcom/caverock/androidsvg/SVG$b;->d:F

    :cond_a
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/caverock/androidsvg/b;->z0(Lcom/caverock/androidsvg/SVG$d0;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    invoke-virtual {p2}, Lcom/caverock/androidsvg/a;->b()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->b()V

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "renderOptions shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final H(Lcom/caverock/androidsvg/SVG$j;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Gradient reference \'%s\' not found"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$j;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Gradient href attributes must point to other gradient elements"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    const-string p0, "Circular reference in gradient href attribute \'%s\'"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object p2, v0

    check-cast p2, Lcom/caverock/androidsvg/SVG$j;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$j;->i:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->i:Ljava/lang/Boolean;

    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->j:Landroid/graphics/Matrix;

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$j;->j:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->j:Landroid/graphics/Matrix;

    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->k:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$j;->k:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->k:Lcom/caverock/androidsvg/SVG$GradientSpread;

    :cond_5
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    :cond_6
    :try_start_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$k0;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/caverock/androidsvg/SVG$k0;

    check-cast v0, Lcom/caverock/androidsvg/SVG$k0;

    invoke-virtual {p0, v1, v0}, Lcom/caverock/androidsvg/b;->I(Lcom/caverock/androidsvg/SVG$k0;Lcom/caverock/androidsvg/SVG$k0;)V

    goto :goto_0

    :cond_7
    move-object v1, p1

    check-cast v1, Lcom/caverock/androidsvg/SVG$o0;

    check-cast v0, Lcom/caverock/androidsvg/SVG$o0;

    invoke-virtual {p0, v1, v0}, Lcom/caverock/androidsvg/b;->J(Lcom/caverock/androidsvg/SVG$o0;Lcom/caverock/androidsvg/SVG$o0;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$j;->l:Ljava/lang/String;

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->H(Lcom/caverock/androidsvg/SVG$j;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final H0(Lcom/caverock/androidsvg/SVG$q;Lcom/caverock/androidsvg/b$c;)V
    .locals 11

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$q;->v:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/caverock/androidsvg/b$c;->c:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p2, Lcom/caverock/androidsvg/b$c;->d:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p2, Lcom/caverock/androidsvg/b$c;->d:F

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$q;->v:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-boolean v2, p1, Lcom/caverock/androidsvg/SVG$q;->q:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v2, v2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$o;

    iget v3, p0, Lcom/caverock/androidsvg/b;->b:F

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG$o;->c(F)F

    move-result v2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->M(Lcom/caverock/androidsvg/SVG$l0;)Lcom/caverock/androidsvg/b$h;

    move-result-object v3

    iput-object v3, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, p2, Lcom/caverock/androidsvg/b$c;->a:F

    iget p2, p2, Lcom/caverock/androidsvg/b$c;->b:F

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$q;->r:Lcom/caverock/androidsvg/SVG$o;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$q;->s:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$q;->t:Lcom/caverock/androidsvg/SVG$o;

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$q;->u:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v5, :cond_7

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v4

    :cond_7
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-eqz v5, :cond_e

    iget v6, v5, Lcom/caverock/androidsvg/SVG$b;->c:F

    div-float v6, v2, v6

    iget v5, v5, Lcom/caverock/androidsvg/SVG$b;->d:F

    div-float v5, v4, v5

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio;->e:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_5
    sget-object v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->d:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lcom/caverock/androidsvg/PreserveAspectRatio;->b()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v8

    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v8, v9, :cond_9

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_6
    move v6, v5

    goto :goto_7

    :cond_9
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_6

    :goto_7
    move v5, v6

    :cond_a
    neg-float p2, p2

    mul-float/2addr p2, v6

    neg-float v0, v0

    mul-float/2addr v0, v5

    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    mul-float/2addr v0, v6

    iget p2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    mul-float/2addr p2, v5

    sget-object v8, Lcom/caverock/androidsvg/b$a;->a:[I

    invoke-virtual {v7}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    packed-switch v9, :pswitch_data_0

    move v0, v1

    goto :goto_9

    :pswitch_0
    sub-float v0, v2, v0

    :goto_8
    sub-float v0, v1, v0

    goto :goto_9

    :pswitch_1
    sub-float v0, v2, v0

    div-float/2addr v0, v10

    goto :goto_8

    :goto_9
    invoke-virtual {v7}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    const/4 v8, 0x5

    if-eq v7, v8, :cond_c

    const/4 v8, 0x6

    if-eq v7, v8, :cond_b

    const/4 v8, 0x7

    if-eq v7, v8, :cond_c

    const/16 v8, 0x8

    if-eq v7, v8, :cond_b

    goto :goto_b

    :cond_b
    sub-float p2, v4, p2

    :goto_a
    sub-float/2addr v1, p2

    goto :goto_b

    :cond_c
    sub-float p2, v4, p2

    div-float/2addr p2, v10

    goto :goto_a

    :goto_b
    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p2, p2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/caverock/androidsvg/b;->O0(FFFF)V

    :cond_d
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_c

    :cond_e
    neg-float p2, p2

    neg-float v0, v0

    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p2, p2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p0, v1, v1, v2, v4}, Lcom/caverock/androidsvg/b;->O0(FFFF)V

    :cond_f
    :goto_c
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->F0(Lcom/caverock/androidsvg/SVG$h0;Z)V

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_10
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Lcom/caverock/androidsvg/SVG$k0;Lcom/caverock/androidsvg/SVG$k0;)V
    .locals 0

    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->m:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$k0;->m:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->m:Lcom/caverock/androidsvg/SVG$o;

    :cond_0
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->n:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$k0;->n:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->n:Lcom/caverock/androidsvg/SVG$o;

    :cond_1
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_2

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$k0;->o:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->o:Lcom/caverock/androidsvg/SVG$o;

    :cond_2
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->p:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_3

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$k0;->p:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$k0;->p:Lcom/caverock/androidsvg/SVG$o;

    :cond_3
    return-void
.end method

.method public final I0(Lcom/caverock/androidsvg/SVG$k;)V
    .locals 9

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Marker reference \'%s\' not found"

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, v1}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/caverock/androidsvg/SVG$q;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v1, v1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v3, v3, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v4, v3}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Lcom/caverock/androidsvg/SVG$q;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v3, v3, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v4, v4, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v5, v4}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v4

    if-eqz v4, :cond_5

    check-cast v4, Lcom/caverock/androidsvg/SVG$q;

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v4, v4, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v4, v2

    :goto_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$u;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/caverock/androidsvg/b$b;

    check-cast p1, Lcom/caverock/androidsvg/SVG$u;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$u;->o:Lcom/caverock/androidsvg/SVG$v;

    invoke-direct {v0, p0, p1}, Lcom/caverock/androidsvg/b$b;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/SVG$v;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/b$b;->f()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$p;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/caverock/androidsvg/SVG$p;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->k(Lcom/caverock/androidsvg/SVG$p;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_8
    check-cast p1, Lcom/caverock/androidsvg/SVG$y;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->l(Lcom/caverock/androidsvg/SVG$y;)Ljava/util/List;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v5, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v5, v5, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v2, v5, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    iput-object v2, v5, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    iput-object v2, v5, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/b$c;

    invoke-virtual {p0, v1, v5}, Lcom/caverock/androidsvg/b;->H0(Lcom/caverock/androidsvg/SVG$q;Lcom/caverock/androidsvg/b$c;)V

    :cond_b
    const/4 v1, 0x1

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/b$c;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/b$c;

    move v6, v1

    :goto_4
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_d

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/b$c;

    iget-boolean v8, v5, Lcom/caverock/androidsvg/b$c;->e:Z

    if-eqz v8, :cond_c

    invoke-virtual {p0, v2, v5, v7}, Lcom/caverock/androidsvg/b;->n0(Lcom/caverock/androidsvg/b$c;Lcom/caverock/androidsvg/b$c;Lcom/caverock/androidsvg/b$c;)Lcom/caverock/androidsvg/b$c;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object v2, v5

    :goto_5
    invoke-virtual {p0, v3, v2}, Lcom/caverock/androidsvg/b;->H0(Lcom/caverock/androidsvg/SVG$q;Lcom/caverock/androidsvg/b$c;)V

    move-object v5, v7

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_e

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/b$c;

    invoke-virtual {p0, v4, p1}, Lcom/caverock/androidsvg/b;->H0(Lcom/caverock/androidsvg/SVG$q;Lcom/caverock/androidsvg/b$c;)V

    :cond_e
    return-void
.end method

.method public final J(Lcom/caverock/androidsvg/SVG$o0;Lcom/caverock/androidsvg/SVG$o0;)V
    .locals 0

    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->m:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$o0;->m:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->m:Lcom/caverock/androidsvg/SVG$o;

    :cond_0
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->n:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$o0;->n:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->n:Lcom/caverock/androidsvg/SVG$o;

    :cond_1
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_2

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$o0;->o:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->o:Lcom/caverock/androidsvg/SVG$o;

    :cond_2
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->p:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_3

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$o0;->p:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->p:Lcom/caverock/androidsvg/SVG$o;

    :cond_3
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->q:Lcom/caverock/androidsvg/SVG$o;

    if-nez p0, :cond_4

    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$o0;->q:Lcom/caverock/androidsvg/SVG$o;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$o0;->q:Lcom/caverock/androidsvg/SVG$o;

    :cond_4
    return-void
.end method

.method public final J0(Lcom/caverock/androidsvg/SVG$r;Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Mask render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$r;->o:Ljava/lang/Boolean;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$r;->s:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p3, Lcom/caverock/androidsvg/SVG$b;->c:F

    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$r;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v3

    goto :goto_2

    :cond_1
    iget v3, p3, Lcom/caverock/androidsvg/SVG$b;->d:F

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$r;->s:Lcom/caverock/androidsvg/SVG$o;

    const v3, 0x3f99999a    # 1.2f

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0, v2}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$r;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p0, v2}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v3

    :cond_4
    iget v4, p3, Lcom/caverock/androidsvg/SVG$b;->c:F

    mul-float/2addr v1, v4

    iget v4, p3, Lcom/caverock/androidsvg/SVG$b;->d:F

    mul-float/2addr v3, v4

    :goto_2
    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    cmpl-float v1, v3, v4

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->M(Lcom/caverock/androidsvg/SVG$l0;)Lcom/caverock/androidsvg/b$h;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v1, v1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$r;->p:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget v3, p3, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v4, p3, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget v3, p3, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v4, p3, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_7
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->F0(Lcom/caverock/androidsvg/SVG$h0;Z)V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v1, :cond_8

    invoke-virtual {p0, p2, p3}, Lcom/caverock/androidsvg/b;->k0(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V

    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    :cond_9
    :goto_4
    return-void
.end method

.method public final K(Lcom/caverock/androidsvg/SVG$x;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Pattern reference \'%s\' not found"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->Z0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$x;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Pattern href attributes must point to other pattern elements"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    const-string p0, "Circular reference in pattern href attribute \'%s\'"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v0, Lcom/caverock/androidsvg/SVG$x;

    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->q:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->q:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->q:Ljava/lang/Boolean;

    :cond_3
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->r:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->r:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->r:Ljava/lang/Boolean;

    :cond_4
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->s:Landroid/graphics/Matrix;

    if-nez p2, :cond_5

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->s:Landroid/graphics/Matrix;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->s:Landroid/graphics/Matrix;

    :cond_5
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->t:Lcom/caverock/androidsvg/SVG$o;

    if-nez p2, :cond_6

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->t:Lcom/caverock/androidsvg/SVG$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->t:Lcom/caverock/androidsvg/SVG$o;

    :cond_6
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->u:Lcom/caverock/androidsvg/SVG$o;

    if-nez p2, :cond_7

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->u:Lcom/caverock/androidsvg/SVG$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->u:Lcom/caverock/androidsvg/SVG$o;

    :cond_7
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->v:Lcom/caverock/androidsvg/SVG$o;

    if-nez p2, :cond_8

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->v:Lcom/caverock/androidsvg/SVG$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->v:Lcom/caverock/androidsvg/SVG$o;

    :cond_8
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->w:Lcom/caverock/androidsvg/SVG$o;

    if-nez p2, :cond_9

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->w:Lcom/caverock/androidsvg/SVG$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$x;->w:Lcom/caverock/androidsvg/SVG$o;

    :cond_9
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    :cond_a
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-nez p2, :cond_b

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    :cond_b
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez p2, :cond_c

    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object p2, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :cond_c
    iget-object p2, v0, Lcom/caverock/androidsvg/SVG$x;->x:Ljava/lang/String;

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->K(Lcom/caverock/androidsvg/SVG$x;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final K0(Lcom/caverock/androidsvg/SVG$q0;)V
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->k()Lr09;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$f0;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$l0;

    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$e0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/SVG$e0;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$e0;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$e0;->f()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$e0;->h()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/caverock/androidsvg/b;->V()V

    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/caverock/androidsvg/b;->i:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$e0;->e()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$e0;->m()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/b;->A0(Lcom/caverock/androidsvg/SVG$l0;)V

    :cond_8
    return-void
.end method

.method public final L(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$x;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$x;->q:Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$x;->x:Ljava/lang/String;

    if-eqz v8, :cond_1

    invoke-virtual {v0, v2, v8}, Lcom/caverock/androidsvg/b;->K(Lcom/caverock/androidsvg/SVG$x;Ljava/lang/String;)V

    :cond_1
    const/4 v8, 0x0

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$x;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$x;->u:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v9, :cond_3

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v9

    goto :goto_2

    :cond_3
    move v9, v8

    :goto_2
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$x;->v:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v10, :cond_4

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v10

    goto :goto_3

    :cond_4
    move v10, v8

    :goto_3
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$x;->w:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v11, :cond_5

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v11

    goto :goto_8

    :cond_5
    move v11, v8

    goto :goto_8

    :cond_6
    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$x;->t:Lcom/caverock/androidsvg/SVG$o;

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v5, :cond_7

    invoke-virtual {v5, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v5

    goto :goto_4

    :cond_7
    move v5, v8

    :goto_4
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$x;->u:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v10, :cond_8

    invoke-virtual {v10, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v10

    goto :goto_5

    :cond_8
    move v10, v8

    :goto_5
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$x;->v:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v11, :cond_9

    invoke-virtual {v11, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v11

    goto :goto_6

    :cond_9
    move v11, v8

    :goto_6
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$x;->w:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v12, :cond_a

    invoke-virtual {v12, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v9

    goto :goto_7

    :cond_a
    move v9, v8

    :goto_7
    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v13, v12, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v14, v12, Lcom/caverock/androidsvg/SVG$b;->c:F

    mul-float/2addr v5, v14

    add-float/2addr v5, v13

    iget v13, v12, Lcom/caverock/androidsvg/SVG$b;->b:F

    iget v12, v12, Lcom/caverock/androidsvg/SVG$b;->d:F

    mul-float/2addr v10, v12

    add-float/2addr v10, v13

    mul-float/2addr v11, v14

    mul-float/2addr v9, v12

    move/from16 v18, v11

    move v11, v9

    move v9, v10

    move/from16 v10, v18

    :goto_8
    cmpl-float v12, v10, v8

    if-eqz v12, :cond_1c

    cmpl-float v12, v11, v8

    if-nez v12, :cond_b

    goto/16 :goto_12

    :cond_b
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v12, :cond_c

    goto :goto_9

    :cond_c
    sget-object v12, Lcom/caverock/androidsvg/PreserveAspectRatio;->e:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S0()V

    iget-object v13, v0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v13, Lcom/caverock/androidsvg/b$h;

    invoke-direct {v13, v0}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;)V

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Lcom/caverock/androidsvg/b;->V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V

    iget-object v14, v13, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v15, v14, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v13}, Lcom/caverock/androidsvg/b;->N(Lcom/caverock/androidsvg/SVG$l0;Lcom/caverock/androidsvg/b$h;)Lcom/caverock/androidsvg/b$h;

    move-result-object v13

    iput-object v13, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget-object v14, v2, Lcom/caverock/androidsvg/SVG$x;->s:Landroid/graphics/Matrix;

    if-eqz v14, :cond_12

    iget-object v15, v0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v15, v14}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$x;->s:Landroid/graphics/Matrix;

    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v15

    if-eqz v15, :cond_12

    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v15, v13, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v8, v13, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG$b;->b()F

    move-result v13

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v4, v3, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$b;->b()F

    move-result v3

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVG$b;->c()F

    move-result v7

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v1, v6, Lcom/caverock/androidsvg/SVG$b;->a:F

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$b;->c()F

    move-result v6

    move-object/from16 v17, v12

    const/16 v12, 0x8

    new-array v12, v12, [F

    const/16 v16, 0x0

    aput v15, v12, v16

    const/4 v15, 0x1

    aput v8, v12, v15

    const/4 v8, 0x2

    aput v13, v12, v8

    const/4 v8, 0x3

    aput v4, v12, v8

    const/4 v4, 0x4

    aput v3, v12, v4

    const/4 v3, 0x5

    aput v7, v12, v3

    const/4 v3, 0x6

    aput v1, v12, v3

    const/4 v1, 0x7

    aput v6, v12, v1

    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v1, Landroid/graphics/RectF;

    const/16 v16, 0x0

    aget v4, v12, v16

    const/4 v6, 0x1

    aget v7, v12, v6

    invoke-direct {v1, v4, v7, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v8, 0x2

    :goto_a
    if-gt v8, v3, :cond_11

    aget v4, v12, v8

    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_d

    iput v4, v1, Landroid/graphics/RectF;->left:F

    :cond_d
    iget v6, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_e

    iput v4, v1, Landroid/graphics/RectF;->right:F

    :cond_e
    const/4 v4, 0x1

    add-int/lit8 v7, v8, 0x1

    aget v6, v12, v7

    iget v7, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_f

    iput v6, v1, Landroid/graphics/RectF;->top:F

    :cond_f
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_10

    iput v6, v1, Landroid/graphics/RectF;->bottom:F

    :cond_10
    const/4 v6, 0x2

    add-int/2addr v8, v6

    goto :goto_a

    :cond_11
    const/4 v4, 0x1

    new-instance v13, Lcom/caverock/androidsvg/SVG$b;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v6

    invoke-direct {v13, v3, v6, v7, v1}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    goto :goto_b

    :cond_12
    move-object/from16 v17, v12

    const/4 v4, 0x1

    const/16 v16, 0x0

    :goto_b
    iget v1, v13, Lcom/caverock/androidsvg/SVG$b;->a:F

    sub-float/2addr v1, v5

    div-float/2addr v1, v10

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v10

    add-float/2addr v5, v1

    iget v1, v13, Lcom/caverock/androidsvg/SVG$b;->b:F

    sub-float/2addr v1, v9

    div-float/2addr v1, v11

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v11

    add-float/2addr v9, v1

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG$b;->b()F

    move-result v1

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG$b;->c()F

    move-result v3

    new-instance v6, Lcom/caverock/androidsvg/SVG$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v10, v11}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v7

    :goto_c
    cmpg-float v8, v9, v3

    if-gez v8, :cond_1a

    move v8, v5

    :goto_d
    cmpg-float v12, v8, v1

    if-gez v12, :cond_19

    iput v8, v6, Lcom/caverock/androidsvg/SVG$b;->a:F

    iput v9, v6, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S0()V

    iget-object v12, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v12, v12, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_13

    iget v12, v6, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v13, v6, Lcom/caverock/androidsvg/SVG$b;->b:F

    iget v14, v6, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v15, v6, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/caverock/androidsvg/b;->O0(FFFF)V

    :cond_13
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    if-eqz v12, :cond_15

    iget-object v13, v0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    move-object/from16 v14, v17

    invoke-virtual {v0, v6, v12, v14}, Lcom/caverock/androidsvg/b;->o(Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_14
    move-object/from16 v13, p1

    goto :goto_10

    :cond_15
    move-object/from16 v14, v17

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$x;->r:Ljava/lang/Boolean;

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_16

    goto :goto_e

    :cond_16
    move/from16 v12, v16

    goto :goto_f

    :cond_17
    :goto_e
    move v12, v4

    :goto_f
    iget-object v13, v0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v13, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v12, :cond_14

    iget-object v12, v0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    move-object/from16 v13, p1

    iget-object v15, v13, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v4, v15, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v15, v15, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v12, v4, v15}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_10
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/SVG$l0;

    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/b;->A0(Lcom/caverock/androidsvg/SVG$l0;)V

    goto :goto_11

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    add-float/2addr v8, v10

    move-object/from16 v17, v14

    const/4 v4, 0x1

    goto :goto_d

    :cond_19
    move-object/from16 v13, p1

    move-object/from16 v14, v17

    add-float/2addr v9, v11

    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_1a
    if-eqz v7, :cond_1b

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    :cond_1c
    :goto_12
    return-void
.end method

.method public final L0(Lcom/caverock/androidsvg/SVG$x0;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TextPath render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v1, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$x0;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$x0;->o:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TextPath reference \'%s\' not found"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v1, Lcom/caverock/androidsvg/SVG$u;

    new-instance v2, Lcom/caverock/androidsvg/b$d;

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$u;->o:Lcom/caverock/androidsvg/SVG$v;

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/b$d;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/SVG$v;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/b$d;->f()Landroid/graphics/Path;

    move-result-object v2

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_3
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, v2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$x0;->p:Lcom/caverock/androidsvg/SVG$o;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->O()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v1

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v1, v4, :cond_6

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->n(Lcom/caverock/androidsvg/SVG$w0;)F

    move-result v4

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v1, v5, :cond_5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    :cond_5
    sub-float/2addr v0, v4

    :cond_6
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$x0;->c()Lcom/caverock/androidsvg/SVG$z0;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$i0;

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    new-instance v4, Lcom/caverock/androidsvg/b$e;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/caverock/androidsvg/b$e;-><init>(Lcom/caverock/androidsvg/b;Landroid/graphics/Path;FF)V

    invoke-virtual {p0, p1, v4}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_7
    return-void
.end method

.method public final M(Lcom/caverock/androidsvg/SVG$l0;)Lcom/caverock/androidsvg/b$h;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/b$h;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;)V

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/b;->V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->N(Lcom/caverock/androidsvg/SVG$l0;Lcom/caverock/androidsvg/b$h;)Lcom/caverock/androidsvg/b$h;

    move-result-object p0

    return-object p0
.end method

.method public final M0()Z
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    if-eqz p0, :cond_0

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

.method public final N(Lcom/caverock/androidsvg/SVG$l0;Lcom/caverock/androidsvg/b$h;)Lcom/caverock/androidsvg/b$h;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$j0;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$j0;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    if-nez p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$j0;

    invoke-virtual {p0, p2, v0}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p1, p0, Lcom/caverock/androidsvg/b$h;->g:Lcom/caverock/androidsvg/SVG$b;

    iput-object p1, p2, Lcom/caverock/androidsvg/b$h;->g:Lcom/caverock/androidsvg/SVG$b;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iput-object p0, p2, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    return-object p2

    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/SVG$l0;

    goto :goto_0
.end method

.method public final N0()V
    .locals 3

    new-instance v0, Lcom/caverock/androidsvg/b$h;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->a()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/b;->V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/b$h;->h:Z

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    new-instance v2, Lcom/caverock/androidsvg/b$h;

    invoke-direct {v2, p0, v0}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/b$h;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->g:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->f:Ljava/util/Stack;

    return-void
.end method

.method public final O()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, p0, :cond_1

    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object p0
.end method

.method public final O0(FFFF)V
    .locals 1

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$c;->d:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$c;->a:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$c;->b:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$c;->c:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    sub-float/2addr p4, v0

    :cond_0
    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method public final P()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-ne p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public final P0(Lcom/caverock/androidsvg/b$h;ZLcom/caverock/androidsvg/SVG$m0;)V
    .locals 1

    iget-object p0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->g:Ljava/lang/Float;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$f;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/caverock/androidsvg/SVG$f;

    iget p3, p3, Lcom/caverock/androidsvg/SVG$f;->b:I

    goto :goto_1

    :cond_1
    instance-of p3, p3, Lcom/caverock/androidsvg/SVG$g;

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p3, p3, Lcom/caverock/androidsvg/SVG$Style;->o:Lcom/caverock/androidsvg/SVG$f;

    iget p3, p3, Lcom/caverock/androidsvg/SVG$f;->b:I

    :goto_1
    invoke-static {p3, p0}, Lcom/caverock/androidsvg/b;->x(IF)I

    move-result p0

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public Q()F
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    return p0
.end method

.method public final Q0(ZLcom/caverock/androidsvg/SVG$b0;)V
    .locals 9

    const-wide v0, 0x180000000L

    const-wide v2, 0x100000000L

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide v6, 0x80000000L

    if-eqz p1, :cond_3

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, v8, v6, v7}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v7, v6, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->I:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v8, v7, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    if-eqz v8, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, v6, Lcom/caverock/androidsvg/b$h;->b:Z

    :cond_1
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, v4, v2, v3}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v2, v2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->J:Ljava/lang/Float;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    :cond_2
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, p2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    invoke-virtual {p0, p2, p1, v0}, Lcom/caverock/androidsvg/b;->P0(Lcom/caverock/androidsvg/b$h;ZLcom/caverock/androidsvg/SVG$m0;)V

    goto :goto_0

    :cond_3
    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, v8, v6, v7}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v7, v6, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->I:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v8, v7, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    if-eqz v8, :cond_4

    move v4, v5

    :cond_4
    iput-boolean v4, v6, Lcom/caverock/androidsvg/b$h;->c:Z

    :cond_5
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, v4, v2, v3}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v2, v2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->J:Ljava/lang/Float;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->g:Ljava/lang/Float;

    :cond_6
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, p2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    invoke-virtual {p0, p2, p1, v0}, Lcom/caverock/androidsvg/b;->P0(Lcom/caverock/androidsvg/b$h;ZLcom/caverock/androidsvg/SVG$m0;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public R()F
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public final R0()V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/b$h;

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-void
.end method

.method public S()Lcom/caverock/androidsvg/SVG$b;
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, p0, Lcom/caverock/androidsvg/b$h;->g:Lcom/caverock/androidsvg/SVG$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    return-object p0
.end method

.method public final S0()V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/b$h;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/b$h;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-void
.end method

.method public T()F
    .locals 0

    iget p0, p0, Lcom/caverock/androidsvg/b;->b:F

    return p0
.end method

.method public final T0(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean p0, p0, Lcom/caverock/androidsvg/b$h;->h:Z

    const-string v0, " "

    if-eqz p0, :cond_0

    const-string p0, "[\\n\\t]"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "\\n"

    const-string v1, ""

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\t"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    const-string p1, "^\\s+"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "\\s+$"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string p1, "\\s{2,}"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final U()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->d:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-ne p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public final U0(Lcom/caverock/androidsvg/SVG$i0;)V
    .locals 13

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v4, :cond_1

    return-void

    :cond_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget-object v5, p0, Lcom/caverock/androidsvg/b;->g:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v6, v5, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v7, v5, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$b;->b()F

    move-result v5

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v9, v8, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG$b;->b()F

    move-result v8

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$b;->c()F

    move-result v10

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    iget v11, p1, Lcom/caverock/androidsvg/SVG$b;->a:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$b;->c()F

    move-result p1

    const/16 v12, 0x8

    new-array v12, v12, [F

    aput v6, v12, v1

    aput v7, v12, v3

    aput v5, v12, v2

    const/4 v5, 0x3

    aput v9, v12, v5

    const/4 v5, 0x4

    aput v8, v12, v5

    const/4 v5, 0x5

    aput v10, v12, v5

    aput v11, v12, v0

    const/4 v5, 0x7

    aput p1, v12, v5

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Landroid/graphics/RectF;

    aget v1, v12, v1

    aget v4, v12, v3

    invoke-direct {p1, v1, v4, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v1, v2

    :goto_0
    if-gt v1, v0, :cond_6

    aget v4, v12, v1

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    iput v4, p1, Landroid/graphics/RectF;->left:F

    :cond_2
    iget v5, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    iput v4, p1, Landroid/graphics/RectF;->right:F

    :cond_3
    add-int/lit8 v4, v1, 0x1

    aget v4, v12, v4

    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    iput v4, p1, Landroid/graphics/RectF;->top:F

    :cond_4
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    :cond_5
    add-int/2addr v1, v2

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/caverock/androidsvg/b;->f:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/SVG$i0;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v0, :cond_7

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p1}, Lcom/caverock/androidsvg/SVG$b;->a(FFFF)Lcom/caverock/androidsvg/SVG$b;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    goto :goto_1

    :cond_7
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v1, v2, p1}, Lcom/caverock/androidsvg/SVG$b;->a(FFFF)Lcom/caverock/androidsvg/SVG$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$b;->e(Lcom/caverock/androidsvg/SVG$b;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 11

    const-wide/16 v0, 0x1000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->o:Lcom/caverock/androidsvg/SVG$f;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->o:Lcom/caverock/androidsvg/SVG$f;

    :cond_0
    const-wide/16 v0, 0x800

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/caverock/androidsvg/SVG$f;->d:Lcom/caverock/androidsvg/SVG$f;

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/b$h;->b:Z

    :cond_3
    const-wide/16 v3, 0x4

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    :cond_4
    const-wide/16 v3, 0x1805

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    invoke-virtual {p0, p1, v2, v0}, Lcom/caverock/androidsvg/b;->P0(Lcom/caverock/androidsvg/b$h;ZLcom/caverock/androidsvg/SVG$m0;)V

    :cond_5
    const-wide/16 v3, 0x2

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->d:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->d:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :cond_6
    const-wide/16 v3, 0x8

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    if-eqz v0, :cond_7

    sget-object v3, Lcom/caverock/androidsvg/SVG$f;->d:Lcom/caverock/androidsvg/SVG$f;

    if-eq v0, v3, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/b$h;->c:Z

    :cond_8
    const-wide/16 v3, 0x10

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->g:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->g:Ljava/lang/Float;

    :cond_9
    const-wide/16 v3, 0x1818

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    invoke-virtual {p0, p1, v1, v0}, Lcom/caverock/androidsvg/b;->P0(Lcom/caverock/androidsvg/b$h;ZLcom/caverock/androidsvg/SVG$m0;)V

    :cond_a
    const-wide v3, 0x800000000L

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->M:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->M:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    :cond_b
    const-wide/16 v3, 0x20

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$o;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->h:Lcom/caverock/androidsvg/SVG$o;

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$o;->d(Lcom/caverock/androidsvg/b;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_c
    const-wide/16 v3, 0x40

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    sget-object v0, Lcom/caverock/androidsvg/b$a;->b:[I

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_d

    goto :goto_2

    :cond_d
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    :cond_e
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    :cond_f
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_10
    :goto_2
    const-wide/16 v5, 0x80

    invoke-virtual {p0, p2, v5, v6}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->j:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->j:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    sget-object v0, Lcom/caverock/androidsvg/b$a;->c:[I

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->j:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_13

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    goto :goto_3

    :cond_11
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    :cond_12
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_3

    :cond_13
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_14
    :goto_3
    const-wide/16 v3, 0x100

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->k:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->k:Ljava/lang/Float;

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->k:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_15
    const-wide/16 v3, 0x200

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    :cond_16
    const-wide/16 v3, 0x400

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$o;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$o;

    :cond_17
    const-wide/16 v3, 0x600

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    if-nez v0, :cond_18

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    :cond_18
    array-length v0, v0

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_19

    move v4, v0

    goto :goto_4

    :cond_19
    mul-int/lit8 v4, v0, 0x2

    :goto_4
    new-array v5, v4, [F

    const/4 v6, 0x0

    move v7, v1

    move v8, v6

    :goto_5
    if-ge v7, v4, :cond_1a

    iget-object v9, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->l:[Lcom/caverock/androidsvg/SVG$o;

    rem-int v10, v7, v0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$o;->d(Lcom/caverock/androidsvg/b;)F

    move-result v9

    aput v9, v5, v7

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_1a
    cmpl-float v0, v8, v6

    if-nez v0, :cond_1b

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    :cond_1b
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->d(Lcom/caverock/androidsvg/b;)F

    move-result v0

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1c

    rem-float/2addr v0, v8

    add-float/2addr v0, v8

    :cond_1c
    iget-object v4, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    invoke-direct {v6, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_1d
    :goto_6
    const-wide/16 v4, 0x4000

    invoke-virtual {p0, p2, v4, v5}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Q()F

    move-result v0

    iget-object v4, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->q:Lcom/caverock/androidsvg/SVG$o;

    iput-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->q:Lcom/caverock/androidsvg/SVG$o;

    iget-object v4, p1, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->q:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$Style;->q:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1e
    const-wide/16 v4, 0x2000

    invoke-virtual {p0, p2, v4, v5}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->p:Ljava/util/List;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Ljava/util/List;

    :cond_1f
    const-wide/32 v4, 0x8000

    invoke-virtual {p0, p2, v4, v5}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    const/16 v5, 0x64

    if-ne v0, v4, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_20

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    goto :goto_7

    :cond_20
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x384

    if-ge v0, v4, :cond_21

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    goto :goto_7

    :cond_21
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    :cond_22
    :goto_7
    const-wide/32 v4, 0x10000

    invoke-virtual {p0, p2, v4, v5}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :cond_23
    const-wide/32 v4, 0x1a000

    invoke-virtual {p0, p2, v4, v5}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Ljava/util/List;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->k()Lr09;

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v4, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {p0, v3, v5, v4}, Lcom/caverock/androidsvg/b;->t(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_24

    :cond_25
    if-nez v3, :cond_26

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Ljava/lang/Integer;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const-string v4, "serif"

    invoke-virtual {p0, v4, v3, v0}, Lcom/caverock/androidsvg/b;->t(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_26
    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_27
    const-wide/32 v3, 0x20000

    invoke-virtual {p0, p2, v3, v4}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_28

    move v3, v2

    goto :goto_8

    :cond_28
    move v3, v1

    :goto_8
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v5, :cond_29

    move v3, v2

    goto :goto_9

    :cond_29
    move v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_2a

    move v3, v2

    goto :goto_a

    :cond_2a
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v5, :cond_2b

    move v1, v2

    :cond_2b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2c
    const-wide v0, 0x1000000000L

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    :cond_2d
    const-wide/32 v0, 0x40000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :cond_2e
    const-wide/32 v0, 0x80000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    :cond_2f
    const-wide/32 v0, 0x200000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Ljava/lang/String;

    :cond_30
    const-wide/32 v0, 0x400000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/String;

    :cond_31
    const-wide/32 v0, 0x800000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Ljava/lang/String;

    :cond_32
    const-wide/32 v0, 0x1000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/Boolean;

    :cond_33
    const-wide/32 v0, 0x2000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/Boolean;

    :cond_34
    const-wide/32 v0, 0x100000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$c;

    :cond_35
    const-wide/32 v0, 0x10000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    :cond_36
    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    :cond_37
    const-wide/32 v0, 0x40000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    :cond_38
    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->D:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Lcom/caverock/androidsvg/SVG$m0;

    :cond_39
    const-wide/32 v0, 0x8000000

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Float;

    :cond_3a
    const-wide v0, 0x200000000L

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->K:Lcom/caverock/androidsvg/SVG$m0;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Lcom/caverock/androidsvg/SVG$m0;

    :cond_3b
    const-wide v0, 0x400000000L

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->L:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Ljava/lang/Float;

    :cond_3c
    const-wide v0, 0x2000000000L

    invoke-virtual {p0, p2, v0, v1}, Lcom/caverock/androidsvg/b;->W(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result p0

    if-eqz p0, :cond_3d

    iget-object p0, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    :cond_3d
    return-void
.end method

.method public final W(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 0

    iget-wide p0, p1, Lcom/caverock/androidsvg/SVG$Style;->b:J

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V
    .locals 4

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$l0;->b:Lcom/caverock/androidsvg/SVG$h0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->c(Z)V

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$j0;->e:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$l;

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->h:Lcom/caverock/androidsvg/CSSParser$m;

    iget-object v3, v1, Lcom/caverock/androidsvg/CSSParser$l;->a:Lcom/caverock/androidsvg/CSSParser$o;

    invoke-static {v2, v3, p2}, Lcom/caverock/androidsvg/CSSParser;->l(Lcom/caverock/androidsvg/CSSParser$m;Lcom/caverock/androidsvg/CSSParser$o;Lcom/caverock/androidsvg/SVG$j0;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$l;->b:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/b;->V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1

    :cond_3
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$j0;->f:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->V0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$Style;)V

    :cond_4
    return-void
.end method

.method public final X(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$k0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$j;->l:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/caverock/androidsvg/b;->H(Lcom/caverock/androidsvg/SVG$j;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$j;->i:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S()Lcom/caverock/androidsvg/SVG$b;

    move-result-object v8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$k0;->m:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v9, :cond_3

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$k0;->n:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v10, :cond_4

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$k0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v11, :cond_5

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v8

    goto :goto_4

    :cond_5
    iget v8, v8, Lcom/caverock/androidsvg/SVG$b;->c:F

    :goto_4
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$k0;->p:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v11

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    move v15, v8

    move v13, v9

    move v14, v10

    move/from16 v16, v11

    goto :goto_a

    :cond_7
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$k0;->m:Lcom/caverock/androidsvg/SVG$o;

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_8

    invoke-virtual {v8, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$k0;->n:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v10, :cond_9

    invoke-virtual {v10, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v10

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    :goto_7
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$k0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v11, :cond_a

    invoke-virtual {v11, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v11

    goto :goto_8

    :cond_a
    move v11, v9

    :goto_8
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$k0;->p:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v12, :cond_b

    invoke-virtual {v12, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v9

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    move v13, v8

    move/from16 v16, v9

    move v14, v10

    move v15, v11

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S0()V

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/b;->M(Lcom/caverock/androidsvg/SVG$l0;)Lcom/caverock/androidsvg/b$h;

    move-result-object v8

    iput-object v8, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_c

    iget v3, v1, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v9, v1, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, v1, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v1, v1, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_c
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$j;->j:Landroid/graphics/Matrix;

    if-eqz v1, :cond_d

    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_d
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    if-eqz p1, :cond_e

    iget-object v0, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/b$h;->b:Z

    goto :goto_b

    :cond_e
    iget-object v0, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/b$h;->c:Z

    :goto_b
    return-void

    :cond_f
    new-array v3, v1, [I

    new-array v9, v1, [F

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/high16 v11, -0x40800000    # -1.0f

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/SVG$l0;

    check-cast v12, Lcom/caverock/androidsvg/SVG$c0;

    iget-object v7, v12, Lcom/caverock/androidsvg/SVG$c0;->h:Ljava/lang/Float;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_d

    :cond_10
    const/4 v7, 0x0

    :goto_d
    if-eqz v4, :cond_12

    cmpl-float v18, v7, v11

    if-ltz v18, :cond_11

    goto :goto_e

    :cond_11
    aput v11, v9, v4

    goto :goto_f

    :cond_12
    :goto_e
    aput v7, v9, v4

    move v11, v7

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S0()V

    iget-object v7, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {v0, v7, v12}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    iget-object v7, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v7, v7, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v7, Lcom/caverock/androidsvg/SVG$Style;->D:Lcom/caverock/androidsvg/SVG$m0;

    check-cast v12, Lcom/caverock/androidsvg/SVG$f;

    if-nez v12, :cond_13

    sget-object v12, Lcom/caverock/androidsvg/SVG$f;->c:Lcom/caverock/androidsvg/SVG$f;

    :cond_13
    iget v12, v12, Lcom/caverock/androidsvg/SVG$f;->b:I

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v12, v7}, Lcom/caverock/androidsvg/b;->x(IF)I

    move-result v7

    aput v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    goto :goto_c

    :cond_14
    cmpl-float v4, v13, v15

    if-nez v4, :cond_15

    cmpl-float v4, v14, v16

    if-eqz v4, :cond_16

    :cond_15
    if-ne v1, v5, :cond_17

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    sub-int/2addr v1, v5

    aget v0, v3, v1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_17
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$j;->k:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v2, :cond_18

    sget-object v4, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v2, v4, :cond_19

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :cond_18
    :goto_10
    move-object/from16 v19, v1

    goto :goto_11

    :cond_19
    sget-object v4, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v2, v4, :cond_18

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_10

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    new-instance v1, Landroid/graphics/LinearGradient;

    move-object v12, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/caverock/androidsvg/b;->w(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final X0()V
    .locals 3

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Lcom/caverock/androidsvg/SVG$m0;

    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$f;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/caverock/androidsvg/SVG$f;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$f;->b:I

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$g;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->o:Lcom/caverock/androidsvg/SVG$f;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$f;->b:I

    :goto_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->x(IF)I

    move-result v1

    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method public final Y(Lcom/caverock/androidsvg/SVG$d;)Landroid/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$d;->o:Lcom/caverock/androidsvg/SVG$o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$d;->p:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v3

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$d;->q:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$o;->d(Lcom/caverock/androidsvg/b;)F

    move-result v0

    sub-float v11, v2, v0

    sub-float v12, v3, v0

    add-float v13, v2, v0

    add-float v14, v3, v0

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v4, :cond_2

    new-instance v4, Lcom/caverock/androidsvg/SVG$b;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    invoke-direct {v4, v11, v12, v5, v5}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_2
    const v1, 0x3f0d6289

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v15, v2, v0

    sub-float v16, v3, v0

    move-object v4, v1

    move v5, v15

    move v6, v12

    move v7, v13

    move/from16 v8, v16

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v17, v3, v0

    move v5, v13

    move/from16 v6, v17

    move v7, v15

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v0, v2, v0

    move v5, v0

    move v6, v14

    move v7, v11

    move/from16 v8, v17

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v16

    move v7, v0

    move v8, v12

    move v9, v2

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method

.method public final Y0()Z
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final Z(Lcom/caverock/androidsvg/SVG$i;)Landroid/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$i;->o:Lcom/caverock/androidsvg/SVG$o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$i;->p:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v3

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$i;->q:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v4

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$i;->r:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    sub-float v11, v2, v4

    sub-float v12, v3, v0

    add-float v13, v2, v4

    add-float v14, v3, v0

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v5, :cond_2

    new-instance v5, Lcom/caverock/androidsvg/SVG$b;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v4, v6

    mul-float/2addr v6, v0

    invoke-direct {v5, v11, v12, v7, v6}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v15, v4, v1

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v15

    sub-float v17, v3, v0

    move-object v4, v1

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v0, v3

    move v5, v13

    move v6, v0

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v13, v2, v15

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v0

    move v9, v11

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v13

    move v8, v12

    move v9, v2

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method

.method public final a0(Lcom/caverock/androidsvg/SVG$p;)Landroid/graphics/Path;
    .locals 8

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$p;->o:Lcom/caverock/androidsvg/SVG$o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v0

    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$p;->p:Lcom/caverock/androidsvg/SVG$o;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v2

    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$p;->q:Lcom/caverock/androidsvg/SVG$o;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v3

    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$p;->r:Lcom/caverock/androidsvg/SVG$o;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v1

    :goto_3
    iget-object p0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez p0, :cond_4

    new-instance p0, Lcom/caverock/androidsvg/SVG$b;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float v6, v3, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v1, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_4
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p0
.end method

.method public final b0(Lcom/caverock/androidsvg/SVG$y;)Landroid/graphics/Path;
    .locals 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$y;->o:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$y;->o:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$z;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object p0

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_2
    return-object v0
.end method

.method public final c0(Lcom/caverock/androidsvg/SVG$a0;)Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$a0;->s:Lcom/caverock/androidsvg/SVG$o;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$a0;->t:Lcom/caverock/androidsvg/SVG$o;

    if-nez v4, :cond_0

    move v2, v3

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$a0;->t:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$a0;->t:Lcom/caverock/androidsvg/SVG$o;

    if-nez v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v2

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$a0;->t:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v4

    :goto_1
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$a0;->q:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$a0;->r:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$a0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$a0;->p:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v6

    move v13, v6

    goto :goto_3

    :cond_4
    move v13, v3

    :goto_3
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$a0;->q:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v6

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$a0;->r:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v7, :cond_5

    new-instance v7, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {v7, v5, v13, v6, v0}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v7, v1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_5
    add-float v15, v5, v6

    add-float/2addr v0, v13

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_7

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const v3, 0x3f0d6289

    mul-float v14, v2, v3

    mul-float/2addr v3, v4

    add-float v12, v13, v4

    invoke-virtual {v1, v5, v12}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v16, v12, v3

    add-float v11, v5, v2

    sub-float v21, v11, v14

    move-object v6, v1

    move v7, v5

    move/from16 v8, v16

    move/from16 v9, v21

    move v10, v13

    move/from16 p0, v11

    move/from16 p1, v12

    move v12, v13

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v2, v15, v2

    invoke-virtual {v1, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v17, v2, v14

    move-object v7, v1

    move/from16 v8, v17

    move v9, v13

    move v10, v15

    move/from16 v11, v16

    move v12, v15

    move/from16 v13, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v12, v0, v4

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v10, v12, v3

    move-object v14, v1

    move/from16 v16, v10

    move/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v2, p0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v7, v21

    move v8, v0

    move v9, v5

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v1, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {v1, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v15, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method

.method public final d0(Lcom/caverock/androidsvg/SVG$u0;)Landroid/graphics/Path;
    .locals 9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$y0;->o:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$y0;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$y0;->p:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$y0;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v3

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$y0;->q:Ljava/util/List;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$y0;->q:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v4

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v1

    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$y0;->r:Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$y0;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v1

    :cond_7
    :goto_6
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v2, v2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_9

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->n(Lcom/caverock/androidsvg/SVG$w0;)F

    move-result v2

    iget-object v5, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v5, v5, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_8

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    :cond_8
    sub-float/2addr v0, v2

    :cond_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v2, :cond_a

    new-instance v2, Lcom/caverock/androidsvg/b$i;

    invoke-direct {v2, p0, v0, v3}, Lcom/caverock/androidsvg/b$i;-><init>(Lcom/caverock/androidsvg/b;FF)V

    invoke-virtual {p0, p1, v2}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    new-instance v5, Lcom/caverock/androidsvg/SVG$b;

    iget-object v6, v2, Lcom/caverock/androidsvg/b$i;->d:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v2, v2, Lcom/caverock/androidsvg/b$i;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v5, v7, v8, v6, v2}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_a
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Lcom/caverock/androidsvg/b$g;

    add-float/2addr v0, v4

    add-float/2addr v3, v1

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/caverock/androidsvg/b$g;-><init>(Lcom/caverock/androidsvg/b;FFLandroid/graphics/Path;)V

    invoke-virtual {p0, p1, v5}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    return-object v2
.end method

.method public final e0(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$o0;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$j;->l:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/caverock/androidsvg/b;->H(Lcom/caverock/androidsvg/SVG$j;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$j;->i:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/caverock/androidsvg/b$h;->d:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/caverock/androidsvg/b$h;->e:Landroid/graphics/Paint;

    :goto_1
    if-eqz v3, :cond_6

    new-instance v7, Lcom/caverock/androidsvg/SVG$o;

    const/high16 v8, 0x42480000    # 50.0f

    sget-object v9, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v7, v8, v9}, Lcom/caverock/androidsvg/SVG$o;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$o0;->m:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v8

    :goto_2
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$o0;->n:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v9

    :goto_3
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$o0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$o;->d(Lcom/caverock/androidsvg/b;)F

    move-result v7

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$o;->d(Lcom/caverock/androidsvg/b;)F

    move-result v7

    :goto_4
    move v14, v7

    move v12, v8

    move v13, v9

    goto :goto_7

    :cond_6
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$o0;->m:Lcom/caverock/androidsvg/SVG$o;

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v7, :cond_7

    invoke-virtual {v7, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v8

    :goto_5
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$o0;->n:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v10, :cond_8

    invoke-virtual {v10, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v10

    goto :goto_6

    :cond_8
    move v10, v8

    :goto_6
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$o0;->o:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v11, :cond_9

    invoke-virtual {v11, v0, v9}, Lcom/caverock/androidsvg/SVG$o;->e(Lcom/caverock/androidsvg/b;F)F

    move-result v8

    :cond_9
    move v12, v7

    move v14, v8

    move v13, v10

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S0()V

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/b;->M(Lcom/caverock/androidsvg/SVG$l0;)Lcom/caverock/androidsvg/b$h;

    move-result-object v7

    iput-object v7, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-nez v3, :cond_a

    iget v3, v1, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v8, v1, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, v1, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v1, v1, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_a
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$j;->j:Landroid/graphics/Matrix;

    if-eqz v1, :cond_b

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_b
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    if-eqz p1, :cond_c

    iget-object v0, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/b$h;->b:Z

    goto :goto_8

    :cond_c
    iget-object v0, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-boolean v4, v0, Lcom/caverock/androidsvg/b$h;->c:Z

    :goto_8
    return-void

    :cond_d
    new-array v15, v1, [I

    new-array v3, v1, [F

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$j;->h:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/high16 v9, -0x40800000    # -1.0f

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/caverock/androidsvg/SVG$l0;

    check-cast v10, Lcom/caverock/androidsvg/SVG$c0;

    iget-object v5, v10, Lcom/caverock/androidsvg/SVG$c0;->h:Ljava/lang/Float;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :cond_e
    if-eqz v4, :cond_10

    cmpl-float v5, v11, v9

    if-ltz v5, :cond_f

    goto :goto_a

    :cond_f
    aput v9, v3, v4

    goto :goto_b

    :cond_10
    :goto_a
    aput v11, v3, v4

    move v9, v11

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->S0()V

    iget-object v5, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {v0, v5, v10}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    iget-object v5, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v5, v5, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v5, Lcom/caverock/androidsvg/SVG$Style;->D:Lcom/caverock/androidsvg/SVG$m0;

    check-cast v10, Lcom/caverock/androidsvg/SVG$f;

    if-nez v10, :cond_11

    sget-object v10, Lcom/caverock/androidsvg/SVG$f;->c:Lcom/caverock/androidsvg/SVG$f;

    :cond_11
    iget v10, v10, Lcom/caverock/androidsvg/SVG$f;->b:I

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v10, v5}, Lcom/caverock/androidsvg/b;->x(IF)I

    move-result v5

    aput v5, v15, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    goto :goto_9

    :cond_12
    cmpl-float v4, v14, v11

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    goto :goto_e

    :cond_13
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$j;->k:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v2, :cond_14

    sget-object v4, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v2, v4, :cond_15

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :cond_14
    :goto_c
    move-object/from16 v17, v1

    goto :goto_d

    :cond_15
    sget-object v4, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v2, v4, :cond_14

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_c

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    new-instance v1, Landroid/graphics/RadialGradient;

    move-object v11, v1

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->e:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/caverock/androidsvg/b;->w(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_16
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/b;->R0()V

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    aget v0, v15, v1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final f0(Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;)Lcom/caverock/androidsvg/SVG$b;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S()Lcom/caverock/androidsvg/SVG$b;

    move-result-object p2

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result p0

    goto :goto_2

    :cond_3
    iget p0, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    :goto_2
    new-instance p2, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {p2, p1, v0, p3, p0}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    return-object p2
.end method

.method public final g0(Lcom/caverock/androidsvg/SVG$i0;Z)Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/b$h;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/b$h;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$b1;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/SVG$b1;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$b1;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$b1;->p:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Use reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/b$h;

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-object v1

    :cond_2
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$i0;

    if-nez v3, :cond_3

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/b$h;

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-object v1

    :cond_3
    check-cast v2, Lcom/caverock/androidsvg/SVG$i0;

    invoke-virtual {p0, v2, v0}, Lcom/caverock/androidsvg/b;->g0(Lcom/caverock/androidsvg/SVG$i0;Z)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v1

    iput-object v1, p2, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_5
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$l;->o:Landroid/graphics/Matrix;

    if-eqz p2, :cond_13

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    :cond_6
    instance-of p2, p1, Lcom/caverock/androidsvg/SVG$k;

    if-eqz p2, :cond_10

    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/SVG$k;

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$u;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$u;

    new-instance v2, Lcom/caverock/androidsvg/b$d;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$u;->o:Lcom/caverock/androidsvg/SVG$v;

    invoke-direct {v2, p0, v0}, Lcom/caverock/androidsvg/b$d;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/SVG$v;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/b$d;->f()Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v2, :cond_c

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$a0;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$a0;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->c0(Lcom/caverock/androidsvg/SVG$a0;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$d;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$d;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->Y(Lcom/caverock/androidsvg/SVG$d;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$i;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$i;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->Z(Lcom/caverock/androidsvg/SVG$i;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$y;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$y;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->b0(Lcom/caverock/androidsvg/SVG$y;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_b
    move-object v0, v1

    :cond_c
    :goto_0
    if-nez v0, :cond_d

    return-object v1

    :cond_d
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v1, :cond_e

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v1

    iput-object v1, p2, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_e
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz p2, :cond_f

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->P()Landroid/graphics/Path$FillType;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    :cond_10
    instance-of p2, p1, Lcom/caverock/androidsvg/SVG$u0;

    if-eqz p2, :cond_15

    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/SVG$u0;

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/b;->d0(Lcom/caverock/androidsvg/SVG$u0;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$u0;->s:Landroid/graphics/Matrix;

    if-eqz p2, :cond_12

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_12
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->P()Landroid/graphics/Path$FillType;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :cond_13
    :goto_1
    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p2, p2, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    if-eqz p2, :cond_14

    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->j(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_14

    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    iget-object p1, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/b$h;

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-object v0

    :cond_15
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$l0;->n()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid %s element found in clipPath definition"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_16
    :goto_2
    iget-object p1, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/b$h;

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-object v1
.end method

.method public final h0()V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->g:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final i0(Lcom/caverock/androidsvg/SVG$h0;)V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->f:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->g:Ljava/util/Stack;

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final j(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)Landroid/graphics/Path;
    .locals 5

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ClipPath reference \'%s\' not found"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/SVG$e;

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->M(Lcom/caverock/androidsvg/SVG$l0;)Lcom/caverock/androidsvg/b$h;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$e;->p:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-nez v0, :cond_3

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v3, p2, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget p2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object p2, p1, Lcom/caverock/androidsvg/SVG$l;->o:Landroid/graphics/Matrix;

    if-eqz p2, :cond_4

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$f0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$l0;

    instance-of v4, v3, Lcom/caverock/androidsvg/SVG$i0;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    check-cast v3, Lcom/caverock/androidsvg/SVG$i0;

    invoke-virtual {p0, v3, v1}, Lcom/caverock/androidsvg/b;->g0(Lcom/caverock/androidsvg/SVG$i0;Z)Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/b;->m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_8
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->j(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_9

    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_9
    invoke-virtual {p2, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/b$h;

    iput-object p1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    return-object p2
.end method

.method public final j0(Lcom/caverock/androidsvg/SVG$i0;)V
    .locals 1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->k0(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V

    return-void
.end method

.method public final k(Lcom/caverock/androidsvg/SVG$p;)Ljava/util/List;
    .locals 12

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$p;->o:Lcom/caverock/androidsvg/SVG$o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$p;->p:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$p;->q:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v0

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$p;->r:Lcom/caverock/androidsvg/SVG$o;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v1

    :cond_3
    move v9, v1

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/caverock/androidsvg/b$c;

    sub-float v10, v8, v4

    sub-float v11, v9, v5

    move-object v2, v0

    move-object v3, p0

    move v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/caverock/androidsvg/b$c;-><init>(Lcom/caverock/androidsvg/b;FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/caverock/androidsvg/b$c;

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/caverock/androidsvg/b$c;-><init>(Lcom/caverock/androidsvg/b;FFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final k0(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V
    .locals 6

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/16 v4, 0x1f

    invoke-virtual {v1, v3, v0, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v5, 0x14

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v1, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3, v0, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v1, v1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$r;

    invoke-virtual {p0, v0, p1, p2}, Lcom/caverock/androidsvg/b;->J0(Lcom/caverock/androidsvg/SVG$r;Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v5, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-virtual {p0, v0, p1, p2}, Lcom/caverock/androidsvg/b;->J0(Lcom/caverock/androidsvg/SVG$r;Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59ce07    # 0.2127f
        0x3f3710cb    # 0.7151f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
    .end array-data
.end method

.method public final l(Lcom/caverock/androidsvg/SVG$y;)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$y;->o:[F

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/caverock/androidsvg/b$c;

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$y;->o:[F

    const/4 v11, 0x0

    aget v6, v4, v11

    const/4 v12, 0x1

    aget v7, v4, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/caverock/androidsvg/b$c;-><init>(Lcom/caverock/androidsvg/b;FFFF)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$y;->o:[F

    aget v5, v4, v2

    add-int/lit8 v6, v2, 0x1

    aget v4, v4, v6

    invoke-virtual {v10, v5, v4}, Lcom/caverock/androidsvg/b$c;->a(FF)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/caverock/androidsvg/b$c;

    iget v7, v10, Lcom/caverock/androidsvg/b$c;->a:F

    sub-float v17, v5, v7

    iget v7, v10, Lcom/caverock/androidsvg/b$c;->b:F

    sub-float v18, v4, v7

    move-object v13, v6

    move-object/from16 v14, p0

    move v15, v5

    move/from16 v16, v4

    invoke-direct/range {v13 .. v18}, Lcom/caverock/androidsvg/b$c;-><init>(Lcom/caverock/androidsvg/b;FFFF)V

    add-int/lit8 v2, v2, 0x2

    move-object v10, v6

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$z;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$y;->o:[F

    aget v15, v0, v11

    cmpl-float v1, v4, v15

    if-eqz v1, :cond_3

    aget v0, v0, v12

    cmpl-float v1, v5, v0

    if-eqz v1, :cond_3

    invoke-virtual {v10, v15, v0}, Lcom/caverock/androidsvg/b$c;->a(FF)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/caverock/androidsvg/b$c;

    iget v2, v10, Lcom/caverock/androidsvg/b$c;->a:F

    sub-float v17, v15, v2

    iget v2, v10, Lcom/caverock/androidsvg/b$c;->b:F

    sub-float v18, v0, v2

    move-object v13, v1

    move-object/from16 v14, p0

    move/from16 v16, v0

    invoke-direct/range {v13 .. v18}, Lcom/caverock/androidsvg/b$c;-><init>(Lcom/caverock/androidsvg/b;FFFF)V

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/b$c;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/b$c;->b(Lcom/caverock/androidsvg/b$c;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v3
.end method

.method public final l0(Lcom/caverock/androidsvg/SVG$l0;Lcom/caverock/androidsvg/b$j;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$w0;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/b$j;->a(Lcom/caverock/androidsvg/SVG$w0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$x0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    check-cast p1, Lcom/caverock/androidsvg/SVG$x0;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->L0(Lcom/caverock/androidsvg/SVG$x0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    goto/16 :goto_9

    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$t0;

    if-eqz v0, :cond_f

    const-string v0, "TSpan render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    check-cast p1, Lcom/caverock/androidsvg/SVG$t0;

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$y0;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    instance-of v2, p2, Lcom/caverock/androidsvg/b$f;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-nez v0, :cond_3

    move-object v4, p2

    check-cast v4, Lcom/caverock/androidsvg/b$f;

    iget v4, v4, Lcom/caverock/androidsvg/b$f;->b:F

    goto :goto_1

    :cond_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$y0;->o:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v4

    :goto_1
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$y0;->p:Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$y0;->p:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v5, p2

    check-cast v5, Lcom/caverock/androidsvg/b$f;

    iget v5, v5, Lcom/caverock/androidsvg/b$f;->c:F

    :goto_3
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$y0;->q:Ljava/util/List;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$y0;->q:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v6

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v3

    :goto_5
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$y0;->r:Ljava/util/List;

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$y0;->r:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v3

    :cond_9
    :goto_6
    move v1, v3

    move v3, v4

    goto :goto_7

    :cond_a
    move v1, v3

    move v5, v1

    move v6, v5

    :goto_7
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->O()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v4, :cond_c

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->n(Lcom/caverock/androidsvg/SVG$w0;)F

    move-result v4

    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v7, :cond_b

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    :cond_b
    sub-float/2addr v3, v4

    :cond_c
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$t0;->c()Lcom/caverock/androidsvg/SVG$z0;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$i0;

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    if-eqz v2, :cond_d

    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/b$f;

    add-float/2addr v3, v6

    iput v3, v0, Lcom/caverock/androidsvg/b$f;->b:F

    add-float/2addr v5, v1

    iput v5, v0, Lcom/caverock/androidsvg/b$f;->c:F

    :cond_d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_e
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    goto :goto_9

    :cond_f
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$s0;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->S0()V

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$s0;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v1, v0}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$s0;->c()Lcom/caverock/androidsvg/SVG$z0;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$i0;

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$l0;->a:Lcom/caverock/androidsvg/SVG;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$s0;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object p1

    if-eqz p1, :cond_10

    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$w0;

    if-eqz v1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/caverock/androidsvg/SVG$w0;

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->G(Lcom/caverock/androidsvg/SVG$w0;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/caverock/androidsvg/b$j;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    iget-object p1, v0, Lcom/caverock/androidsvg/SVG$s0;->o:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Tref reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->R0()V

    :cond_12
    :goto_9
    return-void
.end method

.method public final m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;
    .locals 3

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance p1, Lcom/caverock/androidsvg/SVG$b;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    return-object p1
.end method

.method public final m0()Z
    .locals 4

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->M0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v1, v1, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/caverock/androidsvg/b;->w(F)I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->e:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/caverock/androidsvg/b$h;

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/b$h;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/b$h;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$r;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Mask reference \'%s\' not found"

    invoke-static {v2, v0}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p0, p0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v3, p0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/String;

    :cond_2
    return v1
.end method

.method public final n(Lcom/caverock/androidsvg/SVG$w0;)F
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/b$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/b$k;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/b$a;)V

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->E(Lcom/caverock/androidsvg/SVG$w0;Lcom/caverock/androidsvg/b$j;)V

    iget p0, v0, Lcom/caverock/androidsvg/b$k;->b:F

    return p0
.end method

.method public final n0(Lcom/caverock/androidsvg/b$c;Lcom/caverock/androidsvg/b$c;Lcom/caverock/androidsvg/b$c;)Lcom/caverock/androidsvg/b$c;
    .locals 4

    iget v0, p2, Lcom/caverock/androidsvg/b$c;->c:F

    iget v1, p2, Lcom/caverock/androidsvg/b$c;->d:F

    iget v2, p2, Lcom/caverock/androidsvg/b$c;->a:F

    iget v3, p1, Lcom/caverock/androidsvg/b$c;->a:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/caverock/androidsvg/b$c;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/b$c;->b:F

    sub-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/b;->D(FFFF)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget p1, p2, Lcom/caverock/androidsvg/b$c;->c:F

    iget v1, p2, Lcom/caverock/androidsvg/b$c;->d:F

    iget v2, p3, Lcom/caverock/androidsvg/b$c;->a:F

    iget v3, p2, Lcom/caverock/androidsvg/b$c;->a:F

    sub-float/2addr v2, v3

    iget p3, p3, Lcom/caverock/androidsvg/b$c;->b:F

    iget v3, p2, Lcom/caverock/androidsvg/b$c;->b:F

    sub-float/2addr p3, v3

    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/caverock/androidsvg/b;->D(FFFF)F

    move-result p1

    :cond_0
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    return-object p2

    :cond_1
    if-nez p0, :cond_3

    iget p0, p2, Lcom/caverock/androidsvg/b$c;->c:F

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_2

    iget p0, p2, Lcom/caverock/androidsvg/b$c;->d:F

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_3

    :cond_2
    return-object p2

    :cond_3
    iget p0, p2, Lcom/caverock/androidsvg/b$c;->c:F

    neg-float p0, p0

    iput p0, p2, Lcom/caverock/androidsvg/b$c;->c:F

    iget p0, p2, Lcom/caverock/androidsvg/b$c;->d:F

    neg-float p0, p0

    iput p0, p2, Lcom/caverock/androidsvg/b$c;->d:F

    return-object p2
.end method

.method public final o(Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 8

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, p1, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v1, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    div-float/2addr v0, v1

    iget v1, p1, Lcom/caverock/androidsvg/SVG$b;->d:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    div-float/2addr v1, v2

    iget v2, p2, Lcom/caverock/androidsvg/SVG$b;->a:F

    neg-float v2, v2

    iget v3, p2, Lcom/caverock/androidsvg/SVG$b;->b:F

    neg-float v3, v3

    sget-object v4, Lcom/caverock/androidsvg/PreserveAspectRatio;->d:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v4}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget p2, p1, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object p0

    :cond_1
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->b()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v4

    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v4, v5, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iget v1, p1, Lcom/caverock/androidsvg/SVG$b;->c:F

    div-float/2addr v1, v0

    iget v4, p1, Lcom/caverock/androidsvg/SVG$b;->d:F

    div-float/2addr v4, v0

    sget-object v5, Lcom/caverock/androidsvg/b$a;->a:[I

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v6, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    sub-float/2addr v6, v1

    :goto_1
    sub-float/2addr v2, v6

    goto :goto_2

    :pswitch_1
    iget v6, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    sub-float/2addr v6, v1

    div-float/2addr v6, v7

    goto :goto_1

    :goto_2
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->a()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v5, p3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_3

    const/4 v1, 0x5

    if-eq p3, v1, :cond_4

    const/4 v1, 0x6

    if-eq p3, v1, :cond_3

    const/4 v1, 0x7

    if-eq p3, v1, :cond_4

    const/16 v1, 0x8

    if-eq p3, v1, :cond_3

    goto :goto_4

    :cond_3
    iget p2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    sub-float/2addr p2, v4

    :goto_3
    sub-float/2addr v3, p2

    goto :goto_4

    :cond_4
    iget p2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    sub-float/2addr p2, v4

    div-float/2addr p2, v7

    goto :goto_3

    :goto_4
    iget p2, p1, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_5
    :goto_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final o0(Lcom/caverock/androidsvg/SVG$d;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Circle render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$d;->q:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->Y(Lcom/caverock/androidsvg/SVG$d;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final p(Lcom/caverock/androidsvg/SVG$i0;)V
    .locals 1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->q(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V

    return-void
.end method

.method public final p0(Lcom/caverock/androidsvg/SVG$i;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ellipse render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i;->q:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$i;->r:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$i;->r:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->Z(Lcom/caverock/androidsvg/SVG$i;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final q(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->j(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    return-void
.end method

.method public final q0(Lcom/caverock/androidsvg/SVG$l;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Group render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$l;->o:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/caverock/androidsvg/b;->F0(Lcom/caverock/androidsvg/SVG$h0;Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    return-void
.end method

.method public final r(Lcom/caverock/androidsvg/SVG$i0;)V
    .locals 3

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->c:Lcom/caverock/androidsvg/SVG$m0;

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$t;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    check-cast v0, Lcom/caverock/androidsvg/SVG$t;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/caverock/androidsvg/b;->z(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$t;)V

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$m0;

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$t;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    check-cast v0, Lcom/caverock/androidsvg/SVG$t;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/caverock/androidsvg/b;->z(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$t;)V

    :cond_1
    return-void
.end method

.method public final r0(Lcom/caverock/androidsvg/SVG$n;)V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Image render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$n;->s:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$n;->t:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$n;->p:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio;->e:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/b;->s(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/caverock/androidsvg/SVG;->k()Lr09;

    return-void

    :cond_3
    new-instance v3, Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v4, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$n;->u:Landroid/graphics/Matrix;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_6
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$n;->q:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v4, :cond_7

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v4

    goto :goto_1

    :cond_7
    move v4, v6

    :goto_1
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$n;->r:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v5, :cond_8

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$o;->g(Lcom/caverock/androidsvg/b;)F

    move-result v5

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$n;->s:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v7

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$n;->t:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result v8

    iget-object v9, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    new-instance v10, Lcom/caverock/androidsvg/SVG$b;

    invoke-direct {v10, v4, v5, v7, v8}, Lcom/caverock/androidsvg/SVG$b;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v4, v4, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v4, v4, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget v5, v4, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v7, v4, Lcom/caverock/androidsvg/SVG$b;->b:F

    iget v8, v4, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget v4, v4, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {p0, v5, v7, v8, v4}, Lcom/caverock/androidsvg/b;->O0(FFFF)V

    :cond_9
    iget-object v4, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v4, v4, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iput-object v4, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v4

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->X0()V

    iget-object v5, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v7, v7, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, v7, v3, v2}, Lcom/caverock/androidsvg/b;->o(Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v3, v3, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    if-ne v3, v5, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x2

    :goto_3
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    if-eqz v4, :cond_b

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final s(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string p0, "data:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xe

    if-ge p0, v1, :cond_1

    return-object v0

    :cond_1
    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/16 v1, 0xc

    if-ge p0, v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, p0, -0x7

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";base64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SVGAndroidRenderer"

    const-string v1, "Could not decode bad Data URL"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final s0(Lcom/caverock/androidsvg/SVG$p;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Line render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/b$h;->c:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->a0(Lcom/caverock/androidsvg/SVG$p;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->I0(Lcom/caverock/androidsvg/SVG$k;)V

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_4
    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 4

    const/4 p0, 0x2

    const/4 v0, 0x3

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x1f4

    if-le p2, v1, :cond_2

    if-eqz p3, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    move p2, p0

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    move p0, p3

    goto :goto_3

    :sswitch_0
    const-string p0, "cursive"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x4

    goto :goto_3

    :sswitch_1
    const-string p0, "serif"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move p0, v0

    goto :goto_3

    :sswitch_2
    const-string v0, "fantasy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :sswitch_3
    const-string p0, "monospace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move p0, v3

    goto :goto_3

    :sswitch_4
    const-string p0, "sans-serif"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move p0, v2

    :cond_8
    :goto_3
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_4

    :pswitch_0
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    :pswitch_1
    sget-object p0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    :pswitch_2
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    :pswitch_3
    sget-object p0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    :pswitch_4
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_4
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b97f43d -> :sswitch_4
        -0x5559f3fd -> :sswitch_3
        -0x407a00da -> :sswitch_2
        0x684317d -> :sswitch_1
        0x432c41c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t0(Lcom/caverock/androidsvg/SVG$u;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Path render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$u;->o:Lcom/caverock/androidsvg/SVG$v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v1, v0, Lcom/caverock/androidsvg/b$h;->c:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lcom/caverock/androidsvg/b$h;->b:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_4
    new-instance v0, Lcom/caverock/androidsvg/b$d;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$u;->o:Lcom/caverock/androidsvg/SVG$v;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/b$d;-><init>(Lcom/caverock/androidsvg/b;Lcom/caverock/androidsvg/SVG$v;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/b$d;->f()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->m(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$i0;->h:Lcom/caverock/androidsvg/SVG$b;

    :cond_5
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->b:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->U()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V

    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->c:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->I0(Lcom/caverock/androidsvg/SVG$k;)V

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_8
    return-void
.end method

.method public final u(Lcom/caverock/androidsvg/SVG$l0;)V
    .locals 1

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$j0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/SVG$j0;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$j0;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/caverock/androidsvg/b$h;->h:Z

    :cond_1
    return-void
.end method

.method public final u0(Lcom/caverock/androidsvg/SVG$y;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PolyLine render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v1, v0, Lcom/caverock/androidsvg/b$h;->c:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/caverock/androidsvg/b$h;->b:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$y;->o:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->b0(Lcom/caverock/androidsvg/SVG$y;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->U()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->b:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V

    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->c:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->I0(Lcom/caverock/androidsvg/SVG$k;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_7
    return-void
.end method

.method public final v0(Lcom/caverock/androidsvg/SVG$z;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Polygon render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v1, v0, Lcom/caverock/androidsvg/b$h;->c:Z

    if-nez v1, :cond_2

    iget-boolean v0, v0, Lcom/caverock/androidsvg/b$h;->b:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$y;->o:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->b0(Lcom/caverock/androidsvg/SVG$y;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->b:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V

    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->c:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->I0(Lcom/caverock/androidsvg/SVG$k;)V

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_7
    return-void
.end method

.method public final w0(Lcom/caverock/androidsvg/SVG$a0;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Rect render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$a0;->q:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$a0;->r:Lcom/caverock/androidsvg/SVG$o;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$a0;->r:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->c0(Lcom/caverock/androidsvg/SVG$a0;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->r(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->p(Lcom/caverock/androidsvg/SVG$i0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result v1

    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->B(Lcom/caverock/androidsvg/SVG$i0;Landroid/graphics/Path;)V

    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/b$h;->c:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/b;->C(Landroid/graphics/Path;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final x0(Lcom/caverock/androidsvg/SVG$d0;)V
    .locals 4

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$d0;->q:Lcom/caverock/androidsvg/SVG$o;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$d0;->r:Lcom/caverock/androidsvg/SVG$o;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$d0;->s:Lcom/caverock/androidsvg/SVG$o;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$d0;->t:Lcom/caverock/androidsvg/SVG$o;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/b;->f0(Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;Lcom/caverock/androidsvg/SVG$o;)Lcom/caverock/androidsvg/SVG$b;

    move-result-object v0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/caverock/androidsvg/b;->z0(Lcom/caverock/androidsvg/SVG$d0;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method public final y0(Lcom/caverock/androidsvg/SVG$d0;Lcom/caverock/androidsvg/SVG$b;)V
    .locals 2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/caverock/androidsvg/b;->z0(Lcom/caverock/androidsvg/SVG$d0;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    return-void
.end method

.method public final z(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$t;)V
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->u(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$l0;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    const-string p2, "Fill"

    goto :goto_0

    :cond_0
    const-string p2, "Stroke"

    :goto_0
    iget-object v0, p3, Lcom/caverock/androidsvg/SVG$t;->b:Ljava/lang/String;

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s reference \'%s\' not found"

    invoke-static {v0, p2}, Lcom/caverock/androidsvg/b;->F(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p3, Lcom/caverock/androidsvg/SVG$t;->c:Lcom/caverock/androidsvg/SVG$m0;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, p3, p1, p2}, Lcom/caverock/androidsvg/b;->P0(Lcom/caverock/androidsvg/b$h;ZLcom/caverock/androidsvg/SVG$m0;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-boolean p2, p0, Lcom/caverock/androidsvg/b$h;->b:Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-boolean p2, p0, Lcom/caverock/androidsvg/b$h;->c:Z

    :goto_1
    return-void

    :cond_3
    instance-of p3, v0, Lcom/caverock/androidsvg/SVG$k0;

    if-eqz p3, :cond_4

    check-cast v0, Lcom/caverock/androidsvg/SVG$k0;

    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/b;->X(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$k0;)V

    goto :goto_2

    :cond_4
    instance-of p3, v0, Lcom/caverock/androidsvg/SVG$o0;

    if-eqz p3, :cond_5

    check-cast v0, Lcom/caverock/androidsvg/SVG$o0;

    invoke-virtual {p0, p1, p2, v0}, Lcom/caverock/androidsvg/b;->e0(ZLcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$o0;)V

    goto :goto_2

    :cond_5
    instance-of p2, v0, Lcom/caverock/androidsvg/SVG$b0;

    if-eqz p2, :cond_6

    check-cast v0, Lcom/caverock/androidsvg/SVG$b0;

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/b;->Q0(ZLcom/caverock/androidsvg/SVG$b0;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final z0(Lcom/caverock/androidsvg/SVG$d0;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Svg render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/b;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p4, :cond_2

    iget-object p4, p1, Lcom/caverock/androidsvg/SVG$n0;->o:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/caverock/androidsvg/PreserveAspectRatio;->e:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/b;->W0(Lcom/caverock/androidsvg/b$h;Lcom/caverock/androidsvg/SVG$j0;)V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->A()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iput-object p2, v0, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget-object p2, v0, Lcom/caverock/androidsvg/b$h;->a:Lcom/caverock/androidsvg/SVG$Style;

    iget-object p2, p2, Lcom/caverock/androidsvg/SVG$Style;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p2, p2, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget v0, p2, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget v1, p2, Lcom/caverock/androidsvg/SVG$b;->b:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget p2, p2, Lcom/caverock/androidsvg/SVG$b;->d:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/caverock/androidsvg/b;->O0(FFFF)V

    :cond_4
    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p2, p2, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, p1, p2}, Lcom/caverock/androidsvg/b;->q(Lcom/caverock/androidsvg/SVG$i0;Lcom/caverock/androidsvg/SVG$b;)V

    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object v0, v0, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    invoke-virtual {p0, v0, p3, p4}, Lcom/caverock/androidsvg/b;->o(Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/SVG$b;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p3, p1, Lcom/caverock/androidsvg/SVG$p0;->p:Lcom/caverock/androidsvg/SVG$b;

    iput-object p3, p2, Lcom/caverock/androidsvg/b$h;->g:Lcom/caverock/androidsvg/SVG$b;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/caverock/androidsvg/b;->a:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b$h;

    iget-object p3, p3, Lcom/caverock/androidsvg/b$h;->f:Lcom/caverock/androidsvg/SVG$b;

    iget p4, p3, Lcom/caverock/androidsvg/SVG$b;->a:F

    iget p3, p3, Lcom/caverock/androidsvg/SVG$b;->b:F

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->m0()Z

    move-result p2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/b;->X0()V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/caverock/androidsvg/b;->F0(Lcom/caverock/androidsvg/SVG$h0;Z)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->j0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/b;->U0(Lcom/caverock/androidsvg/SVG$i0;)V

    :cond_7
    :goto_2
    return-void
.end method
