.class public abstract Landroidx/compose/foundation/i0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/g;Lp/i;Landroidx/compose/foundation/gestures/d;Landroidx/compose/runtime/i;II)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    move-object v2, p2

    .line 2
    move-object/from16 v0, p8

    .line 3
    .line 4
    and-int/lit8 v1, p10, 0x40

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move-object v8, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v8, p7

    .line 12
    .line 13
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    const-string v3, "androidx.compose.foundation.scrollingContainer (ScrollingContainer.kt:40)"

    .line 21
    .line 22
    const v4, -0x64017657

    .line 23
    .line 24
    .line 25
    move/from16 v5, p9

    .line 26
    .line 27
    invoke-static {v4, v5, v1, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object v1, Landroidx/compose/foundation/gestures/m;->a:Landroidx/compose/foundation/gestures/m;

    .line 31
    .line 32
    const/4 v3, 0x6

    .line 33
    invoke-virtual {v1, v0, v3}, Landroidx/compose/foundation/gestures/m;->b(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v4, p0

    .line 38
    invoke-static {p0, p2}, Landroidx/compose/foundation/g;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/f;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4, v3}, Landroidx/compose/foundation/g0;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/f0;)Landroidx/compose/ui/f;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/s1;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-interface {v0, v5}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    .line 56
    move v5, p4

    .line 57
    invoke-virtual {v1, v0, p2, p4}, Landroidx/compose/foundation/gestures/m;->c(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    move-object v0, v4

    .line 62
    move-object v1, p1

    .line 63
    move-object v2, p2

    .line 64
    move v4, p3

    .line 65
    move-object v6, p5

    .line 66
    move-object v7, p6

    .line 67
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->f(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/f0;ZZLandroidx/compose/foundation/gestures/g;Lp/i;Landroidx/compose/foundation/gestures/d;)Landroidx/compose/ui/f;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-object v0
.end method
