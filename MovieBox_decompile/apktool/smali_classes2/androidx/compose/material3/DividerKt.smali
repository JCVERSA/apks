.class public abstract Landroidx/compose/material3/DividerKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/f;FJLandroidx/compose/runtime/i;II)V
    .locals 8

    .line 1
    const v0, 0x5d216d69

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    and-int/lit8 v1, p6, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    or-int/lit8 v2, p5, 0x6

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    and-int/lit8 v2, p5, 0x6

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x2

    .line 28
    :goto_0
    or-int/2addr v2, p5

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v2, p5

    .line 31
    :goto_1
    and-int/lit8 v3, p6, 0x2

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    or-int/lit8 v2, v2, 0x30

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    and-int/lit8 v4, p5, 0x30

    .line 39
    .line 40
    if-nez v4, :cond_5

    .line 41
    .line 42
    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->b(F)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/16 v4, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v2, v4

    .line 54
    :cond_5
    :goto_3
    and-int/lit16 v4, p5, 0x180

    .line 55
    .line 56
    if-nez v4, :cond_7

    .line 57
    .line 58
    and-int/lit8 v4, p6, 0x4

    .line 59
    .line 60
    if-nez v4, :cond_6

    .line 61
    .line 62
    invoke-interface {p4, p2, p3}, Landroidx/compose/runtime/i;->d(J)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_6

    .line 67
    .line 68
    const/16 v4, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    const/16 v4, 0x80

    .line 72
    .line 73
    :goto_4
    or-int/2addr v2, v4

    .line 74
    :cond_7
    and-int/lit16 v4, v2, 0x93

    .line 75
    .line 76
    const/16 v5, 0x92

    .line 77
    .line 78
    if-ne v4, v5, :cond_a

    .line 79
    .line 80
    invoke-interface {p4}, Landroidx/compose/runtime/i;->h()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_8

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/i;->G()V

    .line 88
    .line 89
    .line 90
    :cond_9
    :goto_5
    move-object v2, p0

    .line 91
    move v3, p1

    .line 92
    move-wide v4, p2

    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_a
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/i;->B()V

    .line 96
    .line 97
    .line 98
    and-int/lit8 v4, p5, 0x1

    .line 99
    .line 100
    if-eqz v4, :cond_c

    .line 101
    .line 102
    invoke-interface {p4}, Landroidx/compose/runtime/i;->I()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_b

    .line 107
    .line 108
    goto :goto_8

    .line 109
    :cond_b
    invoke-interface {p4}, Landroidx/compose/runtime/i;->G()V

    .line 110
    .line 111
    .line 112
    and-int/lit8 v1, p6, 0x4

    .line 113
    .line 114
    if-eqz v1, :cond_f

    .line 115
    .line 116
    :goto_7
    and-int/lit16 v2, v2, -0x381

    .line 117
    .line 118
    goto :goto_9

    .line 119
    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    .line 120
    .line 121
    sget-object p0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 122
    .line 123
    :cond_d
    if-eqz v3, :cond_e

    .line 124
    .line 125
    sget-object p1, Landroidx/compose/material3/c;->a:Landroidx/compose/material3/c;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/compose/material3/c;->b()F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    :cond_e
    and-int/lit8 v1, p6, 0x4

    .line 132
    .line 133
    if-eqz v1, :cond_f

    .line 134
    .line 135
    sget-object p2, Landroidx/compose/material3/c;->a:Landroidx/compose/material3/c;

    .line 136
    .line 137
    const/4 p3, 0x6

    .line 138
    invoke-virtual {p2, p4, p3}, Landroidx/compose/material3/c;->a(Landroidx/compose/runtime/i;I)J

    .line 139
    .line 140
    .line 141
    move-result-wide p2

    .line 142
    goto :goto_7

    .line 143
    :cond_f
    :goto_9
    invoke-interface {p4}, Landroidx/compose/runtime/i;->s()V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_10

    .line 151
    .line 152
    const/4 v1, -0x1

    .line 153
    const-string v3, "androidx.compose.material3.Divider (Divider.kt:95)"

    .line 154
    .line 155
    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_10
    const v0, 0x497d210a

    .line 159
    .line 160
    .line 161
    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->x(I)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lo0/i;->b:Lo0/i$a;

    .line 165
    .line 166
    invoke-virtual {v0}, Lo0/i$a;->a()F

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-static {p1, v0}, Lo0/i;->i(FF)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_11

    .line 175
    .line 176
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lo0/e;

    .line 185
    .line 186
    invoke-interface {v0}, Lo0/e;->getDensity()F

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    const/high16 v1, 0x3f800000    # 1.0f

    .line 191
    .line 192
    div-float/2addr v1, v0

    .line 193
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    goto :goto_a

    .line 198
    :cond_11
    move v0, p1

    .line 199
    :goto_a
    invoke-interface {p4}, Landroidx/compose/runtime/i;->N()V

    .line 200
    .line 201
    .line 202
    const/4 v1, 0x0

    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v3, 0x1

    .line 205
    invoke-static {p0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const/4 v5, 0x2

    .line 214
    const/4 v6, 0x0

    .line 215
    const/4 v4, 0x0

    .line 216
    move-wide v2, p2

    .line 217
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/4 v1, 0x0

    .line 222
    invoke-static {v0, p4, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_9

    .line 230
    .line 231
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :goto_b
    invoke-interface {p4}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    if-eqz p0, :cond_12

    .line 241
    .line 242
    new-instance p1, Landroidx/compose/material3/DividerKt$Divider$1;

    .line 243
    .line 244
    move-object v1, p1

    .line 245
    move v6, p5

    .line 246
    move v7, p6

    .line 247
    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/f;FJII)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, p1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    :cond_12
    return-void
.end method
