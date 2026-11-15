.class public abstract Lgl5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FFF)F
    .locals 1

    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static synthetic b(FFFILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x38d1b717    # 1.0E-4f

    :cond_0
    invoke-static {p0, p1, p2}, Lgl5;->a(FFF)F

    move-result p0

    return p0
.end method
