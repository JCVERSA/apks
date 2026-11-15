.class public abstract Lcom/transsion/usercenter/setting/labelsfeedback/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(F)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p0, v0

    .line 12
    float-to-double v0, p0

    .line 13
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 14
    .line 15
    add-double/2addr v0, v2

    .line 16
    double-to-int p0, v0

    .line 17
    return p0
.end method

.method public static final b(I)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p0, p0

    .line 12
    mul-float/2addr p0, v0

    .line 13
    float-to-double v0, p0

    .line 14
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 15
    .line 16
    add-double/2addr v0, v2

    .line 17
    double-to-int p0, v0

    .line 18
    return p0
.end method
