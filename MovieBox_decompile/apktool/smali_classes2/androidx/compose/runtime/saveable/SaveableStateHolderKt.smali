.class public abstract Landroidx/compose/runtime/saveable/SaveableStateHolderKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/saveable/a;
    .locals 7

    .line 1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:60)"

    .line 9
    .line 10
    const v2, 0xebd1ab

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const p1, -0x2f7337b1

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->P(I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    new-array v0, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    sget-object p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->d:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$a;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$a;->a()Landroidx/compose/runtime/saveable/d;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v3, Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;

    .line 32
    .line 33
    const/16 v5, 0xc00

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v2, 0x0

    .line 37
    move-object v4, p0

    .line 38
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;II)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->d()Landroidx/compose/runtime/s1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/compose/runtime/saveable/b;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->i(Landroidx/compose/runtime/saveable/b;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-object p1
.end method
