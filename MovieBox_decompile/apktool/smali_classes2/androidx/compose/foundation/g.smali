.class public abstract Landroidx/compose/foundation/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:F

.field private static final b:Landroidx/compose/ui/f;

.field private static final c:Landroidx/compose/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/foundation/g;->a:F

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/foundation/g$a;

    .line 13
    .line 14
    invoke-direct {v1}, Landroidx/compose/foundation/g$a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/d;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Landroidx/compose/foundation/g;->b:Landroidx/compose/ui/f;

    .line 22
    .line 23
    new-instance v1, Landroidx/compose/foundation/g$b;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/compose/foundation/g$b;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/d;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Landroidx/compose/foundation/g;->c:Landroidx/compose/ui/f;

    .line 33
    .line 34
    return-void
.end method

.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/foundation/g;->c:Landroidx/compose/ui/f;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Landroidx/compose/foundation/g;->b:Landroidx/compose/ui/f;

    .line 9
    .line 10
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/g;->a:F

    .line 2
    .line 3
    return v0
.end method
