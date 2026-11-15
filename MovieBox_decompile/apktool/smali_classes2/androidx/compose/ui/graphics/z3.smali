.class public abstract Landroidx/compose/ui/graphics/z3;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:S

.field private static final b:S

.field private static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->a(F)S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-short v0, Landroidx/compose/ui/graphics/z3;->a:S

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->a(F)S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-short v0, Landroidx/compose/ui/graphics/z3;->b:S

    .line 16
    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Landroidx/compose/ui/graphics/z3;->c:F

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic a()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/z3;->c:F

    .line 2
    .line 3
    return v0
.end method
