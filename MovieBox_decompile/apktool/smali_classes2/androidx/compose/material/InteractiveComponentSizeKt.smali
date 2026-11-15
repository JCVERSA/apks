.class public abstract Landroidx/compose/material/InteractiveComponentSizeKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/runtime/s1;

.field private static final b:Landroidx/compose/runtime/s1;

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;->INSTANCE:Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/s1;

    .line 8
    .line 9
    sput-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->b:Landroidx/compose/runtime/s1;

    .line 10
    .line 11
    const/16 v0, 0x30

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v1, v0}, Lo0/j;->b(FF)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sput-wide v0, Landroidx/compose/material/InteractiveComponentSizeKt;->c:J

    .line 27
    .line 28
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/material/InteractiveComponentSizeKt;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final b()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/MinimumInteractiveModifier;->b:Landroidx/compose/material/MinimumInteractiveModifier;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
