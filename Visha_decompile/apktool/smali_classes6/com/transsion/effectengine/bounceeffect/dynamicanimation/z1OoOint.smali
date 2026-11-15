.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public z1OoObyte:D

.field public z1OoOcase:D

.field public z1OoOchar:D

.field public z1OoOdo:D

.field public final z1OoOelse:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

.field public z1OoOfor:Z

.field public z1OoOif:D

.field public z1OoOint:D

.field public z1OoOnew:D

.field public z1OoOtry:D


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOfor:Z

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOelse:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOchar:D

    return-void
.end method


# virtual methods
.method public final z1OoOdo(DDJ)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOfor:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    :goto_0
    move-wide/from16 v4, p5

    goto :goto_2

    :cond_0
    iget-wide v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOchar:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    iget-wide v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1

    neg-double v6, v4

    iget-wide v8, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    mul-double/2addr v6, v8

    mul-double/2addr v4, v4

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOtry:D

    iget-wide v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif:D

    neg-double v6, v4

    iget-wide v8, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    mul-double/2addr v6, v8

    mul-double/2addr v4, v4

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double/2addr v6, v4

    iput-wide v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoObyte:D

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_2

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    iget-wide v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    mul-double/2addr v4, v4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    iput-wide v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOcase:D

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOfor:Z

    goto :goto_0

    :goto_2
    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 3
    iget-wide v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOchar:D

    sub-double v6, p1, v6

    iget-wide v8, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif:D

    cmpl-double v1, v8, v2

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    if-lez v1, :cond_3

    iget-wide v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoObyte:D

    mul-double v8, v1, v6

    sub-double v8, v8, p3

    iget-wide v12, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOtry:D

    sub-double v12, v1, v12

    div-double/2addr v8, v12

    sub-double/2addr v6, v8

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v6

    iget-wide v12, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOtry:D

    mul-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v8

    add-double/2addr v12, v1

    iget-wide v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoObyte:D

    mul-double/2addr v6, v1

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v6

    iget-wide v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOtry:D

    mul-double/2addr v8, v6

    mul-double/2addr v6, v4

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v8

    add-double/2addr v3, v1

    goto/16 :goto_3

    :cond_3
    if-nez v1, :cond_4

    iget-wide v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    mul-double v8, v1, v6

    add-double v8, v8, p3

    mul-double v12, v8, v4

    add-double/2addr v12, v6

    neg-double v1, v1

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v12

    iget-wide v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    neg-double v6, v6

    mul-double/2addr v6, v4

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v12

    iget-wide v12, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    neg-double v12, v12

    mul-double/2addr v6, v12

    mul-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v8

    add-double/2addr v3, v6

    move-wide v12, v1

    goto :goto_3

    :cond_4
    iget-wide v12, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOcase:D

    div-double/2addr v2, v12

    iget-wide v12, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    mul-double v14, v8, v12

    mul-double/2addr v14, v6

    add-double v14, v14, p3

    mul-double/2addr v14, v2

    neg-double v1, v8

    mul-double/2addr v1, v12

    mul-double/2addr v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v8, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOcase:D

    mul-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    iget-wide v12, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOcase:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v14

    add-double/2addr v12, v8

    mul-double/2addr v12, v1

    iget-wide v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    neg-double v8, v1

    mul-double/2addr v8, v12

    iget-wide v10, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif:D

    mul-double/2addr v8, v10

    neg-double v10, v10

    mul-double/2addr v10, v1

    mul-double/2addr v10, v4

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v10, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOcase:D

    move-wide/from16 p1, v12

    neg-double v12, v10

    mul-double/2addr v12, v6

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    iget-wide v10, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOcase:D

    mul-double/2addr v14, v10

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v14

    add-double/2addr v3, v6

    mul-double/2addr v3, v1

    add-double/2addr v3, v8

    move-wide/from16 v12, p1

    :goto_3
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOelse:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    iget-wide v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOchar:D

    add-double/2addr v12, v5

    double-to-float v0, v12

    iput v0, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOdo:F

    double-to-float v0, v3

    iput v0, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    return-object v1

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z1OoOdo(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOfor:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z1OoOif(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOfor:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
