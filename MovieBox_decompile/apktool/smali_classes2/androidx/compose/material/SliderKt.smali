.class public abstract Landroidx/compose/material/SliderKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F

.field private static final d:F

.field private static final e:F

.field private static final f:F

.field private static final g:F

.field private static final h:Landroidx/compose/ui/f;

.field private static final i:Landroidx/compose/animation/core/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/material/SliderKt;->a:F

    .line 9
    .line 10
    const/16 v0, 0x18

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Landroidx/compose/material/SliderKt;->b:F

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    int-to-float v1, v0

    .line 21
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sput v1, Landroidx/compose/material/SliderKt;->c:F

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sput v1, Landroidx/compose/material/SliderKt;->d:F

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sput v1, Landroidx/compose/material/SliderKt;->e:F

    .line 42
    .line 43
    const/16 v1, 0x30

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    invoke-static {v1}, Lo0/i;->g(F)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sput v1, Landroidx/compose/material/SliderKt;->f:F

    .line 51
    .line 52
    const/16 v2, 0x90

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    invoke-static {v2}, Lo0/i;->g(F)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    sput v2, Landroidx/compose/material/SliderKt;->g:F

    .line 60
    .line 61
    sget-object v3, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static {v3, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2, v4, v1, v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Landroidx/compose/material/SliderKt;->h:Landroidx/compose/ui/f;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/animation/core/r0;

    .line 77
    .line 78
    const/4 v5, 0x6

    .line 79
    const/16 v2, 0x64

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    move-object v1, v0

    .line 84
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Landroidx/compose/material/SliderKt;->i:Landroidx/compose/animation/core/r0;

    .line 88
    .line 89
    return-void
.end method

.method private static final a(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V
    .locals 9

    .line 1
    const v0, -0x2c580438

    .line 2
    .line 3
    .line 4
    invoke-interface {p5, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p5

    .line 8
    and-int/lit8 v1, p6, 0x6

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p5, p0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    :goto_0
    or-int/2addr v1, p6

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, p6

    .line 25
    :goto_1
    and-int/lit8 v3, p6, 0x30

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    if-nez v3, :cond_3

    .line 30
    .line 31
    invoke-interface {p5, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    move v3, v4

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v3, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v1, v3

    .line 42
    :cond_3
    and-int/lit16 v3, p6, 0x180

    .line 43
    .line 44
    const/16 v5, 0x100

    .line 45
    .line 46
    if-nez v3, :cond_5

    .line 47
    .line 48
    invoke-interface {p5, p2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    move v3, v5

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v3, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v1, v3

    .line 59
    :cond_5
    and-int/lit16 v3, p6, 0xc00

    .line 60
    .line 61
    const/16 v6, 0x800

    .line 62
    .line 63
    if-nez v3, :cond_7

    .line 64
    .line 65
    invoke-interface {p5, p3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    move v3, v6

    .line 72
    goto :goto_4

    .line 73
    :cond_6
    const/16 v3, 0x400

    .line 74
    .line 75
    :goto_4
    or-int/2addr v1, v3

    .line 76
    :cond_7
    and-int/lit16 v3, p6, 0x6000

    .line 77
    .line 78
    const/16 v7, 0x4000

    .line 79
    .line 80
    if-nez v3, :cond_9

    .line 81
    .line 82
    invoke-interface {p5, p4}, Landroidx/compose/runtime/i;->b(F)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_8

    .line 87
    .line 88
    move v3, v7

    .line 89
    goto :goto_5

    .line 90
    :cond_8
    const/16 v3, 0x2000

    .line 91
    .line 92
    :goto_5
    or-int/2addr v1, v3

    .line 93
    :cond_9
    and-int/lit16 v3, v1, 0x2493

    .line 94
    .line 95
    const/16 v8, 0x2492

    .line 96
    .line 97
    if-ne v3, v8, :cond_b

    .line 98
    .line 99
    invoke-interface {p5}, Landroidx/compose/runtime/i;->h()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_a

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_a
    invoke-interface {p5}, Landroidx/compose/runtime/i;->G()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_c

    .line 110
    .line 111
    :cond_b
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_c

    .line 116
    .line 117
    const/4 v3, -0x1

    .line 118
    const-string v8, "androidx.compose.material.CorrectValueSideEffect (Slider.kt:847)"

    .line 119
    .line 120
    invoke-static {v0, v1, v3, v8}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_c
    and-int/lit8 v0, v1, 0x70

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    const/4 v8, 0x0

    .line 127
    if-ne v0, v4, :cond_d

    .line 128
    .line 129
    move v0, v3

    .line 130
    goto :goto_7

    .line 131
    :cond_d
    move v0, v8

    .line 132
    :goto_7
    and-int/lit8 v4, v1, 0xe

    .line 133
    .line 134
    if-ne v4, v2, :cond_e

    .line 135
    .line 136
    move v2, v3

    .line 137
    goto :goto_8

    .line 138
    :cond_e
    move v2, v8

    .line 139
    :goto_8
    or-int/2addr v0, v2

    .line 140
    const v2, 0xe000

    .line 141
    .line 142
    .line 143
    and-int/2addr v2, v1

    .line 144
    if-ne v2, v7, :cond_f

    .line 145
    .line 146
    move v2, v3

    .line 147
    goto :goto_9

    .line 148
    :cond_f
    move v2, v8

    .line 149
    :goto_9
    or-int/2addr v0, v2

    .line 150
    and-int/lit16 v2, v1, 0x1c00

    .line 151
    .line 152
    if-ne v2, v6, :cond_10

    .line 153
    .line 154
    move v2, v3

    .line 155
    goto :goto_a

    .line 156
    :cond_10
    move v2, v8

    .line 157
    :goto_a
    or-int/2addr v0, v2

    .line 158
    and-int/lit16 v1, v1, 0x380

    .line 159
    .line 160
    if-ne v1, v5, :cond_11

    .line 161
    .line 162
    goto :goto_b

    .line 163
    :cond_11
    move v3, v8

    .line 164
    :goto_b
    or-int/2addr v0, v3

    .line 165
    invoke-interface {p5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-nez v0, :cond_12

    .line 170
    .line 171
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-ne v1, v0, :cond_13

    .line 178
    .line 179
    :cond_12
    new-instance v1, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;

    .line 180
    .line 181
    move-object v2, v1

    .line 182
    move-object v3, p1

    .line 183
    move-object v4, p0

    .line 184
    move v5, p4

    .line 185
    move-object v6, p3

    .line 186
    move-object v7, p2

    .line 187
    invoke-direct/range {v2 .. v7}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;FLandroidx/compose/runtime/i1;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p5, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_13
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 194
    .line 195
    invoke-static {v1, p5, v8}, Landroidx/compose/runtime/g0;->e(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_14

    .line 203
    .line 204
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 205
    .line 206
    .line 207
    :cond_14
    :goto_c
    invoke-interface {p5}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 208
    .line 209
    .line 210
    move-result-object p5

    .line 211
    if-eqz p5, :cond_15

    .line 212
    .line 213
    new-instance v7, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;

    .line 214
    .line 215
    move-object v0, v7

    .line 216
    move-object v1, p0

    .line 217
    move-object v2, p1

    .line 218
    move-object v3, p2

    .line 219
    move-object v4, p3

    .line 220
    move v5, p4

    .line 221
    move v6, p6

    .line 222
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FI)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p5, v7}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 226
    .line 227
    .line 228
    :cond_15
    return-void
.end method

.method public static final b(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;Landroidx/compose/runtime/i;II)V
    .locals 40

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    const v0, -0x5cc177f3

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p8

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    and-int/lit8 v3, v10, 0x1

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    or-int/lit8 v3, v9, 0x6

    .line 21
    .line 22
    move v6, v3

    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v3, v9, 0x6

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    move-object/from16 v3, p0

    .line 31
    .line 32
    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v6, 0x2

    .line 41
    :goto_0
    or-int/2addr v6, v9

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object/from16 v3, p0

    .line 44
    .line 45
    move v6, v9

    .line 46
    :goto_1
    and-int/lit8 v7, v10, 0x2

    .line 47
    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    or-int/lit8 v6, v6, 0x30

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    and-int/lit8 v7, v9, 0x30

    .line 54
    .line 55
    if-nez v7, :cond_5

    .line 56
    .line 57
    invoke-interface {v1, v2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const/16 v7, 0x20

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/16 v7, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v6, v7

    .line 69
    :cond_5
    :goto_3
    and-int/lit8 v7, v10, 0x4

    .line 70
    .line 71
    if-eqz v7, :cond_7

    .line 72
    .line 73
    or-int/lit16 v6, v6, 0x180

    .line 74
    .line 75
    :cond_6
    move-object/from16 v8, p2

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    and-int/lit16 v8, v9, 0x180

    .line 79
    .line 80
    if-nez v8, :cond_6

    .line 81
    .line 82
    move-object/from16 v8, p2

    .line 83
    .line 84
    invoke-interface {v1, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-eqz v11, :cond_8

    .line 89
    .line 90
    const/16 v11, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/16 v11, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v6, v11

    .line 96
    :goto_5
    and-int/lit8 v11, v10, 0x8

    .line 97
    .line 98
    if-eqz v11, :cond_a

    .line 99
    .line 100
    or-int/lit16 v6, v6, 0xc00

    .line 101
    .line 102
    :cond_9
    move/from16 v12, p3

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_a
    and-int/lit16 v12, v9, 0xc00

    .line 106
    .line 107
    if-nez v12, :cond_9

    .line 108
    .line 109
    move/from16 v12, p3

    .line 110
    .line 111
    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->a(Z)Z

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-eqz v13, :cond_b

    .line 116
    .line 117
    const/16 v13, 0x800

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_b
    const/16 v13, 0x400

    .line 121
    .line 122
    :goto_6
    or-int/2addr v6, v13

    .line 123
    :goto_7
    and-int/lit16 v13, v9, 0x6000

    .line 124
    .line 125
    if-nez v13, :cond_e

    .line 126
    .line 127
    and-int/lit8 v13, v10, 0x10

    .line 128
    .line 129
    if-nez v13, :cond_c

    .line 130
    .line 131
    move-object/from16 v13, p4

    .line 132
    .line 133
    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-eqz v14, :cond_d

    .line 138
    .line 139
    const/16 v14, 0x4000

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_c
    move-object/from16 v13, p4

    .line 143
    .line 144
    :cond_d
    const/16 v14, 0x2000

    .line 145
    .line 146
    :goto_8
    or-int/2addr v6, v14

    .line 147
    goto :goto_9

    .line 148
    :cond_e
    move-object/from16 v13, p4

    .line 149
    .line 150
    :goto_9
    and-int/lit8 v14, v10, 0x20

    .line 151
    .line 152
    const/high16 v16, 0x30000

    .line 153
    .line 154
    if-eqz v14, :cond_f

    .line 155
    .line 156
    or-int v6, v6, v16

    .line 157
    .line 158
    move/from16 v15, p5

    .line 159
    .line 160
    goto :goto_b

    .line 161
    :cond_f
    and-int v16, v9, v16

    .line 162
    .line 163
    move/from16 v15, p5

    .line 164
    .line 165
    if-nez v16, :cond_11

    .line 166
    .line 167
    invoke-interface {v1, v15}, Landroidx/compose/runtime/i;->c(I)Z

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    if-eqz v16, :cond_10

    .line 172
    .line 173
    const/high16 v16, 0x20000

    .line 174
    .line 175
    goto :goto_a

    .line 176
    :cond_10
    const/high16 v16, 0x10000

    .line 177
    .line 178
    :goto_a
    or-int v6, v6, v16

    .line 179
    .line 180
    :cond_11
    :goto_b
    and-int/lit8 v16, v10, 0x40

    .line 181
    .line 182
    const/high16 v17, 0x180000

    .line 183
    .line 184
    if-eqz v16, :cond_12

    .line 185
    .line 186
    or-int v6, v6, v17

    .line 187
    .line 188
    move-object/from16 v4, p6

    .line 189
    .line 190
    goto :goto_d

    .line 191
    :cond_12
    and-int v17, v9, v17

    .line 192
    .line 193
    move-object/from16 v4, p6

    .line 194
    .line 195
    if-nez v17, :cond_14

    .line 196
    .line 197
    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v17

    .line 201
    if-eqz v17, :cond_13

    .line 202
    .line 203
    const/high16 v17, 0x100000

    .line 204
    .line 205
    goto :goto_c

    .line 206
    :cond_13
    const/high16 v17, 0x80000

    .line 207
    .line 208
    :goto_c
    or-int v6, v6, v17

    .line 209
    .line 210
    :cond_14
    :goto_d
    const/high16 v17, 0xc00000

    .line 211
    .line 212
    and-int v17, v9, v17

    .line 213
    .line 214
    if-nez v17, :cond_17

    .line 215
    .line 216
    and-int/lit16 v5, v10, 0x80

    .line 217
    .line 218
    if-nez v5, :cond_15

    .line 219
    .line 220
    move-object/from16 v5, p7

    .line 221
    .line 222
    invoke-interface {v1, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v17

    .line 226
    if-eqz v17, :cond_16

    .line 227
    .line 228
    const/high16 v17, 0x800000

    .line 229
    .line 230
    goto :goto_e

    .line 231
    :cond_15
    move-object/from16 v5, p7

    .line 232
    .line 233
    :cond_16
    const/high16 v17, 0x400000

    .line 234
    .line 235
    :goto_e
    or-int v6, v6, v17

    .line 236
    .line 237
    goto :goto_f

    .line 238
    :cond_17
    move-object/from16 v5, p7

    .line 239
    .line 240
    :goto_f
    const v17, 0x492493

    .line 241
    .line 242
    .line 243
    and-int v0, v6, v17

    .line 244
    .line 245
    const v3, 0x492492

    .line 246
    .line 247
    .line 248
    if-ne v0, v3, :cond_19

    .line 249
    .line 250
    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_18

    .line 255
    .line 256
    goto :goto_10

    .line 257
    :cond_18
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    .line 258
    .line 259
    .line 260
    move-object v7, v4

    .line 261
    move-object v3, v8

    .line 262
    move v4, v12

    .line 263
    move v6, v15

    .line 264
    move-object v8, v5

    .line 265
    move-object v5, v13

    .line 266
    goto/16 :goto_17

    .line 267
    .line 268
    :cond_19
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/i;->B()V

    .line 269
    .line 270
    .line 271
    and-int/lit8 v0, v9, 0x1

    .line 272
    .line 273
    const v36, -0x1c00001

    .line 274
    .line 275
    .line 276
    const v17, -0xe001

    .line 277
    .line 278
    .line 279
    const/4 v3, 0x1

    .line 280
    if-eqz v0, :cond_1e

    .line 281
    .line 282
    invoke-interface {v1}, Landroidx/compose/runtime/i;->I()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_1a

    .line 287
    .line 288
    goto :goto_11

    .line 289
    :cond_1a
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    .line 290
    .line 291
    .line 292
    and-int/lit8 v0, v10, 0x10

    .line 293
    .line 294
    if-eqz v0, :cond_1b

    .line 295
    .line 296
    and-int v6, v6, v17

    .line 297
    .line 298
    :cond_1b
    and-int/lit16 v0, v10, 0x80

    .line 299
    .line 300
    if-eqz v0, :cond_1c

    .line 301
    .line 302
    and-int v6, v6, v36

    .line 303
    .line 304
    :cond_1c
    move v0, v12

    .line 305
    move-object v7, v13

    .line 306
    move/from16 v38, v15

    .line 307
    .line 308
    :cond_1d
    const/high16 v11, 0x20000

    .line 309
    .line 310
    goto :goto_15

    .line 311
    :cond_1e
    :goto_11
    if-eqz v7, :cond_1f

    .line 312
    .line 313
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 314
    .line 315
    move-object v8, v0

    .line 316
    :cond_1f
    if-eqz v11, :cond_20

    .line 317
    .line 318
    move v0, v3

    .line 319
    goto :goto_12

    .line 320
    :cond_20
    move v0, v12

    .line 321
    :goto_12
    and-int/lit8 v7, v10, 0x10

    .line 322
    .line 323
    if-eqz v7, :cond_21

    .line 324
    .line 325
    const/4 v7, 0x0

    .line 326
    const/high16 v11, 0x3f800000    # 1.0f

    .line 327
    .line 328
    invoke-static {v7, v11}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    and-int v6, v6, v17

    .line 333
    .line 334
    goto :goto_13

    .line 335
    :cond_21
    move-object v7, v13

    .line 336
    :goto_13
    if-eqz v14, :cond_22

    .line 337
    .line 338
    const/16 v38, 0x0

    .line 339
    .line 340
    goto :goto_14

    .line 341
    :cond_22
    move/from16 v38, v15

    .line 342
    .line 343
    :goto_14
    if-eqz v16, :cond_23

    .line 344
    .line 345
    const/4 v4, 0x0

    .line 346
    :cond_23
    and-int/lit16 v11, v10, 0x80

    .line 347
    .line 348
    if-eqz v11, :cond_1d

    .line 349
    .line 350
    sget-object v11, Landroidx/compose/material/k;->a:Landroidx/compose/material/k;

    .line 351
    .line 352
    const/16 v34, 0x6

    .line 353
    .line 354
    const/16 v35, 0x3ff

    .line 355
    .line 356
    const-wide/16 v12, 0x0

    .line 357
    .line 358
    const-wide/16 v14, 0x0

    .line 359
    .line 360
    const/high16 v5, 0x20000

    .line 361
    .line 362
    const-wide/16 v16, 0x0

    .line 363
    .line 364
    const-wide/16 v18, 0x0

    .line 365
    .line 366
    const-wide/16 v20, 0x0

    .line 367
    .line 368
    const-wide/16 v22, 0x0

    .line 369
    .line 370
    const-wide/16 v24, 0x0

    .line 371
    .line 372
    const-wide/16 v26, 0x0

    .line 373
    .line 374
    const-wide/16 v28, 0x0

    .line 375
    .line 376
    const-wide/16 v30, 0x0

    .line 377
    .line 378
    const/16 v33, 0x0

    .line 379
    .line 380
    move-object/from16 v32, v1

    .line 381
    .line 382
    invoke-virtual/range {v11 .. v35}, Landroidx/compose/material/k;->a(JJJJJJJJJJLandroidx/compose/runtime/i;III)Landroidx/compose/material/j;

    .line 383
    .line 384
    .line 385
    move-result-object v11

    .line 386
    and-int v6, v6, v36

    .line 387
    .line 388
    move-object/from16 v39, v11

    .line 389
    .line 390
    move v11, v5

    .line 391
    move-object/from16 v5, v39

    .line 392
    .line 393
    :goto_15
    invoke-interface {v1}, Landroidx/compose/runtime/i;->s()V

    .line 394
    .line 395
    .line 396
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    if-eqz v12, :cond_24

    .line 401
    .line 402
    const/4 v12, -0x1

    .line 403
    const-string v13, "androidx.compose.material.RangeSlider (Slider.kt:305)"

    .line 404
    .line 405
    const v14, -0x5cc177f3

    .line 406
    .line 407
    .line 408
    invoke-static {v14, v6, v12, v13}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v12

    .line 415
    sget-object v13, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 416
    .line 417
    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v14

    .line 421
    if-ne v12, v14, :cond_25

    .line 422
    .line 423
    invoke-static {}, Lp/h;->a()Lp/i;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_25
    move-object/from16 v17, v12

    .line 431
    .line 432
    check-cast v17, Lp/i;

    .line 433
    .line 434
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v14

    .line 442
    if-ne v12, v14, :cond_26

    .line 443
    .line 444
    invoke-static {}, Lp/h;->a()Lp/i;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :cond_26
    move-object/from16 v18, v12

    .line 452
    .line 453
    check-cast v18, Lp/i;

    .line 454
    .line 455
    if-ltz v38, :cond_2c

    .line 456
    .line 457
    shr-int/lit8 v12, v6, 0x3

    .line 458
    .line 459
    and-int/lit8 v12, v12, 0xe

    .line 460
    .line 461
    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 462
    .line 463
    .line 464
    move-result-object v16

    .line 465
    const/high16 v12, 0x70000

    .line 466
    .line 467
    and-int/2addr v6, v12

    .line 468
    if-ne v6, v11, :cond_27

    .line 469
    .line 470
    move/from16 v37, v3

    .line 471
    .line 472
    goto :goto_16

    .line 473
    :cond_27
    const/16 v37, 0x0

    .line 474
    .line 475
    :goto_16
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    if-nez v37, :cond_28

    .line 480
    .line 481
    invoke-virtual {v13}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v11

    .line 485
    if-ne v6, v11, :cond_29

    .line 486
    .line 487
    :cond_28
    invoke-static/range {v38 .. v38}, Landroidx/compose/material/SliderKt;->z(I)Ljava/util/List;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    invoke-interface {v1, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    :cond_29
    move-object v14, v6

    .line 495
    check-cast v14, Ljava/util/List;

    .line 496
    .line 497
    invoke-static {v8}, Landroidx/compose/material/InteractiveComponentSizeKt;->c(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    sget v11, Landroidx/compose/material/SliderKt;->a:F

    .line 502
    .line 503
    const/4 v12, 0x4

    .line 504
    int-to-float v12, v12

    .line 505
    mul-float/2addr v12, v11

    .line 506
    invoke-static {v12}, Lo0/i;->g(F)F

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    const/4 v13, 0x2

    .line 511
    int-to-float v13, v13

    .line 512
    mul-float/2addr v11, v13

    .line 513
    invoke-static {v11}, Lo0/i;->g(F)F

    .line 514
    .line 515
    .line 516
    move-result v11

    .line 517
    const/16 v13, 0xc

    .line 518
    .line 519
    const/4 v15, 0x0

    .line 520
    const/16 v19, 0x0

    .line 521
    .line 522
    const/16 v20, 0x0

    .line 523
    .line 524
    move-object/from16 p2, v6

    .line 525
    .line 526
    move/from16 p3, v12

    .line 527
    .line 528
    move/from16 p4, v11

    .line 529
    .line 530
    move/from16 p5, v19

    .line 531
    .line 532
    move/from16 p6, v20

    .line 533
    .line 534
    move/from16 p7, v13

    .line 535
    .line 536
    move-object/from16 p8, v15

    .line 537
    .line 538
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/SizeKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 539
    .line 540
    .line 541
    move-result-object v6

    .line 542
    new-instance v15, Landroidx/compose/material/SliderKt$RangeSlider$2;

    .line 543
    .line 544
    move-object v11, v15

    .line 545
    move-object v12, v7

    .line 546
    move-object/from16 v13, p0

    .line 547
    .line 548
    move-object v2, v15

    .line 549
    move-object v15, v4

    .line 550
    move/from16 v19, v0

    .line 551
    .line 552
    move/from16 v20, v38

    .line 553
    .line 554
    move-object/from16 v21, v5

    .line 555
    .line 556
    invoke-direct/range {v11 .. v21}, Landroidx/compose/material/SliderKt$RangeSlider$2;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/a3;Lp/i;Lp/i;ZILandroidx/compose/material/j;)V

    .line 557
    .line 558
    .line 559
    const/16 v11, 0x36

    .line 560
    .line 561
    const v12, 0x26e5bb63

    .line 562
    .line 563
    .line 564
    invoke-static {v12, v3, v2, v1, v11}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    const/16 v3, 0xc00

    .line 569
    .line 570
    const/4 v11, 0x6

    .line 571
    const/4 v12, 0x0

    .line 572
    const/4 v13, 0x0

    .line 573
    move-object/from16 p2, v6

    .line 574
    .line 575
    move-object/from16 p3, v12

    .line 576
    .line 577
    move/from16 p4, v13

    .line 578
    .line 579
    move-object/from16 p5, v2

    .line 580
    .line 581
    move-object/from16 p6, v1

    .line 582
    .line 583
    move/from16 p7, v3

    .line 584
    .line 585
    move/from16 p8, v11

    .line 586
    .line 587
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/b;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/i;II)V

    .line 588
    .line 589
    .line 590
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-eqz v2, :cond_2a

    .line 595
    .line 596
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 597
    .line 598
    .line 599
    :cond_2a
    move-object v3, v8

    .line 600
    move/from16 v6, v38

    .line 601
    .line 602
    move-object v8, v5

    .line 603
    move-object v5, v7

    .line 604
    move-object v7, v4

    .line 605
    move v4, v0

    .line 606
    :goto_17
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 607
    .line 608
    .line 609
    move-result-object v11

    .line 610
    if-eqz v11, :cond_2b

    .line 611
    .line 612
    new-instance v12, Landroidx/compose/material/SliderKt$RangeSlider$3;

    .line 613
    .line 614
    move-object v0, v12

    .line 615
    move-object/from16 v1, p0

    .line 616
    .line 617
    move-object/from16 v2, p1

    .line 618
    .line 619
    move/from16 v9, p9

    .line 620
    .line 621
    move/from16 v10, p10

    .line 622
    .line 623
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/SliderKt$RangeSlider$3;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;II)V

    .line 624
    .line 625
    .line 626
    invoke-interface {v11, v12}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 627
    .line 628
    .line 629
    :cond_2b
    return-void

    .line 630
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 631
    .line 632
    const-string v1, "steps should be >= 0"

    .line 633
    .line 634
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    throw v0
.end method

.method private static final c(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V
    .locals 27

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v9, p9

    move-object/from16 v8, p10

    move/from16 v7, p12

    const v0, -0x109f9c61

    move-object/from16 v1, p11

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v6

    and-int/lit8 v1, v7, 0x6

    move/from16 v5, p0

    if-nez v1, :cond_1

    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/lit8 v4, v7, 0x30

    if-nez v4, :cond_3

    invoke-interface {v6, v10}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :cond_3
    and-int/lit16 v4, v7, 0x180

    if-nez v4, :cond_5

    invoke-interface {v6, v11}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v1, v4

    :cond_5
    and-int/lit16 v4, v7, 0xc00

    if-nez v4, :cond_7

    move-object/from16 v4, p3

    invoke-interface {v6, v4}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x800

    goto :goto_4

    :cond_6
    const/16 v16, 0x400

    :goto_4
    or-int v1, v1, v16

    goto :goto_5

    :cond_7
    move-object/from16 v4, p3

    :goto_5
    and-int/lit16 v2, v7, 0x6000

    if-nez v2, :cond_9

    move-object/from16 v2, p4

    invoke-interface {v6, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x4000

    goto :goto_6

    :cond_8
    const/16 v16, 0x2000

    :goto_6
    or-int v1, v1, v16

    goto :goto_7

    :cond_9
    move-object/from16 v2, p4

    :goto_7
    const/high16 v16, 0x30000

    and-int v16, v7, v16

    if-nez v16, :cond_b

    invoke-interface {v6, v12}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v16, 0x10000

    :goto_8
    or-int v1, v1, v16

    :cond_b
    const/high16 v16, 0x180000

    and-int v16, v7, v16

    if-nez v16, :cond_d

    invoke-interface {v6, v13}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v16, 0x80000

    :goto_9
    or-int v1, v1, v16

    :cond_d
    const/high16 v16, 0xc00000

    and-int v16, v7, v16

    if-nez v16, :cond_f

    invoke-interface {v6, v14}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v16, 0x400000

    :goto_a
    or-int v1, v1, v16

    :cond_f
    const/high16 v16, 0x6000000

    and-int v16, v7, v16

    if-nez v16, :cond_11

    invoke-interface {v6, v15}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v16, 0x2000000

    :goto_b
    or-int v1, v1, v16

    :cond_11
    const/high16 v16, 0x30000000

    and-int v16, v7, v16

    if-nez v16, :cond_13

    invoke-interface {v6, v9}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v16, 0x10000000

    :goto_c
    or-int v1, v1, v16

    :cond_13
    and-int/lit8 v16, p13, 0x6

    if-nez v16, :cond_15

    invoke-interface {v6, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v16, 0x4

    goto :goto_d

    :cond_14
    const/16 v16, 0x2

    :goto_d
    or-int v16, p13, v16

    move/from16 v0, v16

    goto :goto_e

    :cond_15
    move/from16 v0, p13

    :goto_e
    const v17, 0x12492493

    and-int v3, v1, v17

    const v2, 0x12492492

    if-ne v3, v2, :cond_17

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    invoke-interface {v6}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_f

    .line 2
    :cond_16
    invoke-interface {v6}, Landroidx/compose/runtime/i;->G()V

    move-object v12, v9

    move-object v10, v14

    move-object v9, v6

    move-object v14, v8

    goto/16 :goto_11

    .line 3
    :cond_17
    :goto_f
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "androidx.compose.material.RangeSliderImpl (Slider.kt:633)"

    const v3, -0x109f9c61

    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 4
    :cond_18
    sget-object v0, Landroidx/compose/material/l;->a:Landroidx/compose/material/l$a;

    invoke-virtual {v0}, Landroidx/compose/material/l$a;->g()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v2, v6, v3}, Landroidx/compose/material/m;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroidx/compose/material/l$a;->f()I

    move-result v0

    invoke-static {v0, v6, v3}, Landroidx/compose/material/m;->a(ILandroidx/compose/runtime/i;I)Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v0, Landroidx/compose/material/SliderKt;->h:Landroidx/compose/ui/f;

    invoke-interface {v15, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    .line 7
    sget-object v16, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    move-result-object v2

    .line 9
    invoke-static {v6, v3}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v3

    .line 10
    invoke-interface {v6}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v4

    .line 11
    invoke-static {v6, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    .line 12
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 13
    invoke-interface {v6}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/f;

    if-nez v7, :cond_19

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 14
    :cond_19
    invoke-interface {v6}, Landroidx/compose/runtime/i;->C()V

    .line 15
    invoke-interface {v6}, Landroidx/compose/runtime/i;->e()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 16
    invoke-interface {v6, v5}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    .line 17
    :cond_1a
    invoke-interface {v6}, Landroidx/compose/runtime/i;->o()V

    .line 18
    :goto_10
    invoke-static {v6}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v5

    .line 19
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v5, v2, v7}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 20
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v5, v4, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 21
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 22
    invoke-interface {v5}, Landroidx/compose/runtime/i;->e()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-interface {v5}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 23
    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 25
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 26
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 27
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v0

    .line 28
    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lo0/e;

    .line 30
    sget v2, Landroidx/compose/material/SliderKt;->e:F

    invoke-interface {v0, v2}, Lo0/e;->D0(F)F

    move-result v19

    .line 31
    sget v2, Landroidx/compose/material/SliderKt;->a:F

    invoke-interface {v0, v2}, Lo0/e;->D0(F)F

    move-result v20

    .line 32
    invoke-interface {v0, v12}, Lo0/e;->x0(F)F

    move-result v0

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 33
    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v21

    mul-float v2, v0, v10

    .line 34
    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v22

    mul-float/2addr v0, v11

    .line 35
    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v23

    .line 36
    sget-object v5, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 37
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/b$a;->g()Landroidx/compose/ui/b;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Landroidx/compose/foundation/layout/f;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b;)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    invoke-static {v0, v2, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    shr-int/lit8 v3, v1, 0x9

    and-int/lit8 v2, v3, 0x70

    shl-int/lit8 v4, v1, 0x6

    move/from16 v16, v1

    and-int/lit16 v1, v4, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v4, 0x1c00

    or-int/2addr v1, v2

    const v24, 0xe000

    and-int v2, v4, v24

    or-int/2addr v1, v2

    const/high16 v25, 0x70000

    and-int v2, v4, v25

    or-int v26, v1, v2

    move-object/from16 v1, p4

    move-object/from16 v4, v17

    move/from16 v2, p0

    move v11, v3

    move-object/from16 v10, v18

    move/from16 v3, p1

    move-object v12, v4

    const/4 v15, 0x1

    move/from16 v4, p2

    move-object v14, v5

    move-object/from16 v5, p3

    move-object/from16 p11, v6

    move/from16 v6, v20

    move-object/from16 v17, v7

    move/from16 v7, v19

    move-object/from16 v8, p11

    move/from16 v9, v26

    .line 39
    invoke-static/range {v0 .. v9}, Landroidx/compose/material/SliderKt;->e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V

    move-object/from16 v9, p11

    .line 40
    invoke-interface {v9, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    invoke-interface {v9}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1d

    .line 42
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_1e

    .line 43
    :cond_1d
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;

    invoke-direct {v1, v12}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {v9, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 45
    :cond_1e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v15, v1}, Landroidx/compose/ui/semantics/k;->b(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object v0

    .line 46
    invoke-static {v0, v15, v13}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/f;ZLp/i;)Landroidx/compose/ui/f;

    move-result-object v0

    move-object/from16 v12, p9

    .line 47
    invoke-interface {v0, v12}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v1

    and-int/lit16 v0, v11, 0x1c00

    const v11, 0x180006

    or-int/2addr v0, v11

    and-int v18, v16, v24

    or-int v0, v0, v18

    shl-int/lit8 v2, v16, 0xf

    and-int v19, v2, v25

    or-int v8, v0, v19

    move-object/from16 v0, v17

    move/from16 v2, v22

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move/from16 v5, p0

    move/from16 v6, v21

    move-object v7, v9

    .line 48
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    .line 49
    invoke-interface {v9, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    invoke-interface {v9}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1f

    .line 51
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_20

    .line 52
    :cond_1f
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;

    invoke-direct {v1, v10}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-interface {v9, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 54
    :cond_20
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v15, v1}, Landroidx/compose/ui/semantics/k;->b(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object v0

    move-object/from16 v10, p7

    .line 55
    invoke-static {v0, v15, v10}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/f;ZLp/i;)Landroidx/compose/ui/f;

    move-result-object v0

    move-object/from16 v14, p10

    .line 56
    invoke-interface {v0, v14}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v1

    shr-int/lit8 v0, v16, 0xc

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v11

    or-int v0, v0, v18

    or-int v8, v0, v19

    move-object/from16 v0, v17

    move/from16 v2, v23

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p0

    move/from16 v6, v21

    move-object v7, v9

    .line 57
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    .line 58
    invoke-interface {v9}, Landroidx/compose/runtime/i;->r()V

    .line 59
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 60
    :cond_21
    :goto_11
    invoke-interface {v9}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v15

    if-eqz v15, :cond_22

    new-instance v11, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;

    move-object v0, v11

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v13, v11

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object v14, v13

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;-><init>(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;II)V

    invoke-interface {v15, v14}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void
.end method

.method private static final d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v6, p5

    .line 10
    .line 11
    move/from16 v7, p6

    .line 12
    .line 13
    move/from16 v8, p8

    .line 14
    .line 15
    const v0, 0x19909aaa

    .line 16
    .line 17
    .line 18
    move-object/from16 v3, p7

    .line 19
    .line 20
    invoke-interface {v3, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    and-int/lit8 v9, v8, 0x6

    .line 25
    .line 26
    if-nez v9, :cond_1

    .line 27
    .line 28
    invoke-interface {v3, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-eqz v9, :cond_0

    .line 33
    .line 34
    const/4 v9, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v9, 0x2

    .line 37
    :goto_0
    or-int/2addr v9, v8

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v9, v8

    .line 40
    :goto_1
    and-int/lit8 v10, v8, 0x30

    .line 41
    .line 42
    if-nez v10, :cond_3

    .line 43
    .line 44
    invoke-interface {v3, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    const/16 v10, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v10, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v9, v10

    .line 56
    :cond_3
    and-int/lit16 v10, v8, 0x180

    .line 57
    .line 58
    move/from16 v14, p2

    .line 59
    .line 60
    if-nez v10, :cond_5

    .line 61
    .line 62
    invoke-interface {v3, v14}, Landroidx/compose/runtime/i;->b(F)Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    const/16 v10, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v10, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v9, v10

    .line 74
    :cond_5
    and-int/lit16 v10, v8, 0xc00

    .line 75
    .line 76
    if-nez v10, :cond_7

    .line 77
    .line 78
    invoke-interface {v3, v4}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_6

    .line 83
    .line 84
    const/16 v10, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v10, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v9, v10

    .line 90
    :cond_7
    and-int/lit16 v10, v8, 0x6000

    .line 91
    .line 92
    if-nez v10, :cond_9

    .line 93
    .line 94
    invoke-interface {v3, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_8

    .line 99
    .line 100
    const/16 v10, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v10, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v9, v10

    .line 106
    :cond_9
    const/high16 v10, 0x30000

    .line 107
    .line 108
    and-int/2addr v10, v8

    .line 109
    if-nez v10, :cond_b

    .line 110
    .line 111
    invoke-interface {v3, v6}, Landroidx/compose/runtime/i;->a(Z)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_a

    .line 116
    .line 117
    const/high16 v10, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v10, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v9, v10

    .line 123
    :cond_b
    const/high16 v10, 0x180000

    .line 124
    .line 125
    and-int/2addr v10, v8

    .line 126
    if-nez v10, :cond_d

    .line 127
    .line 128
    invoke-interface {v3, v7}, Landroidx/compose/runtime/i;->b(F)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_c

    .line 133
    .line 134
    const/high16 v10, 0x100000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    const/high16 v10, 0x80000

    .line 138
    .line 139
    :goto_7
    or-int/2addr v9, v10

    .line 140
    :cond_d
    move v13, v9

    .line 141
    const v9, 0x92493

    .line 142
    .line 143
    .line 144
    and-int/2addr v9, v13

    .line 145
    const v10, 0x92492

    .line 146
    .line 147
    .line 148
    if-ne v9, v10, :cond_f

    .line 149
    .line 150
    invoke-interface {v3}, Landroidx/compose/runtime/i;->h()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_e

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_e
    invoke-interface {v3}, Landroidx/compose/runtime/i;->G()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_d

    .line 161
    .line 162
    :cond_f
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_10

    .line 167
    .line 168
    const/4 v9, -0x1

    .line 169
    const-string v10, "androidx.compose.material.SliderThumb (Slider.kt:696)"

    .line 170
    .line 171
    invoke-static {v0, v13, v9, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_10
    sget-object v16, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 175
    .line 176
    const/16 v21, 0xe

    .line 177
    .line 178
    const/16 v22, 0x0

    .line 179
    .line 180
    const/16 v18, 0x0

    .line 181
    .line 182
    const/16 v19, 0x0

    .line 183
    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    move/from16 v17, p2

    .line 187
    .line 188
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sget-object v9, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 193
    .line 194
    invoke-virtual {v9}, Landroidx/compose/ui/b$a;->g()Landroidx/compose/ui/b;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-interface {v1, v0, v10}, Landroidx/compose/foundation/layout/f;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/b;)Landroidx/compose/ui/f;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v9}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    const/4 v12, 0x0

    .line 207
    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/b;Z)Landroidx/compose/ui/layout/t;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-static {v3, v12}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    invoke-interface {v3}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 224
    .line 225
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    invoke-interface {v3}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    instance-of v11, v11, Landroidx/compose/runtime/f;

    .line 234
    .line 235
    if-nez v11, :cond_11

    .line 236
    .line 237
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 238
    .line 239
    .line 240
    :cond_11
    invoke-interface {v3}, Landroidx/compose/runtime/i;->C()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v3}, Landroidx/compose/runtime/i;->e()Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-eqz v11, :cond_12

    .line 248
    .line 249
    invoke-interface {v3, v15}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 250
    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_12
    invoke-interface {v3}, Landroidx/compose/runtime/i;->o()V

    .line 254
    .line 255
    .line 256
    :goto_9
    invoke-static {v3}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    invoke-static {v11, v9, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-static {v11, v12, v9}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-interface {v11}, Landroidx/compose/runtime/i;->e()Z

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    if-nez v12, :cond_13

    .line 283
    .line 284
    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v15

    .line 292
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-nez v12, :cond_14

    .line 297
    .line 298
    :cond_13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    invoke-interface {v11, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-interface {v11, v10, v9}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    .line 311
    .line 312
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    invoke-static {v11, v0, v9}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 317
    .line 318
    .line 319
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 320
    .line 321
    invoke-interface {v3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    sget-object v9, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 326
    .line 327
    invoke-virtual {v9}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    if-ne v0, v10, :cond_15

    .line 332
    .line 333
    invoke-static {}, Landroidx/compose/runtime/r2;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-interface {v3, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_15
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 341
    .line 342
    and-int/lit16 v10, v13, 0x1c00

    .line 343
    .line 344
    const/16 v11, 0x800

    .line 345
    .line 346
    if-ne v10, v11, :cond_16

    .line 347
    .line 348
    const/4 v10, 0x1

    .line 349
    goto :goto_a

    .line 350
    :cond_16
    const/4 v10, 0x0

    .line 351
    :goto_a
    invoke-interface {v3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    const/4 v15, 0x0

    .line 356
    if-nez v10, :cond_17

    .line 357
    .line 358
    invoke-virtual {v9}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    if-ne v11, v9, :cond_18

    .line 363
    .line 364
    :cond_17
    new-instance v11, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;

    .line 365
    .line 366
    invoke-direct {v11, v4, v0, v15}, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;-><init>(Lp/i;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v3, v11}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_18
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 373
    .line 374
    shr-int/lit8 v16, v13, 0x9

    .line 375
    .line 376
    and-int/lit8 v9, v16, 0xe

    .line 377
    .line 378
    invoke-static {v4, v11, v3, v9}, Landroidx/compose/runtime/g0;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_19

    .line 386
    .line 387
    sget v0, Landroidx/compose/material/SliderKt;->d:F

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_19
    sget v0, Landroidx/compose/material/SliderKt;->c:F

    .line 391
    .line 392
    :goto_b
    invoke-static {v2, v7, v7}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    .line 393
    .line 394
    .line 395
    move-result-object v11

    .line 396
    sget v10, Landroidx/compose/material/SliderKt;->b:F

    .line 397
    .line 398
    const/16 v18, 0x36

    .line 399
    .line 400
    const/16 v19, 0x4

    .line 401
    .line 402
    const/4 v9, 0x0

    .line 403
    const-wide/16 v20, 0x0

    .line 404
    .line 405
    move-object/from16 v24, v11

    .line 406
    .line 407
    move-wide/from16 v11, v20

    .line 408
    .line 409
    move/from16 v20, v13

    .line 410
    .line 411
    move-object v13, v3

    .line 412
    move/from16 v14, v18

    .line 413
    .line 414
    move/from16 p7, v0

    .line 415
    .line 416
    move-object v1, v15

    .line 417
    const/4 v0, 0x2

    .line 418
    move/from16 v15, v19

    .line 419
    .line 420
    invoke-static/range {v9 .. v15}, Landroidx/compose/material/RippleKt;->f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    move-object/from16 v10, v24

    .line 425
    .line 426
    invoke-static {v10, v4, v9}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/f;Lp/g;Landroidx/compose/foundation/x;)Landroidx/compose/ui/f;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    const/4 v10, 0x0

    .line 431
    invoke-static {v9, v4, v10, v0, v1}, Landroidx/compose/foundation/v;->b(Landroidx/compose/ui/f;Lp/i;ZILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 432
    .line 433
    .line 434
    move-result-object v21

    .line 435
    if-eqz v6, :cond_1a

    .line 436
    .line 437
    move/from16 v22, p7

    .line 438
    .line 439
    goto :goto_c

    .line 440
    :cond_1a
    int-to-float v0, v10

    .line 441
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    move/from16 v22, v0

    .line 446
    .line 447
    :goto_c
    invoke-static {}, Lq/g;->e()Lq/f;

    .line 448
    .line 449
    .line 450
    move-result-object v23

    .line 451
    const/16 v29, 0x18

    .line 452
    .line 453
    const/16 v30, 0x0

    .line 454
    .line 455
    const/16 v24, 0x0

    .line 456
    .line 457
    const-wide/16 v25, 0x0

    .line 458
    .line 459
    const-wide/16 v27, 0x0

    .line 460
    .line 461
    invoke-static/range {v21 .. v30}, Landroidx/compose/ui/draw/l;->b(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/a5;ZJJILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    shr-int/lit8 v1, v20, 0xf

    .line 466
    .line 467
    and-int/lit8 v1, v1, 0xe

    .line 468
    .line 469
    and-int/lit8 v9, v16, 0x70

    .line 470
    .line 471
    or-int/2addr v1, v9

    .line 472
    invoke-interface {v5, v6, v3, v1}, Landroidx/compose/material/j;->c(ZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Landroidx/compose/ui/graphics/u1;

    .line 481
    .line 482
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 483
    .line 484
    .line 485
    move-result-wide v11

    .line 486
    invoke-static {}, Lq/g;->e()Lq/f;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v0, v11, v12, v1}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {v0, v3, v10}, Landroidx/compose/foundation/layout/e0;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 495
    .line 496
    .line 497
    invoke-interface {v3}, Landroidx/compose/runtime/i;->r()V

    .line 498
    .line 499
    .line 500
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_1b

    .line 505
    .line 506
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 507
    .line 508
    .line 509
    :cond_1b
    :goto_d
    invoke-interface {v3}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    if-eqz v9, :cond_1c

    .line 514
    .line 515
    new-instance v10, Landroidx/compose/material/SliderKt$SliderThumb$2;

    .line 516
    .line 517
    move-object v0, v10

    .line 518
    move-object/from16 v1, p0

    .line 519
    .line 520
    move-object/from16 v2, p1

    .line 521
    .line 522
    move/from16 v3, p2

    .line 523
    .line 524
    move-object/from16 v4, p3

    .line 525
    .line 526
    move-object/from16 v5, p4

    .line 527
    .line 528
    move/from16 v6, p5

    .line 529
    .line 530
    move/from16 v7, p6

    .line 531
    .line 532
    move/from16 v8, p8

    .line 533
    .line 534
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$SliderThumb$2;-><init>(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFI)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v9, v10}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 538
    .line 539
    .line 540
    :cond_1c
    return-void
.end method

.method private static final e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v14, p5

    .line 8
    .line 9
    move/from16 v15, p9

    .line 10
    .line 11
    const v0, 0x6d4348a2

    .line 12
    .line 13
    .line 14
    move-object/from16 v4, p8

    .line 15
    .line 16
    invoke-interface {v4, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 17
    .line 18
    .line 19
    move-result-object v13

    .line 20
    and-int/lit8 v4, v15, 0x6

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    invoke-interface {v13, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v4, 0x2

    .line 33
    :goto_0
    or-int/2addr v4, v15

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v4, v15

    .line 36
    :goto_1
    and-int/lit8 v5, v15, 0x30

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-interface {v13, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v5, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v4, v5

    .line 52
    :cond_3
    and-int/lit16 v5, v15, 0x180

    .line 53
    .line 54
    if-nez v5, :cond_5

    .line 55
    .line 56
    invoke-interface {v13, v3}, Landroidx/compose/runtime/i;->a(Z)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    const/16 v5, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v5, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v4, v5

    .line 68
    :cond_5
    and-int/lit16 v5, v15, 0xc00

    .line 69
    .line 70
    move/from16 v12, p3

    .line 71
    .line 72
    if-nez v5, :cond_7

    .line 73
    .line 74
    invoke-interface {v13, v12}, Landroidx/compose/runtime/i;->b(F)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    const/16 v5, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v5, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v4, v5

    .line 86
    :cond_7
    and-int/lit16 v5, v15, 0x6000

    .line 87
    .line 88
    move/from16 v11, p4

    .line 89
    .line 90
    if-nez v5, :cond_9

    .line 91
    .line 92
    invoke-interface {v13, v11}, Landroidx/compose/runtime/i;->b(F)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    const/16 v5, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v5, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v4, v5

    .line 104
    :cond_9
    const/high16 v5, 0x30000

    .line 105
    .line 106
    and-int/2addr v5, v15

    .line 107
    if-nez v5, :cond_b

    .line 108
    .line 109
    invoke-interface {v13, v14}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_a

    .line 114
    .line 115
    const/high16 v5, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v5, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v4, v5

    .line 121
    :cond_b
    const/high16 v5, 0x180000

    .line 122
    .line 123
    and-int/2addr v5, v15

    .line 124
    move/from16 v10, p6

    .line 125
    .line 126
    if-nez v5, :cond_d

    .line 127
    .line 128
    invoke-interface {v13, v10}, Landroidx/compose/runtime/i;->b(F)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_c

    .line 133
    .line 134
    const/high16 v5, 0x100000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    const/high16 v5, 0x80000

    .line 138
    .line 139
    :goto_7
    or-int/2addr v4, v5

    .line 140
    :cond_d
    const/high16 v5, 0xc00000

    .line 141
    .line 142
    and-int/2addr v5, v15

    .line 143
    if-nez v5, :cond_f

    .line 144
    .line 145
    move/from16 v5, p7

    .line 146
    .line 147
    invoke-interface {v13, v5}, Landroidx/compose/runtime/i;->b(F)Z

    .line 148
    .line 149
    .line 150
    move-result v16

    .line 151
    if-eqz v16, :cond_e

    .line 152
    .line 153
    const/high16 v16, 0x800000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/high16 v16, 0x400000

    .line 157
    .line 158
    :goto_8
    or-int v4, v4, v16

    .line 159
    .line 160
    goto :goto_9

    .line 161
    :cond_f
    move/from16 v5, p7

    .line 162
    .line 163
    :goto_9
    const v16, 0x492493

    .line 164
    .line 165
    .line 166
    and-int v6, v4, v16

    .line 167
    .line 168
    const v7, 0x492492

    .line 169
    .line 170
    .line 171
    if-ne v6, v7, :cond_11

    .line 172
    .line 173
    invoke-interface {v13}, Landroidx/compose/runtime/i;->h()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_10

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_10
    invoke-interface {v13}, Landroidx/compose/runtime/i;->G()V

    .line 181
    .line 182
    .line 183
    move-object v3, v13

    .line 184
    goto/16 :goto_11

    .line 185
    .line 186
    :cond_11
    :goto_a
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_12

    .line 191
    .line 192
    const/4 v6, -0x1

    .line 193
    const-string v7, "androidx.compose.material.Track (Slider.kt:747)"

    .line 194
    .line 195
    invoke-static {v0, v4, v6, v7}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_12
    shr-int/lit8 v0, v4, 0x6

    .line 199
    .line 200
    and-int/lit8 v0, v0, 0xe

    .line 201
    .line 202
    or-int/lit8 v0, v0, 0x30

    .line 203
    .line 204
    shl-int/lit8 v6, v4, 0x3

    .line 205
    .line 206
    and-int/lit16 v6, v6, 0x380

    .line 207
    .line 208
    or-int/2addr v0, v6

    .line 209
    const/4 v6, 0x0

    .line 210
    invoke-interface {v2, v3, v6, v13, v0}, Landroidx/compose/material/j;->b(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    const/4 v9, 0x1

    .line 215
    invoke-interface {v2, v3, v9, v13, v0}, Landroidx/compose/material/j;->b(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-interface {v2, v3, v6, v13, v0}, Landroidx/compose/material/j;->a(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    invoke-interface {v2, v3, v9, v13, v0}, Landroidx/compose/material/j;->a(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const/high16 v18, 0x380000

    .line 228
    .line 229
    and-int v6, v4, v18

    .line 230
    .line 231
    const/high16 v9, 0x100000

    .line 232
    .line 233
    if-ne v6, v9, :cond_13

    .line 234
    .line 235
    const/4 v6, 0x1

    .line 236
    goto :goto_b

    .line 237
    :cond_13
    const/4 v6, 0x0

    .line 238
    :goto_b
    invoke-interface {v13, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    or-int/2addr v6, v9

    .line 243
    const/high16 v9, 0x1c00000

    .line 244
    .line 245
    and-int/2addr v9, v4

    .line 246
    const/high16 v2, 0x800000

    .line 247
    .line 248
    if-ne v9, v2, :cond_14

    .line 249
    .line 250
    const/4 v2, 0x1

    .line 251
    goto :goto_c

    .line 252
    :cond_14
    const/4 v2, 0x0

    .line 253
    :goto_c
    or-int/2addr v2, v6

    .line 254
    const v6, 0xe000

    .line 255
    .line 256
    .line 257
    and-int/2addr v6, v4

    .line 258
    const/16 v9, 0x4000

    .line 259
    .line 260
    if-ne v6, v9, :cond_15

    .line 261
    .line 262
    const/4 v6, 0x1

    .line 263
    goto :goto_d

    .line 264
    :cond_15
    const/4 v6, 0x0

    .line 265
    :goto_d
    or-int/2addr v2, v6

    .line 266
    and-int/lit16 v6, v4, 0x1c00

    .line 267
    .line 268
    const/16 v9, 0x800

    .line 269
    .line 270
    if-ne v6, v9, :cond_16

    .line 271
    .line 272
    const/4 v6, 0x1

    .line 273
    goto :goto_e

    .line 274
    :cond_16
    const/4 v6, 0x0

    .line 275
    :goto_e
    or-int/2addr v2, v6

    .line 276
    invoke-interface {v13, v8}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    or-int/2addr v2, v6

    .line 281
    invoke-interface {v13, v14}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    or-int/2addr v2, v6

    .line 286
    invoke-interface {v13, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    or-int/2addr v2, v6

    .line 291
    invoke-interface {v13, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    or-int/2addr v2, v6

    .line 296
    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    if-nez v2, :cond_18

    .line 301
    .line 302
    sget-object v2, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 303
    .line 304
    invoke-virtual {v2}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    if-ne v6, v2, :cond_17

    .line 309
    .line 310
    goto :goto_f

    .line 311
    :cond_17
    move/from16 v16, v4

    .line 312
    .line 313
    move-object v3, v13

    .line 314
    goto :goto_10

    .line 315
    :cond_18
    :goto_f
    new-instance v2, Landroidx/compose/material/SliderKt$Track$1$1;

    .line 316
    .line 317
    move/from16 v16, v4

    .line 318
    .line 319
    move-object v4, v2

    .line 320
    move/from16 v5, p6

    .line 321
    .line 322
    move-object v6, v7

    .line 323
    move/from16 v7, p7

    .line 324
    .line 325
    move-object/from16 v17, v8

    .line 326
    .line 327
    move/from16 v8, p4

    .line 328
    .line 329
    move/from16 v9, p3

    .line 330
    .line 331
    move-object/from16 v10, v17

    .line 332
    .line 333
    move-object/from16 v11, p5

    .line 334
    .line 335
    move-object v3, v13

    .line 336
    move-object v13, v0

    .line 337
    invoke-direct/range {v4 .. v13}, Landroidx/compose/material/SliderKt$Track$1$1;-><init>(FLandroidx/compose/runtime/a3;FFFLandroidx/compose/runtime/a3;Ljava/util/List;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v3, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    move-object v6, v2

    .line 344
    :goto_10
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 345
    .line 346
    and-int/lit8 v0, v16, 0xe

    .line 347
    .line 348
    invoke-static {v1, v6, v3, v0}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_19

    .line 356
    .line 357
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 358
    .line 359
    .line 360
    :cond_19
    :goto_11
    invoke-interface {v3}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    if-eqz v10, :cond_1a

    .line 365
    .line 366
    new-instance v11, Landroidx/compose/material/SliderKt$Track$2;

    .line 367
    .line 368
    move-object v0, v11

    .line 369
    move-object/from16 v1, p0

    .line 370
    .line 371
    move-object/from16 v2, p1

    .line 372
    .line 373
    move/from16 v3, p2

    .line 374
    .line 375
    move/from16 v4, p3

    .line 376
    .line 377
    move/from16 v5, p4

    .line 378
    .line 379
    move-object/from16 v6, p5

    .line 380
    .line 381
    move/from16 v7, p6

    .line 382
    .line 383
    move/from16 v8, p7

    .line 384
    .line 385
    move/from16 v9, p9

    .line 386
    .line 387
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$Track$2;-><init>(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFI)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v10, v11}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 391
    .line 392
    .line 393
    :cond_1a
    return-void
.end method

.method public static final synthetic f(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->a(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/SliderKt;->c(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/SliderKt;->e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/ui/input/pointer/c;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->r(Landroidx/compose/ui/input/pointer/c;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->s(FFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l()Landroidx/compose/animation/core/r0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/SliderKt;->i:Landroidx/compose/animation/core/r0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/SliderKt;->u(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(FFFFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->v(FFFFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic o(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->w(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->x(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(FLjava/util/List;FF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt;->y(FLjava/util/List;FF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final r(Landroidx/compose/ui/input/pointer/c;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 22
    .line 23
    invoke-direct {v0, p4}, Landroidx/compose/material/SliderKt$awaitSlop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 43
    .line 44
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 60
    .line 61
    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v5, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;

    .line 65
    .line 66
    invoke-direct {v5, p4}, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 67
    .line 68
    .line 69
    iput-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v2, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 72
    .line 73
    move-object v1, p0

    .line 74
    move-wide v2, p1

    .line 75
    move v4, p3

    .line 76
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DragGestureDetectorCopyKt;->a(Landroidx/compose/ui/input/pointer/c;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-ne p0, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    move-object v7, p4

    .line 84
    move-object p4, p0

    .line 85
    move-object p0, v7

    .line 86
    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/w;

    .line 87
    .line 88
    if-eqz p4, :cond_4

    .line 89
    .line 90
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 91
    .line 92
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p4, p0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/4 p0, 0x0

    .line 102
    :goto_3
    return-object p0
.end method

.method private static final s(FFF)F
    .locals 2

    .line 1
    sub-float/2addr p1, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    move p2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-float/2addr p2, p0

    .line 10
    div-float/2addr p2, p1

    .line 11
    :goto_0
    cmpg-float p0, p2, v0

    .line 12
    .line 13
    if-gez p0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, p2

    .line 17
    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    cmpl-float p1, v0, p0

    .line 20
    .line 21
    if-lez p1, :cond_2

    .line 22
    .line 23
    move v0, p0

    .line 24
    :cond_2
    return v0
.end method

.method public static final t()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SliderKt;->a:F

    .line 2
    .line 3
    return v0
.end method

.method private static final u(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;
    .locals 13

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x5

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object p2, v2, v3

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    aput-object p8, v2, v0

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    move-object v3, v0

    .line 33
    move-object v4, p1

    .line 34
    move-object v5, p2

    .line 35
    move-object/from16 v6, p3

    .line 36
    .line 37
    move-object/from16 v7, p4

    .line 38
    .line 39
    move-object/from16 v8, p10

    .line 40
    .line 41
    move/from16 v9, p6

    .line 42
    .line 43
    move/from16 v10, p7

    .line 44
    .line 45
    move-object/from16 v11, p9

    .line 46
    .line 47
    invoke-direct/range {v3 .. v12}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;-><init>(Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZFLandroidx/compose/runtime/a3;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    move-object v1, p0

    .line 51
    invoke-static {p0, v2, v0}, Landroidx/compose/ui/input/pointer/l0;->d(Landroidx/compose/ui/f;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object v1, p0

    .line 57
    move-object v0, v1

    .line 58
    :goto_0
    return-object v0
.end method

.method private static final v(FFFFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->s(FFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p3, p4, p0}, Lq0/b;->b(FFF)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static final w(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1

    .line 1
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p0, p1, v0, p3, p4}, Landroidx/compose/material/SliderKt;->v(FFFFF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->v(FFFFF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static final x(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    invoke-interface {p5}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p5}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    new-instance v0, Landroidx/compose/material/SliderKt$sliderSemantics$1;

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move v3, p2

    .line 29
    move-object v4, p5

    .line 30
    move v5, p6

    .line 31
    move-object v7, p3

    .line 32
    move-object v8, p4

    .line 33
    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/SliderKt$sliderSemantics$1;-><init>(ZLkotlin/ranges/ClosedFloatingPointRange;IFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    const/4 p3, 0x0

    .line 38
    const/4 p4, 0x0

    .line 39
    invoke-static {p0, p4, v0, p2, p3}, Landroidx/compose/ui/semantics/k;->c(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p1, p5, p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->a(Landroidx/compose/ui/f;FLkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method private static final y(FLjava/util/List;FF)F
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p2, p3, v1}, Lq0/b;->b(FFF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-float/2addr v1, p0

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x1

    .line 35
    if-gt v3, v2, :cond_2

    .line 36
    .line 37
    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    move-object v5, v4

    .line 42
    check-cast v5, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {p2, p3, v5}, Lq0/b;->b(FFF)F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    sub-float/2addr v5, p0

    .line 53
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-lez v6, :cond_1

    .line 62
    .line 63
    move-object v0, v4

    .line 64
    move v1, v5

    .line 65
    :cond_1
    if-eq v3, v2, :cond_2

    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object p1, v0

    .line 71
    :goto_1
    check-cast p1, Ljava/lang/Float;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-static {p2, p3, p0}, Lq0/b;->b(FFF)F

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    :cond_3
    return p0
.end method

.method private static final z(I)Ljava/util/List;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    add-int/lit8 v0, p0, 0x2

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    int-to-float v3, v2

    .line 19
    add-int/lit8 v4, p0, 0x1

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    div-float/2addr v3, v4

    .line 23
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p0, v1

    .line 34
    :goto_1
    return-object p0
.end method
