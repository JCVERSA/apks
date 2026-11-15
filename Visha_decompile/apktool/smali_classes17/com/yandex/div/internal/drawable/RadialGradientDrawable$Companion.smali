.class public final Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/drawable/RadialGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion$a;
    }
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
    invoke-direct {p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(FFFF)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->e(FFFF)F

    move-result p0

    return p0
.end method

.method public static final synthetic b(FF)F
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->f(FF)F

    move-result p0

    return p0
.end method

.method public static final synthetic c(FF)F
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->g(FF)F

    move-result p0

    return p0
.end method

.method public static final e(FFFF)F
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const/4 p0, 0x2

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final f(FF)F
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static final g(FF)F
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static final h(Lyi5;)[Ljava/lang/Float;
    .locals 0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    return-object p0
.end method

.method public static final i(Lyi5;)[Ljava/lang/Float;
    .locals 0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    return-object p0
.end method

.method public static final j(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;I)F
    .locals 1

    instance-of v0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;->a()F

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;->a()F

    move-result p0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final d(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;[III)Landroid/graphics/RadialGradient;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    const-string v5, "radius"

    invoke-static {v0, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "centerX"

    invoke-static {v1, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "centerY"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "colors"

    move-object/from16 v10, p4

    invoke-static {v10, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->j(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;I)F

    move-result v7

    invoke-static {v2, v4}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->j(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;I)F

    move-result v8

    int-to-float v1, v3

    int-to-float v2, v4

    new-instance v3, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion$createRadialGradient$distancesToCorners$2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v1

    move v15, v2

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v17}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion$createRadialGradient$distancesToCorners$2;-><init>(FFFFFF)V

    invoke-static {v3}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v3

    new-instance v6, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion$createRadialGradient$distancesToSides$2;

    move-object v11, v6

    move v13, v1

    move v14, v2

    move v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion$createRadialGradient$distancesToSides$2;-><init>(FFFFFF)V

    invoke-static {v6}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v1

    instance-of v2, v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;->a()F

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;

    invoke-virtual {v0}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;->a()Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    move-result-object v0

    sget-object v2, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-static {v1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->i(Lyi5;)[Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lhi;->x0([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_2
    invoke-static {v1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->i(Lyi5;)[Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lhi;->z0([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->h(Lyi5;)[Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lhi;->x0([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->h(Lyi5;)[Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lhi;->z0([Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    :goto_1
    move v9, v0

    goto :goto_2

    :cond_5
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_1

    :goto_2
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v1

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
