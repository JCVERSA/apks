.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private static final a(Landroidx/compose/foundation/lazy/layout/m;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/i;I)V
    .locals 7

    .line 1
    const v0, 0x55d242fd

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    and-int/lit8 v1, p5, 0x6

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x2

    .line 21
    :goto_0
    or-int/2addr v1, p5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, p5

    .line 24
    :goto_1
    and-int/lit8 v2, p5, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v1, v2

    .line 40
    :cond_3
    and-int/lit16 v2, p5, 0x180

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    invoke-interface {p4, p2}, Landroidx/compose/runtime/i;->c(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const/16 v2, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v2, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v1, v2

    .line 56
    :cond_5
    and-int/lit16 v2, p5, 0xc00

    .line 57
    .line 58
    if-nez v2, :cond_7

    .line 59
    .line 60
    invoke-interface {p4, p3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_6

    .line 65
    .line 66
    const/16 v2, 0x800

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/16 v2, 0x400

    .line 70
    .line 71
    :goto_4
    or-int/2addr v1, v2

    .line 72
    :cond_7
    and-int/lit16 v2, v1, 0x493

    .line 73
    .line 74
    const/16 v3, 0x492

    .line 75
    .line 76
    if-ne v2, v3, :cond_9

    .line 77
    .line 78
    invoke-interface {p4}, Landroidx/compose/runtime/i;->h()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_8

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/i;->G()V

    .line 86
    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_a

    .line 94
    .line 95
    const/4 v2, -0x1

    .line 96
    const-string v3, "androidx.compose.foundation.lazy.layout.SkippableItem (LazyLayoutItemContentFactory.kt:133)"

    .line 97
    .line 98
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_a
    move-object v0, p1

    .line 102
    check-cast v0, Landroidx/compose/runtime/saveable/a;

    .line 103
    .line 104
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;

    .line 105
    .line 106
    invoke-direct {v1, p0, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;-><init>(Landroidx/compose/foundation/lazy/layout/m;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const/16 v2, 0x36

    .line 110
    .line 111
    const v3, 0x3a785bde

    .line 112
    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    invoke-static {v3, v4, v1, p4, v2}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/16 v2, 0x30

    .line 120
    .line 121
    invoke-interface {v0, p3, v1, p4, v2}, Landroidx/compose/runtime/saveable/a;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 131
    .line 132
    .line 133
    :cond_b
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    if-eqz p4, :cond_c

    .line 138
    .line 139
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$2;

    .line 140
    .line 141
    move-object v0, v6

    .line 142
    move-object v1, p0

    .line 143
    move-object v2, p1

    .line 144
    move v3, p2

    .line 145
    move-object v4, p3

    .line 146
    move v5, p5

    .line 147
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$2;-><init>(Landroidx/compose/foundation/lazy/layout/m;Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p4, v6}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    :cond_c
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/foundation/lazy/layout/m;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/i;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;->a(Landroidx/compose/foundation/lazy/layout/m;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/i;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
