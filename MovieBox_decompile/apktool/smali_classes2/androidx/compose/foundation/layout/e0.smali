.class public abstract Landroidx/compose/foundation/layout/e0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V
    .locals 5

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
    const-string v1, "androidx.compose.foundation.layout.Spacer (Spacer.kt:38)"

    .line 9
    .line 10
    const v2, -0x4581923

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p2, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->a:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p1, v0}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1, p0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    instance-of v4, v4, Landroidx/compose/runtime/f;

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/i;->C()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Landroidx/compose/runtime/i;->e()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {p1, v3}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/i;->o()V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-static {p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, p2, v4}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {v3, v1, p2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {v3, p0, p2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {v3}, Landroidx/compose/runtime/i;->e()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_3

    .line 98
    .line 99
    invoke-interface {v3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_4

    .line 112
    .line 113
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-interface {v3, p2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-interface {v3, p2, p0}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/i;->r()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_5

    .line 135
    .line 136
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 137
    .line 138
    .line 139
    :cond_5
    return-void
.end method
