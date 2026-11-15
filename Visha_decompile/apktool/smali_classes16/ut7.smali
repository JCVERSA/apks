.class public abstract Lut7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FFI)F
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const p1, 0x3f19999a    # 0.6f

    mul-float/2addr p0, p1

    return p0
.end method
