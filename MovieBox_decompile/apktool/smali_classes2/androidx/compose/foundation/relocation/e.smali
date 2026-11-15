.class public abstract Landroidx/compose/foundation/relocation/e;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final synthetic a(Ly/i;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/relocation/e;->c(Ly/i;)Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/node/f;)Landroidx/compose/foundation/relocation/a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/relocation/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/relocation/e$a;-><init>(Landroidx/compose/ui/node/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final c(Ly/i;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly/i;->f()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual {p0}, Ly/i;->i()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    invoke-virtual {p0}, Ly/i;->g()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    invoke-virtual {p0}, Ly/i;->c()F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    float-to-int p0, p0

    .line 23
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
