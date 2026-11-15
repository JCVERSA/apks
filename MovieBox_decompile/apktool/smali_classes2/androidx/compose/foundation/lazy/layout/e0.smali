.class public abstract Landroidx/compose/foundation/lazy/layout/e0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/runtime/i1;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Landroidx/compose/runtime/i1;)Landroidx/compose/runtime/i1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/i1;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/i1;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/r2;->g()Landroidx/compose/runtime/q2;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/e0;->b(Landroidx/compose/runtime/i1;)Landroidx/compose/runtime/i1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final d(Landroidx/compose/runtime/i1;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
