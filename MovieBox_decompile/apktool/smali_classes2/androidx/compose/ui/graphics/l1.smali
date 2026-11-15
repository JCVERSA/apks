.class public abstract synthetic Landroidx/compose/ui/graphics/l1;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroidx/compose/ui/graphics/m1;Ly/i;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ly/i;->f()F

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Ly/i;->i()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Ly/i;->g()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Ly/i;->c()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    move-object v0, p0

    .line 18
    move v5, p2

    .line 19
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/m1;->a(FFFFI)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static b(Landroidx/compose/ui/graphics/m1;Ly/i;Landroidx/compose/ui/graphics/m4;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ly/i;->f()F

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Ly/i;->i()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Ly/i;->g()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Ly/i;->c()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    move-object v0, p0

    .line 18
    move-object v5, p2

    .line 19
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/m1;->f(FFFFLandroidx/compose/ui/graphics/m4;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    sget-object p2, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/t1$a;->b()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/m1;->b(Landroidx/compose/ui/graphics/Path;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/m1;FFFFIILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_1

    .line 2
    .line 3
    and-int/lit8 p6, p6, 0x10

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    sget-object p5, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    .line 8
    .line 9
    invoke-virtual {p5}, Landroidx/compose/ui/graphics/t1$a;->b()I

    .line 10
    .line 11
    .line 12
    move-result p5

    .line 13
    :cond_0
    move v5, p5

    .line 14
    move-object v0, p0

    .line 15
    move v1, p1

    .line 16
    move v2, p2

    .line 17
    move v3, p3

    .line 18
    move v4, p4

    .line 19
    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/m1;->a(FFFFI)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 24
    .line 25
    const-string p1, "Super calls with default arguments not supported in this target, function: clipRect-N_I0leg"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static synthetic e(Landroidx/compose/ui/graphics/m1;Ly/i;IILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    sget-object p2, Landroidx/compose/ui/graphics/t1;->a:Landroidx/compose/ui/graphics/t1$a;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/t1$a;->b()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/m1;->l(Ly/i;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method
