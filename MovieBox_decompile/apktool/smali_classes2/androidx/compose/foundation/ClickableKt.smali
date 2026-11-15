.class public abstract Landroidx/compose/foundation/ClickableKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;Lp/i;Landroidx/compose/foundation/x;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/f;
    .locals 10

    .line 1
    move-object v1, p1

    .line 2
    move-object v2, p2

    .line 3
    instance-of v0, v2, Landroidx/compose/foundation/b0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/foundation/b0;

    .line 8
    .line 9
    new-instance v8, Landroidx/compose/foundation/ClickableElement;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, v8

    .line 13
    move-object v1, p1

    .line 14
    move v3, p3

    .line 15
    move-object v4, p4

    .line 16
    move-object v5, p5

    .line 17
    move-object/from16 v6, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    move-object v0, p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v8, Landroidx/compose/foundation/ClickableElement;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    move-object v0, v8

    .line 31
    move-object v1, p1

    .line 32
    move v3, p3

    .line 33
    move-object v4, p4

    .line 34
    move-object v5, p5

    .line 35
    move-object/from16 v6, p6

    .line 36
    .line 37
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 44
    .line 45
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/f;Lp/g;Landroidx/compose/foundation/x;)Landroidx/compose/ui/f;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    new-instance v9, Landroidx/compose/foundation/ClickableElement;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v0, v9

    .line 54
    move-object v1, p1

    .line 55
    move v3, p3

    .line 56
    move-object v4, p4

    .line 57
    move-object v5, p5

    .line 58
    move-object/from16 v6, p6

    .line 59
    .line 60
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v8, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    sget-object v6, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 69
    .line 70
    new-instance v7, Landroidx/compose/foundation/ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;

    .line 71
    .line 72
    move-object v0, v7

    .line 73
    move-object v1, p2

    .line 74
    move v2, p3

    .line 75
    move-object v3, p4

    .line 76
    move-object v4, p5

    .line 77
    move-object/from16 v5, p6

    .line 78
    .line 79
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;-><init>(Landroidx/compose/foundation/x;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v6, v1, v7, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    invoke-interface {p0, v8}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.method public static synthetic b(Landroidx/compose/ui/f;Lp/i;Landroidx/compose/foundation/x;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x4

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    move v3, p3

    .line 7
    and-int/lit8 p3, p7, 0x8

    .line 8
    .line 9
    const/4 p8, 0x0

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    move-object v4, p8

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v4, p4

    .line 15
    :goto_0
    and-int/lit8 p3, p7, 0x10

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    move-object v5, p8

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v5, p5

    .line 22
    :goto_1
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move-object v6, p6

    .line 26
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/f;Lp/i;Landroidx/compose/foundation/x;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/f;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/f;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/ClickableKt$clickable-XHw0xAI$$inlined$debugInspectorInfo$1;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/ClickableKt$clickable-XHw0xAI$$inlined$debugInspectorInfo$1;-><init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    new-instance v1, Landroidx/compose/foundation/ClickableKt$clickable$2;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/ClickableKt$clickable$2;-><init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->b(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/f;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x4

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/f;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/f;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/node/m1;)Z
    .locals 3

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/compose/foundation/gestures/l;->p:Landroidx/compose/foundation/gestures/l$a;

    .line 7
    .line 8
    new-instance v2, Landroidx/compose/foundation/ClickableKt$hasScrollableContainer$1;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Landroidx/compose/foundation/ClickableKt$hasScrollableContainer$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1, v2}, Landroidx/compose/ui/node/n1;->c(Landroidx/compose/ui/node/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 17
    .line 18
    return p0
.end method
