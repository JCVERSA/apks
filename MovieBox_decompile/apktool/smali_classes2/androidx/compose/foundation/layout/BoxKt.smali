.class public abstract Landroidx/compose/foundation/layout/BoxKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Landroidx/compose/ui/layout/t;

.field private static final d:Landroidx/compose/ui/layout/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Z)Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Z)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Landroidx/compose/foundation/layout/BoxKt;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/b;Z)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Landroidx/compose/foundation/layout/BoxKt;->c:Landroidx/compose/ui/layout/t;

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;->a:Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;

    .line 29
    .line 30
    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->d:Landroidx/compose/ui/layout/t;

    .line 31
    .line 32
    return-void
.end method

.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V
    .locals 7

    .line 1
    const v0, -0xc96ce69

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    and-int/lit8 v1, p2, 0x6

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    or-int/2addr v1, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, p2

    .line 25
    :goto_1
    and-int/lit8 v3, v1, 0x3

    .line 26
    .line 27
    if-ne v3, v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    const-string v3, "androidx.compose.foundation.layout.Box (Box.kt:236)"

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->d:Landroidx/compose/ui/layout/t;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v1}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {p1, p0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {p1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-interface {p1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    instance-of v6, v6, Landroidx/compose/runtime/f;

    .line 79
    .line 80
    if-nez v6, :cond_5

    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/i;->C()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Landroidx/compose/runtime/i;->e()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_6

    .line 93
    .line 94
    invoke-interface {p1, v5}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/i;->o()V

    .line 99
    .line 100
    .line 101
    :goto_3
    invoke-static {p1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v5, v3, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_7

    .line 135
    .line 136
    invoke-interface {v5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_8

    .line 149
    .line 150
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v5, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v5, v1, v0}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    invoke-interface {p1}, Landroidx/compose/runtime/i;->r()V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 174
    .line 175
    .line 176
    :cond_9
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_a

    .line 181
    .line 182
    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$Box$2;

    .line 183
    .line 184
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/layout/BoxKt$Box$2;-><init>(Landroidx/compose/ui/f;I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/layout/s;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/BoxKt;->g(Landroidx/compose/ui/layout/s;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/s;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/BoxKt;->i(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/s;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Z)Ljava/util/HashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->k()Landroidx/compose/ui/b;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->l()Landroidx/compose/ui/b;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->g()Landroidx/compose/ui/b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->e()Landroidx/compose/ui/b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->c()Landroidx/compose/ui/b;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->a()Landroidx/compose/ui/b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->b()Landroidx/compose/ui/b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/layout/BoxKt;->e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method private static final e(Ljava/util/HashMap;ZLandroidx/compose/ui/b;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/b;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final f(Landroidx/compose/ui/layout/s;)Landroidx/compose/foundation/layout/e;
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/i;->G()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/compose/foundation/layout/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/foundation/layout/e;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method private static final g(Landroidx/compose/ui/layout/s;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/layout/BoxKt;->f(Landroidx/compose/ui/layout/s;)Landroidx/compose/foundation/layout/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/e;->D1()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static final h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/layout/t;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/b;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object v0
.end method

.method private static final i(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/s;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/b;)V
    .locals 13

    .line 1
    invoke-static {p2}, Landroidx/compose/foundation/layout/BoxKt;->f(Landroidx/compose/ui/layout/s;)Landroidx/compose/foundation/layout/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/e;->C1()Landroidx/compose/ui/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move-object/from16 v1, p6

    .line 17
    .line 18
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v0, v2}, Lo0/u;->a(II)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-static/range {p4 .. p5}, Lo0/u;->a(II)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    move-object/from16 v6, p3

    .line 35
    .line 36
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/b;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 v11, 0x2

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    move-object v6, p0

    .line 44
    move-object v7, p1

    .line 45
    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/g0$a;->j(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;JFILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final j(Landroidx/compose/ui/b;ZLandroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;
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
    const-string v1, "androidx.compose.foundation.layout.rememberBoxMeasurePolicy (Box.kt:113)"

    .line 9
    .line 10
    const v2, 0x35e7844

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const p0, -0x65eea939

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->P(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    .line 37
    .line 38
    .line 39
    sget-object p0, Landroidx/compose/foundation/layout/BoxKt;->c:Landroidx/compose/ui/layout/t;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const v0, -0x65ee0ef3

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 46
    .line 47
    .line 48
    and-int/lit8 v0, p3, 0xe

    .line 49
    .line 50
    xor-int/lit8 v0, v0, 0x6

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    const/4 v3, 0x4

    .line 55
    if-le v0, v3, :cond_2

    .line 56
    .line 57
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    :cond_2
    and-int/lit8 v0, p3, 0x6

    .line 64
    .line 65
    if-ne v0, v3, :cond_4

    .line 66
    .line 67
    :cond_3
    move v0, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move v0, v1

    .line 70
    :goto_0
    and-int/lit8 v3, p3, 0x70

    .line 71
    .line 72
    xor-int/lit8 v3, v3, 0x30

    .line 73
    .line 74
    const/16 v4, 0x20

    .line 75
    .line 76
    if-le v3, v4, :cond_5

    .line 77
    .line 78
    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->a(Z)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    :cond_5
    and-int/lit8 p3, p3, 0x30

    .line 85
    .line 86
    if-ne p3, v4, :cond_7

    .line 87
    .line 88
    :cond_6
    move v1, v2

    .line 89
    :cond_7
    or-int p3, v0, v1

    .line 90
    .line 91
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-nez p3, :cond_8

    .line 96
    .line 97
    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 98
    .line 99
    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    if-ne v0, p3, :cond_9

    .line 104
    .line 105
    :cond_8
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 106
    .line 107
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/b;Z)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_9
    move-object p0, v0

    .line 114
    check-cast p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 115
    .line 116
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_a

    .line 124
    .line 125
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 126
    .line 127
    .line 128
    :cond_a
    return-object p0
.end method
