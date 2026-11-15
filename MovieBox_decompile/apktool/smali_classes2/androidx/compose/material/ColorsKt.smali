.class public abstract Landroidx/compose/material/ColorsKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE:Landroidx/compose/material/ColorsKt$LocalColors$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/material/ColorsKt;->a:Landroidx/compose/runtime/s1;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Landroidx/compose/material/b;J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/material/b;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/material/b;->e()J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/b;->i()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/material/b;->e()J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material/b;->j()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/material/b;->f()J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material/b;->k()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/material/b;->f()J

    .line 57
    .line 58
    .line 59
    move-result-wide p0

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material/b;->a()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/material/b;->c()J

    .line 72
    .line 73
    .line 74
    move-result-wide p0

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material/b;->l()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/compose/material/b;->g()J

    .line 87
    .line 88
    .line 89
    move-result-wide p0

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/material/b;->b()J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/compose/material/b;->d()J

    .line 102
    .line 103
    .line 104
    move-result-wide p0

    .line 105
    goto :goto_0

    .line 106
    :cond_6
    sget-object p0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 109
    .line 110
    .line 111
    move-result-wide p0

    .line 112
    :goto_0
    return-wide p0
.end method

.method public static final b(JLandroidx/compose/runtime/i;I)J
    .locals 3

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
    const-string v1, "androidx.compose.material.contentColorFor (Colors.kt:296)"

    .line 9
    .line 10
    const v2, 0x1a561887

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const p3, -0x29ddb2df

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p3}, Landroidx/compose/runtime/i;->P(I)V

    .line 20
    .line 21
    .line 22
    sget-object p3, Landroidx/compose/material/e;->a:Landroidx/compose/material/e;

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    invoke-virtual {p3, p2, v0}, Landroidx/compose/material/e;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/material/b;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3, p0, p1}, Landroidx/compose/material/ColorsKt;->a(Landroidx/compose/material/b;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    const-wide/16 v0, 0x10

    .line 34
    .line 35
    cmp-long p3, p0, v0

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/s1;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroidx/compose/ui/graphics/u1;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-wide p0
.end method

.method public static final c()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ColorsKt;->a:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d(JJJJJJJJJJJJ)Landroidx/compose/material/b;
    .locals 28

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-wide/from16 v5, p4

    .line 6
    .line 7
    move-wide/from16 v7, p6

    .line 8
    .line 9
    move-wide/from16 v9, p8

    .line 10
    .line 11
    move-wide/from16 v11, p10

    .line 12
    .line 13
    move-wide/from16 v13, p12

    .line 14
    .line 15
    move-wide/from16 v15, p14

    .line 16
    .line 17
    move-wide/from16 v17, p16

    .line 18
    .line 19
    move-wide/from16 v19, p18

    .line 20
    .line 21
    move-wide/from16 v21, p20

    .line 22
    .line 23
    move-wide/from16 v23, p22

    .line 24
    .line 25
    new-instance v27, Landroidx/compose/material/b;

    .line 26
    .line 27
    move-object/from16 v0, v27

    .line 28
    .line 29
    const/16 v25, 0x1

    .line 30
    .line 31
    const/16 v26, 0x0

    .line 32
    .line 33
    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/b;-><init>(JJJJJJJJJJJJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    return-object v27
.end method

.method public static synthetic e(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/b;
    .locals 19

    .line 1
    move/from16 v0, p24

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-wide v1, 0xff6200eeL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/w1;->d(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide/from16 v1, p0

    .line 18
    .line 19
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const-wide v3, 0xff3700b3L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/w1;->d(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-wide/from16 v3, p2

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const-wide v5, 0xff03dac6L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/w1;->d(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-wide/from16 v5, p4

    .line 50
    .line 51
    :goto_2
    and-int/lit8 v7, v0, 0x8

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    const-wide v7, 0xff018786L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/w1;->d(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move-wide/from16 v7, p6

    .line 66
    .line 67
    :goto_3
    and-int/lit8 v9, v0, 0x10

    .line 68
    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    sget-object v9, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 72
    .line 73
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/u1$a;->f()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move-wide/from16 v9, p8

    .line 79
    .line 80
    :goto_4
    and-int/lit8 v11, v0, 0x20

    .line 81
    .line 82
    if-eqz v11, :cond_5

    .line 83
    .line 84
    sget-object v11, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 85
    .line 86
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/u1$a;->f()J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    move-wide/from16 v11, p10

    .line 92
    .line 93
    :goto_5
    and-int/lit8 v13, v0, 0x40

    .line 94
    .line 95
    if-eqz v13, :cond_6

    .line 96
    .line 97
    const-wide v13, 0xffb00020L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/w1;->d(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v13

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    move-wide/from16 v13, p12

    .line 108
    .line 109
    :goto_6
    and-int/lit16 v15, v0, 0x80

    .line 110
    .line 111
    if-eqz v15, :cond_7

    .line 112
    .line 113
    sget-object v15, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 114
    .line 115
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/u1$a;->f()J

    .line 116
    .line 117
    .line 118
    move-result-wide v15

    .line 119
    goto :goto_7

    .line 120
    :cond_7
    move-wide/from16 v15, p14

    .line 121
    .line 122
    :goto_7
    move-wide/from16 p14, v15

    .line 123
    .line 124
    and-int/lit16 v15, v0, 0x100

    .line 125
    .line 126
    if-eqz v15, :cond_8

    .line 127
    .line 128
    sget-object v15, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 129
    .line 130
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/u1$a;->a()J

    .line 131
    .line 132
    .line 133
    move-result-wide v15

    .line 134
    goto :goto_8

    .line 135
    :cond_8
    move-wide/from16 v15, p16

    .line 136
    .line 137
    :goto_8
    move-wide/from16 p16, v15

    .line 138
    .line 139
    and-int/lit16 v15, v0, 0x200

    .line 140
    .line 141
    if-eqz v15, :cond_9

    .line 142
    .line 143
    sget-object v15, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 144
    .line 145
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/u1$a;->a()J

    .line 146
    .line 147
    .line 148
    move-result-wide v15

    .line 149
    goto :goto_9

    .line 150
    :cond_9
    move-wide/from16 v15, p18

    .line 151
    .line 152
    :goto_9
    move-wide/from16 p18, v15

    .line 153
    .line 154
    and-int/lit16 v15, v0, 0x400

    .line 155
    .line 156
    if-eqz v15, :cond_a

    .line 157
    .line 158
    sget-object v15, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 159
    .line 160
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/u1$a;->a()J

    .line 161
    .line 162
    .line 163
    move-result-wide v15

    .line 164
    goto :goto_a

    .line 165
    :cond_a
    move-wide/from16 v15, p20

    .line 166
    .line 167
    :goto_a
    and-int/lit16 v0, v0, 0x800

    .line 168
    .line 169
    if-eqz v0, :cond_b

    .line 170
    .line 171
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->f()J

    .line 174
    .line 175
    .line 176
    move-result-wide v17

    .line 177
    goto :goto_b

    .line 178
    :cond_b
    move-wide/from16 v17, p22

    .line 179
    .line 180
    :goto_b
    move-wide/from16 p0, v1

    .line 181
    .line 182
    move-wide/from16 p2, v3

    .line 183
    .line 184
    move-wide/from16 p4, v5

    .line 185
    .line 186
    move-wide/from16 p6, v7

    .line 187
    .line 188
    move-wide/from16 p8, v9

    .line 189
    .line 190
    move-wide/from16 p10, v11

    .line 191
    .line 192
    move-wide/from16 p12, v13

    .line 193
    .line 194
    move-wide/from16 p20, v15

    .line 195
    .line 196
    move-wide/from16 p22, v17

    .line 197
    .line 198
    invoke-static/range {p0 .. p23}, Landroidx/compose/material/ColorsKt;->d(JJJJJJJJJJJJ)Landroidx/compose/material/b;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0
.end method
