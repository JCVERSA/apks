.class final Landroidx/compose/foundation/n;
.super Landroidx/compose/ui/platform/a1;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/draw/f;


# instance fields
.field private final c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field private final d:Landroidx/compose/foundation/p;

.field private e:Landroid/graphics/RenderNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/p;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/a1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/n;->d:Landroidx/compose/foundation/p;

    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/high16 v0, 0x43340000    # 180.0f

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/n;->l(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private final i(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/high16 v0, 0x43870000    # 270.0f

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/n;->l(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private final j(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/high16 v0, 0x42b40000    # 90.0f

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/n;->l(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private final k(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/foundation/n;->l(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private final l(FLandroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 23
    .line 24
    .line 25
    return p1
.end method

.method private final m()Landroid/graphics/RenderNode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/n;->e:Landroid/graphics/RenderNode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AndroidEdgeEffectOverscrollEffect"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/foundation/i;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/n;->e:Landroid/graphics/RenderNode;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method private final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/n;->d:Landroidx/compose/foundation/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->s()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->v()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    return v0
.end method

.method private final p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/n;->d:Landroidx/compose/foundation/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->y()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->z()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->o()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/p;->p()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    return v0
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/g;->b(Landroidx/compose/ui/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/g;->a(Landroidx/compose/ui/f$b;Lkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/e;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lz/c;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 2
    .line 3
    invoke-interface {p1}, Lz/g;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->r(J)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lz/g;->i()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ly/m;->k(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lz/c;->X0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->j()Landroidx/compose/runtime/i1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/foundation/g;->b()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {p1, v0}, Lo0/e;->D0(F)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Landroidx/compose/foundation/n;->d:Landroidx/compose/foundation/p;

    .line 54
    .line 55
    invoke-direct {p0}, Landroidx/compose/foundation/n;->p()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {p0}, Landroidx/compose/foundation/n;->o()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/compose/foundation/n;->m()Landroid/graphics/RenderNode;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    invoke-static {v6, v5, v5, v7, v8}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    if-eqz v3, :cond_2

    .line 85
    .line 86
    invoke-direct {p0}, Landroidx/compose/foundation/n;->m()Landroid/graphics/RenderNode;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-static {v0}, Lkotlin/math/MathKt;->d(F)I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    mul-int/lit8 v8, v8, 0x2

    .line 99
    .line 100
    add-int/2addr v7, v8

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-static {v6, v5, v5, v7, v8}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    if-eqz v4, :cond_16

    .line 110
    .line 111
    invoke-direct {p0}, Landroidx/compose/foundation/n;->m()Landroid/graphics/RenderNode;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    invoke-static {v0}, Lkotlin/math/MathKt;->d(F)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    mul-int/lit8 v9, v9, 0x2

    .line 128
    .line 129
    add-int/2addr v8, v9

    .line 130
    invoke-static {v6, v5, v5, v7, v8}, Landroidx/compose/foundation/j;->a(Landroid/graphics/RenderNode;IIII)Z

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/n;->m()Landroid/graphics/RenderNode;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v6}, Landroidx/compose/foundation/k;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->s()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_3

    .line 146
    .line 147
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->i()Landroid/widget/EdgeEffect;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->j(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 155
    .line 156
    .line 157
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->r()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    const/4 v8, 0x1

    .line 162
    if-eqz v7, :cond_4

    .line 163
    .line 164
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->h()Landroid/widget/EdgeEffect;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->i(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->t()Z

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    if-eqz v10, :cond_5

    .line 177
    .line 178
    iget-object v10, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 179
    .line 180
    invoke-virtual {v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    invoke-static {v10, v11}, Ly/g;->n(J)F

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    sget-object v11, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    .line 189
    .line 190
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->i()Landroid/widget/EdgeEffect;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    int-to-float v13, v8

    .line 199
    sub-float/2addr v13, v10

    .line 200
    invoke-virtual {v11, v12, v7, v13}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_4
    move v9, v5

    .line 205
    :cond_5
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->z()Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-eqz v7, :cond_6

    .line 210
    .line 211
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->m()Landroid/widget/EdgeEffect;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->a(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 219
    .line 220
    .line 221
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->y()Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_9

    .line 226
    .line 227
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->l()Landroid/widget/EdgeEffect;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->k(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_8

    .line 236
    .line 237
    if-eqz v9, :cond_7

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_7
    move v9, v5

    .line 241
    goto :goto_3

    .line 242
    :cond_8
    :goto_2
    move v9, v8

    .line 243
    :goto_3
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->A()Z

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-eqz v10, :cond_9

    .line 248
    .line 249
    iget-object v10, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 250
    .line 251
    invoke-virtual {v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    invoke-static {v10, v11}, Ly/g;->m(J)F

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    sget-object v11, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    .line 260
    .line 261
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->m()Landroid/widget/EdgeEffect;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    invoke-virtual {v11, v12, v7, v10}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    .line 270
    .line 271
    .line 272
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->v()Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_a

    .line 277
    .line 278
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->k()Landroid/widget/EdgeEffect;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->i(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 286
    .line 287
    .line 288
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->u()Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_d

    .line 293
    .line 294
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->j()Landroid/widget/EdgeEffect;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->j(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    if-nez v10, :cond_c

    .line 303
    .line 304
    if-eqz v9, :cond_b

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_b
    move v9, v5

    .line 308
    goto :goto_5

    .line 309
    :cond_c
    :goto_4
    move v9, v8

    .line 310
    :goto_5
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->w()Z

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-eqz v10, :cond_d

    .line 315
    .line 316
    iget-object v10, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 317
    .line 318
    invoke-virtual {v10}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    .line 319
    .line 320
    .line 321
    move-result-wide v10

    .line 322
    invoke-static {v10, v11}, Ly/g;->n(J)F

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    sget-object v11, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    .line 327
    .line 328
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->k()Landroid/widget/EdgeEffect;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-virtual {v11, v12, v7, v10}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    .line 337
    .line 338
    .line 339
    :cond_d
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->p()Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-eqz v7, :cond_e

    .line 344
    .line 345
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->g()Landroid/widget/EdgeEffect;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->k(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->finish()V

    .line 353
    .line 354
    .line 355
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->o()Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_12

    .line 360
    .line 361
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->f()Landroid/widget/EdgeEffect;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    invoke-direct {p0, v7, v6}, Landroidx/compose/foundation/n;->a(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 366
    .line 367
    .line 368
    move-result v10

    .line 369
    if-nez v10, :cond_f

    .line 370
    .line 371
    if-eqz v9, :cond_10

    .line 372
    .line 373
    :cond_f
    move v5, v8

    .line 374
    :cond_10
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->q()Z

    .line 375
    .line 376
    .line 377
    move-result v9

    .line 378
    if-eqz v9, :cond_11

    .line 379
    .line 380
    iget-object v9, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 381
    .line 382
    invoke-virtual {v9}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->i()J

    .line 383
    .line 384
    .line 385
    move-result-wide v9

    .line 386
    invoke-static {v9, v10}, Ly/g;->m(J)F

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    sget-object v10, Landroidx/compose/foundation/o;->a:Landroidx/compose/foundation/o;

    .line 391
    .line 392
    invoke-virtual {v2}, Landroidx/compose/foundation/p;->g()Landroid/widget/EdgeEffect;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v10, v7}, Landroidx/compose/foundation/o;->b(Landroid/widget/EdgeEffect;)F

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    int-to-float v8, v8

    .line 401
    sub-float/2addr v8, v9

    .line 402
    invoke-virtual {v10, v2, v7, v8}, Landroidx/compose/foundation/o;->d(Landroid/widget/EdgeEffect;FF)F

    .line 403
    .line 404
    .line 405
    :cond_11
    move v9, v5

    .line 406
    :cond_12
    if-eqz v9, :cond_13

    .line 407
    .line 408
    iget-object v2, p0, Landroidx/compose/foundation/n;->c:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 409
    .line 410
    invoke-virtual {v2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->k()V

    .line 411
    .line 412
    .line 413
    :cond_13
    const/4 v2, 0x0

    .line 414
    if-eqz v4, :cond_14

    .line 415
    .line 416
    move v4, v2

    .line 417
    goto :goto_6

    .line 418
    :cond_14
    move v4, v0

    .line 419
    :goto_6
    if-eqz v3, :cond_15

    .line 420
    .line 421
    move v0, v2

    .line 422
    :cond_15
    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-static {v6}, Landroidx/compose/ui/graphics/h0;->b(Landroid/graphics/Canvas;)Landroidx/compose/ui/graphics/m1;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    invoke-interface {p1}, Lz/g;->i()J

    .line 431
    .line 432
    .line 433
    move-result-wide v5

    .line 434
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-interface {v7}, Lz/d;->getDensity()Lo0/e;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    invoke-interface {v8}, Lz/d;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 447
    .line 448
    .line 449
    move-result-object v8

    .line 450
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    invoke-interface {v9}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 459
    .line 460
    .line 461
    move-result-object v10

    .line 462
    invoke-interface {v10}, Lz/d;->i()J

    .line 463
    .line 464
    .line 465
    move-result-wide v10

    .line 466
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    invoke-interface {v12}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 471
    .line 472
    .line 473
    move-result-object v12

    .line 474
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 475
    .line 476
    .line 477
    move-result-object v13

    .line 478
    invoke-interface {v13, p1}, Lz/d;->b(Lo0/e;)V

    .line 479
    .line 480
    .line 481
    invoke-interface {v13, v2}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 482
    .line 483
    .line 484
    invoke-interface {v13, v3}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 485
    .line 486
    .line 487
    invoke-interface {v13, v5, v6}, Lz/d;->f(J)V

    .line 488
    .line 489
    .line 490
    const/4 v2, 0x0

    .line 491
    invoke-interface {v13, v2}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 492
    .line 493
    .line 494
    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->n()V

    .line 495
    .line 496
    .line 497
    :try_start_0
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-interface {v2}, Lz/d;->c()Lz/j;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-interface {v2, v4, v0}, Lz/j;->c(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .line 507
    .line 508
    :try_start_1
    invoke-interface {p1}, Lz/c;->X0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 509
    .line 510
    .line 511
    :try_start_2
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-interface {v2}, Lz/d;->c()Lz/j;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    neg-float v4, v4

    .line 520
    neg-float v0, v0

    .line 521
    invoke-interface {v2, v4, v0}, Lz/j;->c(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    .line 523
    .line 524
    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 525
    .line 526
    .line 527
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    invoke-interface {p1, v7}, Lz/d;->b(Lo0/e;)V

    .line 532
    .line 533
    .line 534
    invoke-interface {p1, v8}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 535
    .line 536
    .line 537
    invoke-interface {p1, v9}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 538
    .line 539
    .line 540
    invoke-interface {p1, v10, v11}, Lz/d;->f(J)V

    .line 541
    .line 542
    .line 543
    invoke-interface {p1, v12}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 544
    .line 545
    .line 546
    invoke-direct {p0}, Landroidx/compose/foundation/n;->m()Landroid/graphics/RenderNode;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    invoke-static {p1}, Landroidx/compose/foundation/l;->a(Landroid/graphics/RenderNode;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 558
    .line 559
    .line 560
    invoke-direct {p0}, Landroidx/compose/foundation/n;->m()Landroid/graphics/RenderNode;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {v1, v0}, Landroidx/compose/foundation/m;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 568
    .line 569
    .line 570
    return-void

    .line 571
    :catchall_0
    move-exception v0

    .line 572
    goto :goto_7

    .line 573
    :catchall_1
    move-exception v1

    .line 574
    :try_start_3
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-interface {v2}, Lz/d;->c()Lz/j;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    neg-float v4, v4

    .line 583
    neg-float v0, v0

    .line 584
    invoke-interface {v2, v4, v0}, Lz/j;->c(FF)V

    .line 585
    .line 586
    .line 587
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    :goto_7
    invoke-interface {v3}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 589
    .line 590
    .line 591
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    invoke-interface {p1, v7}, Lz/d;->b(Lo0/e;)V

    .line 596
    .line 597
    .line 598
    invoke-interface {p1, v8}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 599
    .line 600
    .line 601
    invoke-interface {p1, v9}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    .line 602
    .line 603
    .line 604
    invoke-interface {p1, v10, v11}, Lz/d;->f(J)V

    .line 605
    .line 606
    .line 607
    invoke-interface {p1, v12}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 608
    .line 609
    .line 610
    throw v0

    .line 611
    :cond_16
    invoke-interface {p1}, Lz/c;->X0()V

    .line 612
    .line 613
    .line 614
    return-void
.end method
