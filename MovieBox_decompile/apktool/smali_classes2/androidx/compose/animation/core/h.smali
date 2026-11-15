.class public abstract Landroidx/compose/animation/core/h;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final synthetic a(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/animation/core/h;->b(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/compose/animation/core/o;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final c(FFLjava/lang/Object;)Landroidx/compose/animation/core/o0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/o0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/o0;-><init>(FFLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic d(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/o0;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const p1, 0x44bb8000    # 1500.0f

    .line 12
    .line 13
    .line 14
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 15
    .line 16
    if-eqz p3, :cond_2

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/h;->c(FFLjava/lang/Object;)Landroidx/compose/animation/core/o0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final e(IILandroidx/compose/animation/core/z;)Landroidx/compose/animation/core/r0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/r0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic f(IILandroidx/compose/animation/core/z;ILjava/lang/Object;)Landroidx/compose/animation/core/r0;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x12c

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/animation/core/b0;->c()Landroidx/compose/animation/core/z;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/h;->e(IILandroidx/compose/animation/core/z;)Landroidx/compose/animation/core/r0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
