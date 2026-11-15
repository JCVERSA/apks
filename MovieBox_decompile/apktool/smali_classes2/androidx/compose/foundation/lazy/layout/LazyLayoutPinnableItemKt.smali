.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/w;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 7

    .line 1
    const v0, -0x7beccd10

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
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

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
    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->c(I)Z

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
    invoke-interface {p4, p2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

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
    invoke-interface {p4, p3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

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
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_a

    .line 95
    .line 96
    const/4 v2, -0x1

    .line 97
    const-string v3, "androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem (LazyLayoutPinnableItem.kt:52)"

    .line 98
    .line 99
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_a
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-interface {p4, p2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    or-int/2addr v0, v2

    .line 111
    invoke-interface {p4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-nez v0, :cond_b

    .line 116
    .line 117
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-ne v2, v0, :cond_c

    .line 124
    .line 125
    :cond_b
    new-instance v2, Landroidx/compose/foundation/lazy/layout/v;

    .line 126
    .line 127
    invoke-direct {v2, p0, p2}, Landroidx/compose/foundation/lazy/layout/v;-><init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/w;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p4, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_c
    check-cast v2, Landroidx/compose/foundation/lazy/layout/v;

    .line 134
    .line 135
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/lazy/layout/v;->g(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Landroidx/compose/ui/layout/PinnableContainerKt;->a()Landroidx/compose/runtime/s1;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroidx/compose/ui/layout/f0;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/lazy/layout/v;->i(Landroidx/compose/ui/layout/f0;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p4, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-interface {p4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-nez v0, :cond_d

    .line 160
    .line 161
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-ne v3, v0, :cond_e

    .line 168
    .line 169
    :cond_d
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$1$1;

    .line 170
    .line 171
    invoke-direct {v3, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$1$1;-><init>(Landroidx/compose/foundation/lazy/layout/v;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p4, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_e
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-static {v2, v3, p4, v0}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroidx/compose/ui/layout/PinnableContainerKt;->a()Landroidx/compose/runtime/s1;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/s1;->d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sget v2, Landroidx/compose/runtime/t1;->i:I

    .line 192
    .line 193
    shr-int/lit8 v1, v1, 0x6

    .line 194
    .line 195
    and-int/lit8 v1, v1, 0x70

    .line 196
    .line 197
    or-int/2addr v1, v2

    .line 198
    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_f

    .line 206
    .line 207
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 208
    .line 209
    .line 210
    :cond_f
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 211
    .line 212
    .line 213
    move-result-object p4

    .line 214
    if-eqz p4, :cond_10

    .line 215
    .line 216
    new-instance v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$2;

    .line 217
    .line 218
    move-object v0, v6

    .line 219
    move-object v1, p0

    .line 220
    move v2, p1

    .line 221
    move-object v3, p2

    .line 222
    move-object v4, p3

    .line 223
    move v5, p5

    .line 224
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$2;-><init>(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/w;Lkotlin/jvm/functions/Function2;I)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p4, v6}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 228
    .line 229
    .line 230
    :cond_10
    return-void
.end method
