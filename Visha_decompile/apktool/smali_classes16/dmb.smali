.class public abstract Ldmb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, p0

    mul-float/2addr v0, v1

    return v0
.end method

.method public static final b(F)F
    .locals 3

    const/high16 v0, 0x47070000    # 34560.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const p0, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x45100000    # 2304.0f

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3fa00000    # 1.25f

    if-gtz v1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    sub-float/2addr p0, v0

    const/high16 v0, 0x46fc0000    # 32256.0f

    div-float/2addr p0, v0

    const v0, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr p0, v0

    sub-float p0, v2, p0

    :goto_0
    return p0
.end method

.method public static final c(F)F
    .locals 3

    const/high16 v0, 0x47070000    # 34560.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const p0, 0x3f7851ec    # 0.97f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x45100000    # 2304.0f

    cmpg-float v1, p0, v0

    const v2, 0x3f666666    # 0.9f

    if-gtz v1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    sub-float/2addr p0, v0

    const/high16 v0, 0x46fc0000    # 32256.0f

    div-float/2addr p0, v0

    const v0, 0x3d8f5c30    # 0.07000005f

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    :goto_0
    return p0
.end method

.method public static final d(F)F
    .locals 1

    sget-object v0, Lq97;->a:Lq97;

    invoke-virtual {v0, p0}, Lq97;->a(F)F

    move-result p0

    return p0
.end method
