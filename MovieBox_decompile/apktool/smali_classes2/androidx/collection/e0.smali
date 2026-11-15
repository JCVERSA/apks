.class public final Landroidx/collection/e0;
.super Landroidx/collection/o;
.source "source.java"


# instance fields
.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/collection/o;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    const-string v0, "Capacity must be a positive value."

    .line 5
    invoke-static {v0}, Ln/d;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p1}, Landroidx/collection/v0;->g(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/e0;->o(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/e0;-><init>(I)V

    return-void
.end method

.method private final h()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/o;->d:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/o;->e:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x20

    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget v2, p0, Landroidx/collection/o;->d:I

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    invoke-static {v2, v3}, Lkotlin/ULong;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x19

    .line 29
    .line 30
    mul-long/2addr v2, v4

    .line 31
    invoke-static {v2, v3}, Lkotlin/ULong;->b(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v0, v1, v2, v3}, Landroidx/collection/b0;->a(JJ)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-gtz v0, :cond_0

    .line 40
    .line 41
    invoke-direct {p0}, Landroidx/collection/e0;->j()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Landroidx/collection/o;->d:I

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-direct {p0, v0}, Landroidx/collection/e0;->s(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private final j()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/o;->a:[J

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/o;->d:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/o;->b:[I

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/collection/v0;->a([JI)V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    move v7, v6

    .line 16
    const/4 v8, -0x1

    .line 17
    :goto_0
    if-eq v7, v2, :cond_5

    .line 18
    .line 19
    shr-int/lit8 v9, v7, 0x3

    .line 20
    .line 21
    aget-wide v10, v1, v9

    .line 22
    .line 23
    and-int/lit8 v12, v7, 0x7

    .line 24
    .line 25
    shl-int/lit8 v12, v12, 0x3

    .line 26
    .line 27
    shr-long/2addr v10, v12

    .line 28
    const-wide/16 v13, 0xff

    .line 29
    .line 30
    and-long/2addr v10, v13

    .line 31
    const-wide/16 v15, 0x80

    .line 32
    .line 33
    cmp-long v17, v10, v15

    .line 34
    .line 35
    if-nez v17, :cond_0

    .line 36
    .line 37
    add-int/lit8 v8, v7, 0x1

    .line 38
    .line 39
    move/from16 v28, v8

    .line 40
    .line 41
    move v8, v7

    .line 42
    move/from16 v7, v28

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-wide/16 v17, 0xfe

    .line 46
    .line 47
    cmp-long v10, v10, v17

    .line 48
    .line 49
    if-eqz v10, :cond_1

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    aget v10, v3, v7

    .line 55
    .line 56
    const v11, -0x3361d2af    # -8.2930312E7f

    .line 57
    .line 58
    .line 59
    mul-int/2addr v10, v11

    .line 60
    shl-int/lit8 v11, v10, 0x10

    .line 61
    .line 62
    xor-int/2addr v10, v11

    .line 63
    ushr-int/lit8 v11, v10, 0x7

    .line 64
    .line 65
    invoke-direct {v0, v11}, Landroidx/collection/e0;->l(I)I

    .line 66
    .line 67
    .line 68
    move-result v17

    .line 69
    and-int/2addr v11, v2

    .line 70
    sub-int v18, v17, v11

    .line 71
    .line 72
    and-int v18, v18, v2

    .line 73
    .line 74
    div-int/lit8 v5, v18, 0x8

    .line 75
    .line 76
    sub-int v11, v7, v11

    .line 77
    .line 78
    and-int/2addr v11, v2

    .line 79
    div-int/lit8 v11, v11, 0x8

    .line 80
    .line 81
    const-wide v19, 0xffffffffffffffL

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    const-wide/high16 v21, -0x8000000000000000L

    .line 87
    .line 88
    if-ne v5, v11, :cond_2

    .line 89
    .line 90
    and-int/lit8 v5, v10, 0x7f

    .line 91
    .line 92
    int-to-long v10, v5

    .line 93
    aget-wide v15, v1, v9

    .line 94
    .line 95
    shl-long/2addr v13, v12

    .line 96
    not-long v13, v13

    .line 97
    and-long/2addr v13, v15

    .line 98
    shl-long/2addr v10, v12

    .line 99
    or-long/2addr v10, v13

    .line 100
    aput-wide v10, v1, v9

    .line 101
    .line 102
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    aget-wide v9, v1, v6

    .line 107
    .line 108
    and-long v9, v9, v19

    .line 109
    .line 110
    or-long v9, v9, v21

    .line 111
    .line 112
    aput-wide v9, v1, v5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    shr-int/lit8 v5, v17, 0x3

    .line 116
    .line 117
    aget-wide v23, v1, v5

    .line 118
    .line 119
    and-int/lit8 v11, v17, 0x7

    .line 120
    .line 121
    shl-int/lit8 v11, v11, 0x3

    .line 122
    .line 123
    shr-long v25, v23, v11

    .line 124
    .line 125
    and-long v25, v25, v13

    .line 126
    .line 127
    cmp-long v18, v25, v15

    .line 128
    .line 129
    if-nez v18, :cond_3

    .line 130
    .line 131
    and-int/lit8 v8, v10, 0x7f

    .line 132
    .line 133
    move/from16 v25, v7

    .line 134
    .line 135
    int-to-long v6, v8

    .line 136
    move/from16 v26, v2

    .line 137
    .line 138
    move-object/from16 v27, v3

    .line 139
    .line 140
    shl-long v2, v13, v11

    .line 141
    .line 142
    not-long v2, v2

    .line 143
    and-long v2, v23, v2

    .line 144
    .line 145
    shl-long/2addr v6, v11

    .line 146
    or-long/2addr v2, v6

    .line 147
    aput-wide v2, v1, v5

    .line 148
    .line 149
    aget-wide v2, v1, v9

    .line 150
    .line 151
    shl-long v5, v13, v12

    .line 152
    .line 153
    not-long v5, v5

    .line 154
    and-long/2addr v2, v5

    .line 155
    shl-long v5, v15, v12

    .line 156
    .line 157
    or-long/2addr v2, v5

    .line 158
    aput-wide v2, v1, v9

    .line 159
    .line 160
    aget v2, v27, v25

    .line 161
    .line 162
    aput v2, v27, v17

    .line 163
    .line 164
    const/4 v2, 0x0

    .line 165
    aput v2, v27, v25

    .line 166
    .line 167
    aget-object v2, v4, v25

    .line 168
    .line 169
    aput-object v2, v4, v17

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    aput-object v2, v4, v25

    .line 173
    .line 174
    move/from16 v7, v25

    .line 175
    .line 176
    move v8, v7

    .line 177
    move/from16 v3, v26

    .line 178
    .line 179
    const/4 v2, -0x1

    .line 180
    goto :goto_3

    .line 181
    :cond_3
    move/from16 v26, v2

    .line 182
    .line 183
    move-object/from16 v27, v3

    .line 184
    .line 185
    move/from16 v25, v7

    .line 186
    .line 187
    and-int/lit8 v2, v10, 0x7f

    .line 188
    .line 189
    int-to-long v2, v2

    .line 190
    shl-long v6, v13, v11

    .line 191
    .line 192
    not-long v6, v6

    .line 193
    and-long v6, v23, v6

    .line 194
    .line 195
    shl-long/2addr v2, v11

    .line 196
    or-long/2addr v2, v6

    .line 197
    aput-wide v2, v1, v5

    .line 198
    .line 199
    const/4 v2, -0x1

    .line 200
    if-ne v8, v2, :cond_4

    .line 201
    .line 202
    add-int/lit8 v7, v25, 0x1

    .line 203
    .line 204
    move/from16 v3, v26

    .line 205
    .line 206
    invoke-static {v1, v7, v3}, Landroidx/collection/v0;->b([JII)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    goto :goto_2

    .line 211
    :cond_4
    move/from16 v3, v26

    .line 212
    .line 213
    :goto_2
    aget v5, v27, v17

    .line 214
    .line 215
    aput v5, v27, v8

    .line 216
    .line 217
    aget v5, v27, v25

    .line 218
    .line 219
    aput v5, v27, v17

    .line 220
    .line 221
    aget v5, v27, v8

    .line 222
    .line 223
    aput v5, v27, v25

    .line 224
    .line 225
    aget-object v5, v4, v17

    .line 226
    .line 227
    aput-object v5, v4, v8

    .line 228
    .line 229
    aget-object v5, v4, v25

    .line 230
    .line 231
    aput-object v5, v4, v17

    .line 232
    .line 233
    aget-object v5, v4, v8

    .line 234
    .line 235
    aput-object v5, v4, v25

    .line 236
    .line 237
    add-int/lit8 v7, v25, -0x1

    .line 238
    .line 239
    :goto_3
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    const/4 v6, 0x0

    .line 244
    aget-wide v9, v1, v6

    .line 245
    .line 246
    and-long v9, v9, v19

    .line 247
    .line 248
    or-long v9, v9, v21

    .line 249
    .line 250
    aput-wide v9, v1, v5

    .line 251
    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 253
    .line 254
    move v2, v3

    .line 255
    move-object/from16 v3, v27

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/e0;->m()V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method private final k(I)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, -0x3361d2af    # -8.2930312E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v2, v1

    .line 9
    shl-int/lit8 v3, v2, 0x10

    .line 10
    .line 11
    xor-int/2addr v2, v3

    .line 12
    ushr-int/lit8 v3, v2, 0x7

    .line 13
    .line 14
    and-int/lit8 v2, v2, 0x7f

    .line 15
    .line 16
    iget v4, v0, Landroidx/collection/o;->d:I

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    :goto_0
    iget-object v8, v0, Landroidx/collection/o;->a:[J

    .line 22
    .line 23
    shr-int/lit8 v9, v5, 0x3

    .line 24
    .line 25
    and-int/lit8 v10, v5, 0x7

    .line 26
    .line 27
    shl-int/lit8 v10, v10, 0x3

    .line 28
    .line 29
    aget-wide v11, v8, v9

    .line 30
    .line 31
    ushr-long/2addr v11, v10

    .line 32
    const/4 v13, 0x1

    .line 33
    add-int/2addr v9, v13

    .line 34
    aget-wide v14, v8, v9

    .line 35
    .line 36
    rsub-int/lit8 v8, v10, 0x40

    .line 37
    .line 38
    shl-long v8, v14, v8

    .line 39
    .line 40
    int-to-long v14, v10

    .line 41
    neg-long v14, v14

    .line 42
    const/16 v10, 0x3f

    .line 43
    .line 44
    shr-long/2addr v14, v10

    .line 45
    and-long/2addr v8, v14

    .line 46
    or-long/2addr v8, v11

    .line 47
    int-to-long v10, v2

    .line 48
    const-wide v14, 0x101010101010101L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-long v16, v10, v14

    .line 54
    .line 55
    move/from16 v18, v7

    .line 56
    .line 57
    xor-long v6, v8, v16

    .line 58
    .line 59
    sub-long v14, v6, v14

    .line 60
    .line 61
    not-long v6, v6

    .line 62
    and-long/2addr v6, v14

    .line 63
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr v6, v14

    .line 69
    :goto_1
    const-wide/16 v16, 0x0

    .line 70
    .line 71
    cmp-long v19, v6, v16

    .line 72
    .line 73
    if-eqz v19, :cond_1

    .line 74
    .line 75
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 76
    .line 77
    .line 78
    move-result v16

    .line 79
    shr-int/lit8 v16, v16, 0x3

    .line 80
    .line 81
    add-int v16, v5, v16

    .line 82
    .line 83
    and-int v16, v16, v4

    .line 84
    .line 85
    iget-object v12, v0, Landroidx/collection/o;->b:[I

    .line 86
    .line 87
    aget v12, v12, v16

    .line 88
    .line 89
    if-ne v12, v1, :cond_0

    .line 90
    .line 91
    return v16

    .line 92
    :cond_0
    const-wide/16 v16, 0x1

    .line 93
    .line 94
    sub-long v16, v6, v16

    .line 95
    .line 96
    and-long v6, v6, v16

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    not-long v6, v8

    .line 100
    const/4 v12, 0x6

    .line 101
    shl-long/2addr v6, v12

    .line 102
    and-long/2addr v6, v8

    .line 103
    and-long/2addr v6, v14

    .line 104
    cmp-long v6, v6, v16

    .line 105
    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    invoke-direct {v0, v3}, Landroidx/collection/e0;->l(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget v2, v0, Landroidx/collection/e0;->f:I

    .line 113
    .line 114
    const-wide/16 v4, 0xff

    .line 115
    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    iget-object v2, v0, Landroidx/collection/o;->a:[J

    .line 119
    .line 120
    shr-int/lit8 v6, v1, 0x3

    .line 121
    .line 122
    aget-wide v6, v2, v6

    .line 123
    .line 124
    and-int/lit8 v2, v1, 0x7

    .line 125
    .line 126
    shl-int/lit8 v2, v2, 0x3

    .line 127
    .line 128
    shr-long/2addr v6, v2

    .line 129
    and-long/2addr v6, v4

    .line 130
    const-wide/16 v8, 0xfe

    .line 131
    .line 132
    cmp-long v2, v6, v8

    .line 133
    .line 134
    if-nez v2, :cond_2

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/collection/e0;->h()V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v3}, Landroidx/collection/e0;->l(I)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/o;->e:I

    .line 145
    .line 146
    add-int/2addr v2, v13

    .line 147
    iput v2, v0, Landroidx/collection/o;->e:I

    .line 148
    .line 149
    iget v2, v0, Landroidx/collection/e0;->f:I

    .line 150
    .line 151
    iget-object v3, v0, Landroidx/collection/o;->a:[J

    .line 152
    .line 153
    shr-int/lit8 v6, v1, 0x3

    .line 154
    .line 155
    aget-wide v7, v3, v6

    .line 156
    .line 157
    and-int/lit8 v9, v1, 0x7

    .line 158
    .line 159
    shl-int/lit8 v9, v9, 0x3

    .line 160
    .line 161
    shr-long v14, v7, v9

    .line 162
    .line 163
    and-long/2addr v14, v4

    .line 164
    const-wide/16 v16, 0x80

    .line 165
    .line 166
    cmp-long v12, v14, v16

    .line 167
    .line 168
    if-nez v12, :cond_4

    .line 169
    .line 170
    move/from16 v19, v13

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    const/16 v19, 0x0

    .line 174
    .line 175
    :goto_3
    sub-int v2, v2, v19

    .line 176
    .line 177
    iput v2, v0, Landroidx/collection/e0;->f:I

    .line 178
    .line 179
    iget v2, v0, Landroidx/collection/o;->d:I

    .line 180
    .line 181
    shl-long/2addr v4, v9

    .line 182
    not-long v4, v4

    .line 183
    and-long/2addr v4, v7

    .line 184
    shl-long v7, v10, v9

    .line 185
    .line 186
    or-long/2addr v4, v7

    .line 187
    aput-wide v4, v3, v6

    .line 188
    .line 189
    add-int/lit8 v6, v1, -0x7

    .line 190
    .line 191
    and-int/2addr v6, v2

    .line 192
    and-int/lit8 v2, v2, 0x7

    .line 193
    .line 194
    add-int/2addr v6, v2

    .line 195
    shr-int/lit8 v2, v6, 0x3

    .line 196
    .line 197
    aput-wide v4, v3, v2

    .line 198
    .line 199
    return v1

    .line 200
    :cond_5
    add-int/lit8 v7, v18, 0x8

    .line 201
    .line 202
    add-int/2addr v5, v7

    .line 203
    and-int/2addr v5, v4

    .line 204
    goto/16 :goto_0
.end method

.method private final l(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/o;->d:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/o;->a:[J

    .line 6
    .line 7
    shr-int/lit8 v3, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v4, p1, 0x7

    .line 10
    .line 11
    shl-int/lit8 v4, v4, 0x3

    .line 12
    .line 13
    aget-wide v5, v2, v3

    .line 14
    .line 15
    ushr-long/2addr v5, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    aget-wide v7, v2, v3

    .line 19
    .line 20
    rsub-int/lit8 v2, v4, 0x40

    .line 21
    .line 22
    shl-long v2, v7, v2

    .line 23
    .line 24
    int-to-long v7, v4

    .line 25
    neg-long v7, v7

    .line 26
    const/16 v4, 0x3f

    .line 27
    .line 28
    shr-long/2addr v7, v4

    .line 29
    and-long/2addr v2, v7

    .line 30
    or-long/2addr v2, v5

    .line 31
    not-long v4, v2

    .line 32
    const/4 v6, 0x7

    .line 33
    shl-long/2addr v4, v6

    .line 34
    and-long/2addr v2, v4

    .line 35
    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v2, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v4, v2, v4

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    shr-int/lit8 v1, v1, 0x3

    .line 52
    .line 53
    add-int/2addr p1, v1

    .line 54
    and-int/2addr p1, v0

    .line 55
    return p1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 57
    .line 58
    add-int/2addr p1, v1

    .line 59
    and-int/2addr p1, v0

    .line 60
    goto :goto_0
.end method

.method private final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/o;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/collection/v0;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/collection/o;->e:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/e0;->f:I

    .line 13
    .line 14
    return-void
.end method

.method private final n(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/collection/v0;->a:[J

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    add-int/lit8 v0, p1, 0xf

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x8

    .line 9
    .line 10
    shr-int/lit8 v0, v0, 0x3

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    const/4 v6, 0x6

    .line 15
    const/4 v7, 0x0

    .line 16
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->x([JJIIILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iput-object v0, p0, Landroidx/collection/o;->a:[J

    .line 28
    .line 29
    shr-int/lit8 v1, p1, 0x3

    .line 30
    .line 31
    and-int/lit8 p1, p1, 0x7

    .line 32
    .line 33
    shl-int/lit8 p1, p1, 0x3

    .line 34
    .line 35
    aget-wide v2, v0, v1

    .line 36
    .line 37
    const-wide/16 v4, 0xff

    .line 38
    .line 39
    shl-long/2addr v4, p1

    .line 40
    not-long v6, v4

    .line 41
    and-long/2addr v2, v6

    .line 42
    or-long/2addr v2, v4

    .line 43
    aput-wide v2, v0, v1

    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/collection/e0;->m()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final o(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-static {p1}, Landroidx/collection/v0;->f(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput p1, p0, Landroidx/collection/o;->d:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/e0;->n(I)V

    .line 17
    .line 18
    .line 19
    new-array v0, p1, [I

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/collection/o;->b:[I

    .line 22
    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method private final s(I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/o;->a:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/o;->b:[I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, v0, Landroidx/collection/o;->d:I

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Landroidx/collection/e0;->o(I)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/o;->a:[J

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/collection/o;->b:[I

    .line 17
    .line 18
    iget-object v7, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v8, v0, Landroidx/collection/o;->d:I

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    :goto_0
    if-ge v9, v4, :cond_1

    .line 24
    .line 25
    shr-int/lit8 v10, v9, 0x3

    .line 26
    .line 27
    aget-wide v10, v1, v10

    .line 28
    .line 29
    and-int/lit8 v12, v9, 0x7

    .line 30
    .line 31
    shl-int/lit8 v12, v12, 0x3

    .line 32
    .line 33
    shr-long/2addr v10, v12

    .line 34
    const-wide/16 v12, 0xff

    .line 35
    .line 36
    and-long/2addr v10, v12

    .line 37
    const-wide/16 v14, 0x80

    .line 38
    .line 39
    cmp-long v10, v10, v14

    .line 40
    .line 41
    if-gez v10, :cond_0

    .line 42
    .line 43
    aget v10, v2, v9

    .line 44
    .line 45
    const v11, -0x3361d2af    # -8.2930312E7f

    .line 46
    .line 47
    .line 48
    mul-int/2addr v11, v10

    .line 49
    shl-int/lit8 v14, v11, 0x10

    .line 50
    .line 51
    xor-int/2addr v11, v14

    .line 52
    ushr-int/lit8 v14, v11, 0x7

    .line 53
    .line 54
    invoke-direct {v0, v14}, Landroidx/collection/e0;->l(I)I

    .line 55
    .line 56
    .line 57
    move-result v14

    .line 58
    and-int/lit8 v11, v11, 0x7f

    .line 59
    .line 60
    int-to-long v12, v11

    .line 61
    shr-int/lit8 v11, v14, 0x3

    .line 62
    .line 63
    and-int/lit8 v17, v14, 0x7

    .line 64
    .line 65
    shl-int/lit8 v17, v17, 0x3

    .line 66
    .line 67
    aget-wide v18, v5, v11

    .line 68
    .line 69
    move-object/from16 v20, v1

    .line 70
    .line 71
    const-wide/16 v15, 0xff

    .line 72
    .line 73
    shl-long v0, v15, v17

    .line 74
    .line 75
    not-long v0, v0

    .line 76
    and-long v0, v18, v0

    .line 77
    .line 78
    shl-long v12, v12, v17

    .line 79
    .line 80
    or-long/2addr v0, v12

    .line 81
    aput-wide v0, v5, v11

    .line 82
    .line 83
    add-int/lit8 v11, v14, -0x7

    .line 84
    .line 85
    and-int/2addr v11, v8

    .line 86
    and-int/lit8 v12, v8, 0x7

    .line 87
    .line 88
    add-int/2addr v11, v12

    .line 89
    shr-int/lit8 v11, v11, 0x3

    .line 90
    .line 91
    aput-wide v0, v5, v11

    .line 92
    .line 93
    aput v10, v6, v14

    .line 94
    .line 95
    aget-object v0, v3, v9

    .line 96
    .line 97
    aput-object v0, v7, v14

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move-object/from16 v20, v1

    .line 101
    .line 102
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 103
    .line 104
    move-object/from16 v0, p0

    .line 105
    .line 106
    move-object/from16 v1, v20

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/o;->e:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/o;->a:[J

    .line 5
    .line 6
    sget-object v2, Landroidx/collection/v0;->a:[J

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v6, 0x6

    .line 11
    const/4 v7, 0x0

    .line 12
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->x([JJIIILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/collection/o;->a:[J

    .line 23
    .line 24
    iget v2, p0, Landroidx/collection/o;->d:I

    .line 25
    .line 26
    shr-int/lit8 v3, v2, 0x3

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x7

    .line 29
    .line 30
    shl-int/lit8 v2, v2, 0x3

    .line 31
    .line 32
    aget-wide v4, v1, v3

    .line 33
    .line 34
    const-wide/16 v6, 0xff

    .line 35
    .line 36
    shl-long/2addr v6, v2

    .line 37
    not-long v8, v6

    .line 38
    and-long/2addr v4, v8

    .line 39
    or-long/2addr v4, v6

    .line 40
    aput-wide v4, v1, v3

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iget v3, p0, Landroidx/collection/o;->d:I

    .line 46
    .line 47
    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->u([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroidx/collection/e0;->m()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final p(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/collection/e0;->k(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v2, v1, v0

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/collection/o;->b:[I

    .line 10
    .line 11
    aput p1, v3, v0

    .line 12
    .line 13
    aput-object p2, v1, v0

    .line 14
    .line 15
    return-object v2
.end method

.method public final q(I)Ljava/lang/Object;
    .locals 13

    .line 1
    const v0, -0x3361d2af    # -8.2930312E7f

    .line 2
    .line 3
    .line 4
    mul-int/2addr v0, p1

    .line 5
    shl-int/lit8 v1, v0, 0x10

    .line 6
    .line 7
    xor-int/2addr v0, v1

    .line 8
    and-int/lit8 v1, v0, 0x7f

    .line 9
    .line 10
    iget v2, p0, Landroidx/collection/o;->d:I

    .line 11
    .line 12
    ushr-int/lit8 v0, v0, 0x7

    .line 13
    .line 14
    and-int/2addr v0, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v4, p0, Landroidx/collection/o;->a:[J

    .line 17
    .line 18
    shr-int/lit8 v5, v0, 0x3

    .line 19
    .line 20
    and-int/lit8 v6, v0, 0x7

    .line 21
    .line 22
    shl-int/lit8 v6, v6, 0x3

    .line 23
    .line 24
    aget-wide v7, v4, v5

    .line 25
    .line 26
    ushr-long/2addr v7, v6

    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    aget-wide v9, v4, v5

    .line 30
    .line 31
    rsub-int/lit8 v4, v6, 0x40

    .line 32
    .line 33
    shl-long v4, v9, v4

    .line 34
    .line 35
    int-to-long v9, v6

    .line 36
    neg-long v9, v9

    .line 37
    const/16 v6, 0x3f

    .line 38
    .line 39
    shr-long/2addr v9, v6

    .line 40
    and-long/2addr v4, v9

    .line 41
    or-long/2addr v4, v7

    .line 42
    int-to-long v6, v1

    .line 43
    const-wide v8, 0x101010101010101L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    mul-long/2addr v6, v8

    .line 49
    xor-long/2addr v6, v4

    .line 50
    sub-long v8, v6, v8

    .line 51
    .line 52
    not-long v6, v6

    .line 53
    and-long/2addr v6, v8

    .line 54
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v6, v8

    .line 60
    :goto_1
    const-wide/16 v10, 0x0

    .line 61
    .line 62
    cmp-long v12, v6, v10

    .line 63
    .line 64
    if-eqz v12, :cond_1

    .line 65
    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    shr-int/lit8 v10, v10, 0x3

    .line 71
    .line 72
    add-int/2addr v10, v0

    .line 73
    and-int/2addr v10, v2

    .line 74
    iget-object v11, p0, Landroidx/collection/o;->b:[I

    .line 75
    .line 76
    aget v11, v11, v10

    .line 77
    .line 78
    if-ne v11, p1, :cond_0

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_0
    const-wide/16 v10, 0x1

    .line 82
    .line 83
    sub-long v10, v6, v10

    .line 84
    .line 85
    and-long/2addr v6, v10

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    not-long v6, v4

    .line 88
    const/4 v12, 0x6

    .line 89
    shl-long/2addr v6, v12

    .line 90
    and-long/2addr v4, v6

    .line 91
    and-long/2addr v4, v8

    .line 92
    cmp-long v4, v4, v10

    .line 93
    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    const/4 v10, -0x1

    .line 97
    :goto_2
    if-ltz v10, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0, v10}, Landroidx/collection/e0;->r(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_2
    const/4 p1, 0x0

    .line 105
    return-object p1

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 107
    .line 108
    add-int/2addr v0, v3

    .line 109
    and-int/2addr v0, v2

    .line 110
    goto :goto_0
.end method

.method public final r(I)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/collection/o;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/o;->e:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/o;->a:[J

    .line 8
    .line 9
    iget v1, p0, Landroidx/collection/o;->d:I

    .line 10
    .line 11
    shr-int/lit8 v2, p1, 0x3

    .line 12
    .line 13
    and-int/lit8 v3, p1, 0x7

    .line 14
    .line 15
    shl-int/lit8 v3, v3, 0x3

    .line 16
    .line 17
    aget-wide v4, v0, v2

    .line 18
    .line 19
    const-wide/16 v6, 0xff

    .line 20
    .line 21
    shl-long/2addr v6, v3

    .line 22
    not-long v6, v6

    .line 23
    and-long/2addr v4, v6

    .line 24
    const-wide/16 v6, 0xfe

    .line 25
    .line 26
    shl-long/2addr v6, v3

    .line 27
    or-long v3, v4, v6

    .line 28
    .line 29
    aput-wide v3, v0, v2

    .line 30
    .line 31
    add-int/lit8 v2, p1, -0x7

    .line 32
    .line 33
    and-int/2addr v2, v1

    .line 34
    and-int/lit8 v1, v1, 0x7

    .line 35
    .line 36
    add-int/2addr v2, v1

    .line 37
    shr-int/lit8 v1, v2, 0x3

    .line 38
    .line 39
    aput-wide v3, v0, v1

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 42
    .line 43
    aget-object v1, v0, p1

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aput-object v2, v0, p1

    .line 47
    .line 48
    return-object v1
.end method

.method public final t(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/collection/e0;->k(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/collection/o;->b:[I

    .line 6
    .line 7
    aput p1, v1, v0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 10
    .line 11
    aput-object p2, p1, v0

    .line 12
    .line 13
    return-void
.end method
