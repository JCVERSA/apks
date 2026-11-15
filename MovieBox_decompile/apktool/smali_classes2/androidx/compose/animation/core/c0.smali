.class public abstract synthetic Landroidx/compose/animation/core/c0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroidx/compose/animation/core/d0;FFF)F
    .locals 6

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/animation/core/d0;->e(FFF)J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    move-object v0, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Landroidx/compose/animation/core/d0;->d(JFFF)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static bridge synthetic b(Landroidx/compose/animation/core/d0;Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/v0;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/animation/core/d0;->a(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Landroidx/compose/animation/core/d0;Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/c1;
    .locals 0

    .line 1
    new-instance p1, Landroidx/compose/animation/core/c1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/c1;-><init>(Landroidx/compose/animation/core/d0;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
