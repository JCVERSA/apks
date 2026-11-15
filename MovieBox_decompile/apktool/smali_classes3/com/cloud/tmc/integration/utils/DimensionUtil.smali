.class public Lcom/cloud/tmc/integration/utils/DimensionUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:DimensionUtil"

.field private static sScale:F

.field private static sScaledDensity:F

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScale:F

    .line 5
    .line 6
    mul-float/2addr p1, p0

    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p1, p0

    .line 10
    float-to-int p0, p1

    .line 11
    return p0
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScale:F

    .line 5
    .line 6
    return p0
.end method

.method public static getFontSize(F)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f600000    # 0.875f

    .line 2
    .line 3
    cmpl-float v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/high16 p0, 0x41600000    # 14.0f

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpl-float v0, p0, v0

    .line 13
    .line 14
    const/high16 v1, 0x41800000    # 16.0f

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/high16 v0, 0x3f900000    # 1.125f

    .line 20
    .line 21
    cmpl-float v0, p0, v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const/high16 p0, 0x41900000    # 18.0f

    .line 26
    .line 27
    return p0

    .line 28
    :cond_2
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 29
    .line 30
    cmpl-float v0, p0, v0

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const/high16 p0, 0x41a00000    # 20.0f

    .line 35
    .line 36
    return p0

    .line 37
    :cond_3
    const/high16 v0, 0x3fb00000    # 1.375f

    .line 38
    .line 39
    cmpl-float p0, p0, v0

    .line 40
    .line 41
    if-nez p0, :cond_4

    .line 42
    .line 43
    const/high16 p0, 0x41b00000    # 22.0f

    .line 44
    .line 45
    return p0

    .line 46
    :cond_4
    return v1
.end method

.method public static getRelativeLeft(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1020002

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/View;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->getRelativeLeft(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr v0, p0

    .line 30
    return v0
.end method

.method public static getRelativeTop(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1020002

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/View;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->getRelativeTop(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-int/2addr v0, p0

    .line 30
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScreenHeight:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const-string v0, "window"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sput p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScreenHeight:I

    .line 23
    .line 24
    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScreenWidth:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const-string v0, "window"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    sput p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScreenWidth:I

    .line 23
    .line 24
    return p0
.end method

.method private static initScale(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScale:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    sput p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    const-string v0, "TmcKernel:DimensionUtil"

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method private static initScaledDensity(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScaledDensity:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 17
    .line 18
    sput p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScaledDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    const-string v0, "TmcKernel:DimensionUtil"

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public static isValueEqule(FF)Z
    .locals 0

    .line 1
    float-to-int p0, p0

    .line 2
    float-to-int p1, p1

    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->initScale(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScale:F

    .line 5
    .line 6
    div-float/2addr p1, p0

    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p1, p0

    .line 10
    float-to-int p0, p1

    .line 11
    return p0
.end method

.method public static px2sp(Landroid/content/Context;F)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScaledDensity:F

    .line 5
    .line 6
    div-float/2addr p1, p0

    .line 7
    return p1
.end method

.method public static resetDimensions()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScreenWidth:I

    .line 3
    .line 4
    sput v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScreenHeight:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScaledDensity:F

    .line 8
    .line 9
    sput v0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScale:F

    .line 10
    .line 11
    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->initScaledDensity(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p0, Lcom/cloud/tmc/integration/utils/DimensionUtil;->sScaledDensity:F

    .line 5
    .line 6
    mul-float/2addr p1, p0

    .line 7
    const/high16 p0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p1, p0

    .line 10
    float-to-int p0, p1

    .line 11
    return p0
.end method
