.class public abstract Landroidx/compose/ui/graphics/vector/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    sput-object v0, Landroidx/compose/ui/graphics/vector/h;->a:[F

    .line 5
    .line 6
    return-void
.end method

.method private static final a(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V
    .locals 48

    .line 1
    move-wide/from16 v0, p5

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    int-to-double v2, v2

    .line 5
    mul-double v4, p17, v2

    .line 6
    .line 7
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    div-double/2addr v4, v6

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    double-to-int v4, v4

    .line 22
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v11

    .line 38
    neg-double v13, v0

    .line 39
    mul-double v15, v13, v5

    .line 40
    .line 41
    mul-double v17, v15, v11

    .line 42
    .line 43
    mul-double v19, p7, v7

    .line 44
    .line 45
    mul-double v21, v19, v9

    .line 46
    .line 47
    sub-double v17, v17, v21

    .line 48
    .line 49
    mul-double/2addr v13, v7

    .line 50
    mul-double/2addr v11, v13

    .line 51
    mul-double v21, p7, v5

    .line 52
    .line 53
    mul-double v9, v9, v21

    .line 54
    .line 55
    add-double/2addr v11, v9

    .line 56
    int-to-double v9, v4

    .line 57
    div-double v9, p17, v9

    .line 58
    .line 59
    const/16 v23, 0x0

    .line 60
    .line 61
    move-wide/from16 p7, p9

    .line 62
    .line 63
    move-wide/from16 v25, v11

    .line 64
    .line 65
    move-wide/from16 v27, v17

    .line 66
    .line 67
    move/from16 v11, v23

    .line 68
    .line 69
    move-wide/from16 v17, p11

    .line 70
    .line 71
    move-wide/from16 v23, p15

    .line 72
    .line 73
    :goto_0
    if-ge v11, v4, :cond_0

    .line 74
    .line 75
    add-double v29, v23, v9

    .line 76
    .line 77
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v31

    .line 81
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v33

    .line 85
    mul-double v35, v0, v5

    .line 86
    .line 87
    mul-double v35, v35, v33

    .line 88
    .line 89
    add-double v35, p1, v35

    .line 90
    .line 91
    mul-double v37, v19, v31

    .line 92
    .line 93
    move v12, v4

    .line 94
    move-wide/from16 v39, v5

    .line 95
    .line 96
    sub-double v4, v35, v37

    .line 97
    .line 98
    mul-double v35, v0, v7

    .line 99
    .line 100
    mul-double v35, v35, v33

    .line 101
    .line 102
    add-double v35, p3, v35

    .line 103
    .line 104
    mul-double v37, v21, v31

    .line 105
    .line 106
    add-double v0, v35, v37

    .line 107
    .line 108
    mul-double v35, v15, v31

    .line 109
    .line 110
    mul-double v37, v19, v33

    .line 111
    .line 112
    sub-double v35, v35, v37

    .line 113
    .line 114
    mul-double v31, v31, v13

    .line 115
    .line 116
    mul-double v33, v33, v21

    .line 117
    .line 118
    add-double v31, v31, v33

    .line 119
    .line 120
    sub-double v23, v29, v23

    .line 121
    .line 122
    const/4 v6, 0x2

    .line 123
    move-wide/from16 p13, v7

    .line 124
    .line 125
    int-to-double v6, v6

    .line 126
    div-double v6, v23, v6

    .line 127
    .line 128
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v23

    .line 136
    const-wide/high16 v33, 0x4008000000000000L    # 3.0

    .line 137
    .line 138
    mul-double v33, v33, v6

    .line 139
    .line 140
    mul-double v33, v33, v6

    .line 141
    .line 142
    add-double v33, v2, v33

    .line 143
    .line 144
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    const/4 v8, 0x1

    .line 149
    move-wide/from16 v33, v2

    .line 150
    .line 151
    int-to-double v2, v8

    .line 152
    sub-double/2addr v6, v2

    .line 153
    mul-double v23, v23, v6

    .line 154
    .line 155
    const/4 v2, 0x3

    .line 156
    int-to-double v2, v2

    .line 157
    div-double v23, v23, v2

    .line 158
    .line 159
    mul-double v27, v27, v23

    .line 160
    .line 161
    move-wide/from16 v2, p7

    .line 162
    .line 163
    add-double v2, v2, v27

    .line 164
    .line 165
    mul-double v25, v25, v23

    .line 166
    .line 167
    add-double v6, v17, v25

    .line 168
    .line 169
    mul-double v17, v23, v35

    .line 170
    .line 171
    move-wide/from16 p7, v9

    .line 172
    .line 173
    sub-double v8, v4, v17

    .line 174
    .line 175
    mul-double v23, v23, v31

    .line 176
    .line 177
    move/from16 p9, v12

    .line 178
    .line 179
    move-wide/from16 v17, v13

    .line 180
    .line 181
    sub-double v12, v0, v23

    .line 182
    .line 183
    double-to-float v2, v2

    .line 184
    double-to-float v3, v6

    .line 185
    double-to-float v6, v8

    .line 186
    double-to-float v7, v12

    .line 187
    double-to-float v8, v4

    .line 188
    double-to-float v9, v0

    .line 189
    move-object/from16 v41, p0

    .line 190
    .line 191
    move/from16 v42, v2

    .line 192
    .line 193
    move/from16 v43, v3

    .line 194
    .line 195
    move/from16 v44, v6

    .line 196
    .line 197
    move/from16 v45, v7

    .line 198
    .line 199
    move/from16 v46, v8

    .line 200
    .line 201
    move/from16 v47, v9

    .line 202
    .line 203
    invoke-interface/range {v41 .. v47}, Landroidx/compose/ui/graphics/Path;->k(FFFFFF)V

    .line 204
    .line 205
    .line 206
    add-int/lit8 v11, v11, 0x1

    .line 207
    .line 208
    move-wide/from16 v9, p7

    .line 209
    .line 210
    move-wide/from16 v7, p13

    .line 211
    .line 212
    move-wide/from16 p7, v4

    .line 213
    .line 214
    move-wide/from16 v13, v17

    .line 215
    .line 216
    move-wide/from16 v23, v29

    .line 217
    .line 218
    move-wide/from16 v25, v31

    .line 219
    .line 220
    move-wide/from16 v2, v33

    .line 221
    .line 222
    move-wide/from16 v27, v35

    .line 223
    .line 224
    move-wide/from16 v5, v39

    .line 225
    .line 226
    move/from16 v4, p9

    .line 227
    .line 228
    move-wide/from16 v17, v0

    .line 229
    .line 230
    move-wide/from16 v0, p5

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_0
    return-void
.end method

.method private static final b(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 31

    .line 1
    move-wide/from16 v13, p1

    .line 2
    .line 3
    move-wide/from16 v5, p5

    .line 4
    .line 5
    const/16 v0, 0xb4

    .line 6
    .line 7
    int-to-double v0, v0

    .line 8
    div-double v0, p13, v0

    .line 9
    .line 10
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    mul-double v15, v0, v2

    .line 16
    .line 17
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    mul-double v0, v13, v3

    .line 26
    .line 27
    mul-double v9, p3, v7

    .line 28
    .line 29
    add-double/2addr v0, v9

    .line 30
    div-double v0, v0, p9

    .line 31
    .line 32
    neg-double v9, v13

    .line 33
    mul-double/2addr v9, v7

    .line 34
    mul-double v11, p3, v3

    .line 35
    .line 36
    add-double/2addr v9, v11

    .line 37
    div-double v9, v9, p11

    .line 38
    .line 39
    mul-double v11, v5, v3

    .line 40
    .line 41
    mul-double v17, p7, v7

    .line 42
    .line 43
    add-double v11, v11, v17

    .line 44
    .line 45
    div-double v11, v11, p9

    .line 46
    .line 47
    neg-double v13, v5

    .line 48
    mul-double/2addr v13, v7

    .line 49
    mul-double v17, p7, v3

    .line 50
    .line 51
    add-double v13, v13, v17

    .line 52
    .line 53
    div-double v13, v13, p11

    .line 54
    .line 55
    sub-double v17, v0, v11

    .line 56
    .line 57
    sub-double v19, v9, v13

    .line 58
    .line 59
    add-double v21, v0, v11

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    int-to-double v5, v2

    .line 63
    div-double v21, v21, v5

    .line 64
    .line 65
    add-double v23, v9, v13

    .line 66
    .line 67
    div-double v23, v23, v5

    .line 68
    .line 69
    mul-double v5, v17, v17

    .line 70
    .line 71
    mul-double v25, v19, v19

    .line 72
    .line 73
    add-double v5, v5, v25

    .line 74
    .line 75
    const-wide/16 v25, 0x0

    .line 76
    .line 77
    cmpg-double v2, v5, v25

    .line 78
    .line 79
    if-nez v2, :cond_0

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    .line 83
    .line 84
    div-double v27, v27, v5

    .line 85
    .line 86
    const-wide/high16 v29, 0x3fd0000000000000L    # 0.25

    .line 87
    .line 88
    sub-double v27, v27, v29

    .line 89
    .line 90
    cmpg-double v2, v27, v25

    .line 91
    .line 92
    if-gez v2, :cond_1

    .line 93
    .line 94
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    div-double/2addr v0, v2

    .line 104
    double-to-float v0, v0

    .line 105
    float-to-double v0, v0

    .line 106
    mul-double v9, p9, v0

    .line 107
    .line 108
    mul-double v11, p11, v0

    .line 109
    .line 110
    move-object/from16 v0, p0

    .line 111
    .line 112
    move-wide/from16 v1, p1

    .line 113
    .line 114
    move-wide/from16 v3, p3

    .line 115
    .line 116
    move-wide/from16 v5, p5

    .line 117
    .line 118
    move-wide/from16 v7, p7

    .line 119
    .line 120
    move-wide/from16 v13, p13

    .line 121
    .line 122
    move/from16 v15, p15

    .line 123
    .line 124
    move/from16 v16, p16

    .line 125
    .line 126
    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/vector/h;->b(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    mul-double v17, v17, v5

    .line 135
    .line 136
    mul-double v5, v5, v19

    .line 137
    .line 138
    move/from16 v2, p15

    .line 139
    .line 140
    move-wide/from16 v19, v15

    .line 141
    .line 142
    move/from16 v15, p16

    .line 143
    .line 144
    if-ne v2, v15, :cond_2

    .line 145
    .line 146
    sub-double v21, v21, v5

    .line 147
    .line 148
    add-double v23, v23, v17

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    add-double v21, v21, v5

    .line 152
    .line 153
    sub-double v23, v23, v17

    .line 154
    .line 155
    :goto_0
    sub-double v9, v9, v23

    .line 156
    .line 157
    sub-double v0, v0, v21

    .line 158
    .line 159
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 160
    .line 161
    .line 162
    move-result-wide v16

    .line 163
    sub-double v13, v13, v23

    .line 164
    .line 165
    sub-double v11, v11, v21

    .line 166
    .line 167
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    sub-double v0, v0, v16

    .line 172
    .line 173
    cmpl-double v2, v0, v25

    .line 174
    .line 175
    if-ltz v2, :cond_3

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    const/4 v5, 0x0

    .line 180
    :goto_1
    if-eq v15, v5, :cond_4

    .line 181
    .line 182
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    if-lez v2, :cond_5

    .line 188
    .line 189
    sub-double/2addr v0, v5

    .line 190
    :cond_4
    :goto_2
    move-wide/from16 v25, v0

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    add-double/2addr v0, v5

    .line 194
    goto :goto_2

    .line 195
    :goto_3
    mul-double v21, v21, p9

    .line 196
    .line 197
    mul-double v23, v23, p11

    .line 198
    .line 199
    mul-double v0, v21, v3

    .line 200
    .line 201
    mul-double v5, v23, v7

    .line 202
    .line 203
    sub-double v1, v0, v5

    .line 204
    .line 205
    mul-double v21, v21, v7

    .line 206
    .line 207
    mul-double v23, v23, v3

    .line 208
    .line 209
    add-double v3, v21, v23

    .line 210
    .line 211
    move-object/from16 v0, p0

    .line 212
    .line 213
    move-wide/from16 v5, p9

    .line 214
    .line 215
    move-wide/from16 v7, p11

    .line 216
    .line 217
    move-wide/from16 v9, p1

    .line 218
    .line 219
    move-wide/from16 v11, p3

    .line 220
    .line 221
    move-wide/from16 v13, v19

    .line 222
    .line 223
    move-wide/from16 v15, v16

    .line 224
    .line 225
    move-wide/from16 v17, v25

    .line 226
    .line 227
    invoke-static/range {v0 .. v18}, Landroidx/compose/ui/graphics/vector/h;->a(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public static final c(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->h()I

    move-result v1

    .line 2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->b()V

    .line 3
    invoke-interface {v14, v1}, Landroidx/compose/ui/graphics/Path;->e(I)V

    .line 4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/vector/e$b;->c:Landroidx/compose/ui/graphics/vector/e$b;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/e;

    .line 5
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v12, 0x0

    move v13, v2

    move v2, v12

    move v3, v2

    move v8, v3

    move v9, v8

    move/from16 v18, v9

    move/from16 v19, v18

    :goto_1
    if-ge v13, v15, :cond_18

    .line 6
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    move-object v10, v4

    check-cast v10, Landroidx/compose/ui/graphics/vector/e;

    .line 8
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$b;

    if-eqz v4, :cond_1

    .line 9
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->close()V

    move-object v0, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    move/from16 v2, v18

    move v8, v2

    move/from16 v3, v19

    move v9, v3

    goto/16 :goto_c

    .line 10
    :cond_1
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$n;

    if-eqz v4, :cond_2

    .line 11
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$n;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$n;->c()F

    move-result v4

    add-float/2addr v8, v4

    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$n;->d()F

    move-result v4

    add-float/2addr v9, v4

    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$n;->c()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$n;->d()F

    move-result v1

    invoke-interface {v14, v4, v1}, Landroidx/compose/ui/graphics/Path;->c(FF)V

    move/from16 v18, v8

    :goto_2
    move/from16 v19, v9

    :goto_3
    move-object v0, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    goto/16 :goto_c

    .line 14
    :cond_2
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$f;

    if-eqz v4, :cond_3

    .line 15
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$f;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$f;->c()F

    move-result v4

    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$f;->d()F

    move-result v5

    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$f;->c()F

    move-result v6

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$f;->d()F

    move-result v1

    invoke-interface {v14, v6, v1}, Landroidx/compose/ui/graphics/Path;->j(FF)V

    move v8, v4

    move/from16 v18, v8

    move v9, v5

    goto :goto_2

    .line 18
    :cond_3
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$m;

    if-eqz v4, :cond_4

    .line 19
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$m;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$m;->c()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$m;->d()F

    move-result v5

    invoke-interface {v14, v4, v5}, Landroidx/compose/ui/graphics/Path;->m(FF)V

    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$m;->c()F

    move-result v4

    add-float/2addr v8, v4

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$m;->d()F

    move-result v1

    :goto_4
    add-float/2addr v9, v1

    goto :goto_3

    .line 22
    :cond_4
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$e;

    if-eqz v4, :cond_5

    .line 23
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$e;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$e;->c()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$e;->d()F

    move-result v5

    invoke-interface {v14, v4, v5}, Landroidx/compose/ui/graphics/Path;->o(FF)V

    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$e;->c()F

    move-result v4

    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$e;->d()F

    move-result v1

    :goto_5
    move v9, v1

    move v8, v4

    goto :goto_3

    .line 26
    :cond_5
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$l;

    if-eqz v4, :cond_6

    .line 27
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$l;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$l;->c()F

    move-result v4

    invoke-interface {v14, v4, v12}, Landroidx/compose/ui/graphics/Path;->m(FF)V

    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$l;->c()F

    move-result v1

    add-float/2addr v8, v1

    goto :goto_3

    .line 29
    :cond_6
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$d;

    if-eqz v4, :cond_7

    .line 30
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$d;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$d;->c()F

    move-result v4

    invoke-interface {v14, v4, v9}, Landroidx/compose/ui/graphics/Path;->o(FF)V

    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$d;->c()F

    move-result v1

    move v8, v1

    goto/16 :goto_3

    .line 32
    :cond_7
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$r;

    if-eqz v4, :cond_8

    .line 33
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$r;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$r;->c()F

    move-result v4

    invoke-interface {v14, v12, v4}, Landroidx/compose/ui/graphics/Path;->m(FF)V

    .line 34
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$r;->c()F

    move-result v1

    goto :goto_4

    .line 35
    :cond_8
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$s;

    if-eqz v4, :cond_9

    .line 36
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$s;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$s;->c()F

    move-result v4

    invoke-interface {v14, v8, v4}, Landroidx/compose/ui/graphics/Path;->o(FF)V

    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$s;->c()F

    move-result v1

    move v9, v1

    goto/16 :goto_3

    .line 38
    :cond_9
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$k;

    if-eqz v4, :cond_a

    .line 39
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/graphics/vector/e$k;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->c()F

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->f()F

    move-result v3

    .line 40
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->d()F

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->g()F

    move-result v5

    .line 41
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->e()F

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->h()F

    move-result v7

    move-object/from16 v1, p1

    .line 42
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->d(FFFFFF)V

    .line 43
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->d()F

    move-result v1

    add-float/2addr v1, v8

    .line 44
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->g()F

    move-result v2

    add-float/2addr v2, v9

    .line 45
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->e()F

    move-result v3

    add-float/2addr v8, v3

    .line 46
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$k;->h()F

    move-result v3

    :goto_6
    add-float/2addr v9, v3

    move v3, v2

    move-object v0, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    :goto_7
    move v2, v1

    goto/16 :goto_c

    .line 47
    :cond_a
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$c;

    if-eqz v4, :cond_b

    .line 48
    move-object v8, v10

    check-cast v8, Landroidx/compose/ui/graphics/vector/e$c;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->c()F

    move-result v2

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->f()F

    move-result v3

    .line 49
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->d()F

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->g()F

    move-result v5

    .line 50
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->e()F

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->h()F

    move-result v7

    move-object/from16 v1, p1

    .line 51
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->k(FFFFFF)V

    .line 52
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->d()F

    move-result v1

    .line 53
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->g()F

    move-result v2

    .line 54
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->e()F

    move-result v3

    .line 55
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$c;->h()F

    move-result v4

    :goto_8
    move v8, v3

    move v9, v4

    move-object v0, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    move v3, v2

    goto :goto_7

    .line 56
    :cond_b
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$p;

    if-eqz v4, :cond_d

    .line 57
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    sub-float v1, v8, v2

    sub-float v2, v9, v3

    move v3, v2

    move v2, v1

    goto :goto_9

    :cond_c
    move v2, v12

    move v3, v2

    .line 58
    :goto_9
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/graphics/vector/e$p;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->c()F

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->e()F

    move-result v5

    .line 59
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->d()F

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->f()F

    move-result v7

    move-object/from16 v1, p1

    .line 60
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->d(FFFFFF)V

    .line 61
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->c()F

    move-result v1

    add-float/2addr v1, v8

    .line 62
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->e()F

    move-result v2

    add-float/2addr v2, v9

    .line 63
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->d()F

    move-result v3

    add-float/2addr v8, v3

    .line 64
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/e$p;->f()F

    move-result v3

    goto/16 :goto_6

    .line 65
    :cond_d
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$h;

    const/4 v5, 0x2

    if-eqz v4, :cond_f

    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    int-to-float v1, v5

    mul-float/2addr v8, v1

    sub-float/2addr v8, v2

    mul-float/2addr v1, v9

    sub-float/2addr v1, v3

    move v3, v1

    move v2, v8

    goto :goto_a

    :cond_e
    move v2, v8

    move v3, v9

    .line 67
    :goto_a
    move-object v8, v10

    check-cast v8, Landroidx/compose/ui/graphics/vector/e$h;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->c()F

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->e()F

    move-result v5

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->d()F

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->f()F

    move-result v7

    move-object/from16 v1, p1

    .line 68
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->k(FFFFFF)V

    .line 69
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->c()F

    move-result v1

    .line 70
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->e()F

    move-result v2

    .line 71
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->d()F

    move-result v3

    .line 72
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/e$h;->f()F

    move-result v4

    goto/16 :goto_8

    .line 73
    :cond_f
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$o;

    if-eqz v4, :cond_10

    .line 74
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$o;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->c()F

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->e()F

    move-result v3

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->d()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->f()F

    move-result v5

    invoke-interface {v14, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Path;->g(FFFF)V

    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->c()F

    move-result v2

    add-float/2addr v2, v8

    .line 76
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->e()F

    move-result v3

    add-float/2addr v3, v9

    .line 77
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->d()F

    move-result v4

    add-float/2addr v8, v4

    .line 78
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$o;->f()F

    move-result v1

    goto/16 :goto_4

    .line 79
    :cond_10
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$g;

    if-eqz v4, :cond_11

    .line 80
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$g;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->c()F

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->e()F

    move-result v3

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->d()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->f()F

    move-result v5

    invoke-interface {v14, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Path;->f(FFFF)V

    .line 81
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->c()F

    move-result v2

    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->e()F

    move-result v3

    .line 83
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->d()F

    move-result v4

    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$g;->f()F

    move-result v1

    goto/16 :goto_5

    .line 85
    :cond_11
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$q;

    if-eqz v4, :cond_13

    .line 86
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    sub-float v1, v8, v2

    sub-float v2, v9, v3

    goto :goto_b

    :cond_12
    move v1, v12

    move v2, v1

    .line 87
    :goto_b
    move-object v3, v10

    check-cast v3, Landroidx/compose/ui/graphics/vector/e$q;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/e$q;->c()F

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/e$q;->d()F

    move-result v5

    .line 88
    invoke-interface {v14, v1, v2, v4, v5}, Landroidx/compose/ui/graphics/Path;->g(FFFF)V

    add-float/2addr v1, v8

    add-float/2addr v2, v9

    .line 89
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/e$q;->c()F

    move-result v4

    add-float/2addr v8, v4

    .line 90
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/e$q;->d()F

    move-result v3

    goto/16 :goto_6

    .line 91
    :cond_13
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/e$i;

    if-eqz v4, :cond_15

    .line 92
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    int-to-float v1, v5

    mul-float/2addr v8, v1

    sub-float/2addr v8, v2

    mul-float/2addr v1, v9

    sub-float v9, v1, v3

    .line 93
    :cond_14
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$i;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$i;->c()F

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$i;->d()F

    move-result v3

    .line 94
    invoke-interface {v14, v8, v9, v2, v3}, Landroidx/compose/ui/graphics/Path;->f(FFFF)V

    .line 95
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$i;->c()F

    move-result v2

    .line 96
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$i;->d()F

    move-result v1

    move v3, v9

    move-object v0, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    move v9, v1

    move/from16 v25, v8

    move v8, v2

    move/from16 v2, v25

    goto/16 :goto_c

    .line 97
    :cond_15
    instance-of v1, v10, Landroidx/compose/ui/graphics/vector/e$j;

    if-eqz v1, :cond_16

    .line 98
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/e$j;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->c()F

    move-result v2

    add-float v11, v2, v8

    .line 99
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->d()F

    move-result v2

    add-float v6, v2, v9

    float-to-double v2, v8

    float-to-double v4, v9

    float-to-double v7, v11

    move v9, v6

    move-wide v6, v7

    move/from16 v17, v13

    float-to-double v12, v9

    move/from16 v20, v9

    move-wide v8, v12

    .line 100
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->e()F

    move-result v12

    float-to-double v12, v12

    move-object v0, v10

    move/from16 v21, v11

    move-wide v10, v12

    .line 101
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->g()F

    move-result v12

    float-to-double v12, v12

    move/from16 v23, v17

    const/16 v22, 0x0

    .line 102
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->f()F

    move-result v14

    move/from16 v16, v15

    float-to-double v14, v14

    move/from16 v24, v16

    .line 103
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->h()Z

    move-result v16

    .line 104
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/e$j;->i()Z

    move-result v17

    move-object/from16 v1, p1

    .line 105
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/h;->b(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    move/from16 v3, v20

    move v9, v3

    move/from16 v2, v21

    move v8, v2

    goto :goto_c

    :cond_16
    move-object v0, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v15

    .line 106
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/e$a;

    if-eqz v1, :cond_17

    float-to-double v2, v8

    float-to-double v4, v9

    .line 107
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/graphics/vector/e$a;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->c()F

    move-result v1

    float-to-double v6, v1

    .line 108
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->d()F

    move-result v1

    float-to-double v8, v1

    .line 109
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->e()F

    move-result v1

    float-to-double v10, v1

    .line 110
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->g()F

    move-result v1

    float-to-double v12, v1

    .line 111
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->f()F

    move-result v1

    float-to-double v14, v1

    .line 112
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->h()Z

    move-result v16

    .line 113
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->i()Z

    move-result v17

    move-object/from16 v1, p1

    .line 114
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/h;->b(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    .line 115
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->c()F

    move-result v1

    .line 116
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/e$a;->d()F

    move-result v2

    move v8, v1

    move v3, v2

    move v9, v3

    move v2, v8

    :cond_17
    :goto_c
    add-int/lit8 v13, v23, 0x1

    move-object/from16 v14, p1

    move-object v1, v0

    move/from16 v12, v22

    move/from16 v15, v24

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_18
    return-object p1
.end method
