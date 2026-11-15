.class public abstract Landroidx/compose/ui/platform/e2;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ly/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ly/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x41200000    # 10.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Ly/i;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/ui/platform/e2;->a:Ly/i;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Ljava/util/List;I)Landroidx/compose/ui/platform/b2;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/compose/ui/platform/b2;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/platform/b2;->d()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v2, p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/compose/ui/platform/b2;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/semantics/m;)Landroidx/collection/o;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Landroidx/collection/p;->b()Landroidx/collection/e0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()Ly/i;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Landroid/graphics/Region;

    .line 35
    .line 36
    invoke-virtual {v1}, Ly/i;->f()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Ly/i;->i()F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v1}, Ly/i;->g()F

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v1}, Ly/i;->c()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Region;-><init>(IIII)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroid/graphics/Region;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, p0, v0, p0, v1}, Landroidx/compose/ui/platform/e2;->c(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/e0;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static final c(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/e0;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v1

    .line 26
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v2, v3, :cond_3

    .line 41
    .line 42
    :cond_2
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->x()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    :cond_3
    return-void

    .line 51
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->v()Ly/i;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ly/i;->f()F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v0}, Ly/i;->i()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v0}, Ly/i;->g()F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {v0}, Ly/i;->c()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {p4, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/4 v3, -0x1

    .line 99
    if-ne v0, v2, :cond_5

    .line 100
    .line 101
    move v0, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    :goto_2
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 108
    .line 109
    invoke-virtual {p4, p0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_7

    .line 114
    .line 115
    new-instance v2, Landroidx/compose/ui/platform/d2;

    .line 116
    .line 117
    invoke-virtual {p4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-direct {v2, p3, v8}, Landroidx/compose/ui/platform/d2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v0, v2}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    sub-int/2addr v2, v1

    .line 136
    :goto_3
    if-ge v3, v2, :cond_6

    .line 137
    .line 138
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 143
    .line 144
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/compose/ui/platform/e2;->c(Landroid/graphics/Region;Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/e0;Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Region;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v2, v2, -0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    invoke-static {p3}, Landroidx/compose/ui/platform/e2;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_a

    .line 155
    .line 156
    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 157
    .line 158
    move-object v3, p0

    .line 159
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->x()Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_9

    .line 168
    .line 169
    invoke-virtual {p3}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    if-eqz p0, :cond_8

    .line 174
    .line 175
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->p()Landroidx/compose/ui/layout/n;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    invoke-interface {p1}, Landroidx/compose/ui/layout/n;->n()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-ne p1, v1, :cond_8

    .line 186
    .line 187
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()Ly/i;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    goto :goto_4

    .line 192
    :cond_8
    sget-object p0, Landroidx/compose/ui/platform/e2;->a:Ly/i;

    .line 193
    .line 194
    :goto_4
    new-instance p1, Landroidx/compose/ui/platform/d2;

    .line 195
    .line 196
    new-instance p4, Landroid/graphics/Rect;

    .line 197
    .line 198
    invoke-virtual {p0}, Ly/i;->f()F

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {p0}, Ly/i;->i()F

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {p0}, Ly/i;->g()F

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {p0}, Ly/i;->c()F

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    invoke-direct {p4, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p1, p3, p4}, Landroidx/compose/ui/platform/d2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v0, p1}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_9
    if-ne v0, v3, :cond_a

    .line 241
    .line 242
    new-instance p0, Landroidx/compose/ui/platform/d2;

    .line 243
    .line 244
    invoke-virtual {p4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-direct {p0, p3, p1}, Landroidx/compose/ui/platform/d2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v0, p0}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_5
    return-void
.end method

.method public static final d(Landroidx/compose/ui/semantics/i;)Ljava/lang/Float;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/semantics/a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    move-object v1, p0

    .line 47
    check-cast v1, Ljava/lang/Float;

    .line 48
    .line 49
    :cond_0
    return-object v1
.end method

.method public static final e(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/z;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/h;->i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/semantics/a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    move-object v1, p0

    .line 47
    check-cast v1, Landroidx/compose/ui/text/z;

    .line 48
    .line 49
    :cond_0
    return-object v1
.end method

.method public static final f(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/i;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/i;->f()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public static final g(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->j0()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v2, p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v0, v1

    .line 43
    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    move-object v1, p0

    .line 52
    check-cast v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 53
    .line 54
    :cond_2
    return-object v1
.end method

.method public static final h(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/f;->b:Landroidx/compose/ui/semantics/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f$a;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p0, "android.widget.Button"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f$a;->b()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string p0, "android.widget.CheckBox"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f$a;->e()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const-string p0, "android.widget.RadioButton"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f$a;->d()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {p0, v1}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string p0, "android.widget.ImageView"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f$a;->c()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/f;->k(II)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    const-string p0, "android.widget.Spinner"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 p0, 0x0

    .line 69
    :goto_0
    return-object p0
.end method
