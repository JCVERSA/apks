.class public abstract Landroidx/compose/ui/node/f0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lo0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0, v1}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/compose/ui/node/f0;->a:Lo0/e;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic a()Lo0/e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/f0;->a:Lo0/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "LayoutNode should be attached to an owner"

    .line 9
    .line 10
    invoke-static {p0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 11
    .line 12
    .line 13
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 14
    .line 15
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method
