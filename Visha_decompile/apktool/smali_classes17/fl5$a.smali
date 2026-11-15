.class public final Lfl5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfl5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F[I[FII)Landroid/graphics/LinearGradient;
    .locals 11

    const-string v0, "colors"

    move-object v6, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p4

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    move/from16 v3, p5

    int-to-float v3, v3

    div-float v4, v3, v1

    invoke-virtual {p0, p1}, Lfl5$a;->b(F)F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float/2addr v3, v0

    div-float/2addr v3, v1

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v3, v5, v5, v9, v10}, Lgl5;->b(FFFILjava/lang/Object;)F

    move-result v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v0

    div-float/2addr v7, v1

    invoke-static {v7, v5, v5, v9, v10}, Lgl5;->b(FFFILjava/lang/Object;)F

    move-result v0

    new-instance v9, Landroid/graphics/LinearGradient;

    sub-float v5, v2, v3

    add-float v7, v4, v0

    add-float v8, v2, v3

    sub-float v0, v4, v0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    move v2, v5

    move v3, v7

    move v4, v8

    move v5, v0

    move-object v7, p3

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v9
.end method

.method public final b(F)F
    .locals 2

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    float-to-double v0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method
