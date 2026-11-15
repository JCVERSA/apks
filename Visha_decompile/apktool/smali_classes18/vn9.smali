.class public Lvn9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn9$a;
    }
.end annotation


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvn9;->a:F

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 0

    iget p0, p0, Lvn9;->a:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public b(II)Z
    .locals 0

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lvn9;->a(F)I

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lvn9;->a(F)I

    move-result p0

    if-nez p0, :cond_0

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

.method public final c(I)I
    .locals 0

    rem-int/lit8 p0, p1, 0x40

    if-nez p0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x40

    return p1
.end method

.method public d(II)Lvn9$a;
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lvn9;->a(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lvn9;->c(I)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    new-instance v0, Lvn9$a;

    invoke-direct {v0, p0, p2, p1}, Lvn9$a;-><init>(IIF)V

    return-object v0
.end method
