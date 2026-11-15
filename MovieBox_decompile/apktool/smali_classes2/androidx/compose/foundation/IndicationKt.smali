.class public abstract Landroidx/compose/foundation/IndicationKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/IndicationKt$LocalIndication$1;->INSTANCE:Landroidx/compose/foundation/IndicationKt$LocalIndication$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/foundation/IndicationKt;->a:Landroidx/compose/runtime/s1;

    .line 8
    .line 9
    return-void
.end method

.method public static final a()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/IndicationKt;->a:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/f;Lp/g;Landroidx/compose/foundation/x;)Landroidx/compose/ui/f;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    instance-of v0, p2, Landroidx/compose/foundation/b0;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/IndicationModifierElement;

    .line 9
    .line 10
    check-cast p2, Landroidx/compose/foundation/b0;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/IndicationModifierElement;-><init>(Lp/g;Landroidx/compose/foundation/b0;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/foundation/IndicationKt$indication$$inlined$debugInspectorInfo$1;

    .line 27
    .line 28
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/IndicationKt$indication$$inlined$debugInspectorInfo$1;-><init>(Lp/g;Landroidx/compose/foundation/x;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    new-instance v1, Landroidx/compose/foundation/IndicationKt$indication$2;

    .line 37
    .line 38
    invoke-direct {v1, p2, p1}, Landroidx/compose/foundation/IndicationKt$indication$2;-><init>(Landroidx/compose/foundation/x;Lp/g;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->b(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/f;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
