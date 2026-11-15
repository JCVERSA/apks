.class public final Landroidx/collection/h0;
.super Landroidx/collection/u;
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

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/h0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/collection/u;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct {p0, p1}, Landroidx/collection/h0;->m(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/h0;-><init>(I)V

    return-void
.end method

.method private final f()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/u;->d:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/u;->e:I

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
    iget v2, p0, Landroidx/collection/u;->d:I

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
    invoke-direct {p0}, Landroidx/collection/h0;->h()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Landroidx/collection/u;->d:I

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-direct {p0, v0}, Landroidx/collection/h0;->n(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private final h()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/u;->a:[J

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/u;->d:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/u;->b:[J

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/collection/u;->c:[Ljava/lang/Object;

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
    aget-wide v10, v3, v7

    .line 55
    .line 56
    invoke-static {v10, v11}, Landroidx/collection/s;->a(J)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const v11, -0x3361d2af    # -8.2930312E7f

    .line 61
    .line 62
    .line 63
    mul-int/2addr v10, v11

    .line 64
    shl-int/lit8 v11, v10, 0x10

    .line 65
    .line 66
    xor-int/2addr v10, v11

    .line 67
    ushr-int/lit8 v11, v10, 0x7

    .line 68
    .line 69
    invoke-direct {v0, v11}, Landroidx/collection/h0;->j(I)I

    .line 70
    .line 71
    .line 72
    move-result v17

    .line 73
    and-int/2addr v11, v2

    .line 74
    sub-int v18, v17, v11

    .line 75
    .line 76
    and-int v18, v18, v2

    .line 77
    .line 78
    div-int/lit8 v5, v18, 0x8

    .line 79
    .line 80
    sub-int v11, v7, v11

    .line 81
    .line 82
    and-int/2addr v11, v2

    .line 83
    div-int/lit8 v11, v11, 0x8

    .line 84
    .line 85
    const-wide v19, 0xffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const-wide/high16 v21, -0x8000000000000000L

    .line 91
    .line 92
    if-ne v5, v11, :cond_2

    .line 93
    .line 94
    and-int/lit8 v5, v10, 0x7f

    .line 95
    .line 96
    int-to-long v10, v5

    .line 97
    aget-wide v15, v1, v9

    .line 98
    .line 99
    shl-long/2addr v13, v12

    .line 100
    not-long v13, v13

    .line 101
    and-long/2addr v13, v15

    .line 102
    shl-long/2addr v10, v12

    .line 103
    or-long/2addr v10, v13

    .line 104
    aput-wide v10, v1, v9

    .line 105
    .line 106
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    aget-wide v9, v1, v6

    .line 111
    .line 112
    and-long v9, v9, v19

    .line 113
    .line 114
    or-long v9, v9, v21

    .line 115
    .line 116
    aput-wide v9, v1, v5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    shr-int/lit8 v5, v17, 0x3

    .line 120
    .line 121
    aget-wide v23, v1, v5

    .line 122
    .line 123
    and-int/lit8 v11, v17, 0x7

    .line 124
    .line 125
    shl-int/lit8 v11, v11, 0x3

    .line 126
    .line 127
    shr-long v25, v23, v11

    .line 128
    .line 129
    and-long v25, v25, v13

    .line 130
    .line 131
    cmp-long v18, v25, v15

    .line 132
    .line 133
    if-nez v18, :cond_3

    .line 134
    .line 135
    and-int/lit8 v8, v10, 0x7f

    .line 136
    .line 137
    move/from16 v25, v7

    .line 138
    .line 139
    int-to-long v6, v8

    .line 140
    move/from16 v26, v2

    .line 141
    .line 142
    move-object/from16 v27, v3

    .line 143
    .line 144
    shl-long v2, v13, v11

    .line 145
    .line 146
    not-long v2, v2

    .line 147
    and-long v2, v23, v2

    .line 148
    .line 149
    shl-long/2addr v6, v11

    .line 150
    or-long/2addr v2, v6

    .line 151
    aput-wide v2, v1, v5

    .line 152
    .line 153
    aget-wide v2, v1, v9

    .line 154
    .line 155
    shl-long v5, v13, v12

    .line 156
    .line 157
    not-long v5, v5

    .line 158
    and-long/2addr v2, v5

    .line 159
    shl-long v5, v15, v12

    .line 160
    .line 161
    or-long/2addr v2, v5

    .line 162
    aput-wide v2, v1, v9

    .line 163
    .line 164
    aget-wide v2, v27, v25

    .line 165
    .line 166
    aput-wide v2, v27, v17

    .line 167
    .line 168
    const-wide/16 v2, 0x0

    .line 169
    .line 170
    aput-wide v2, v27, v25

    .line 171
    .line 172
    aget-object v2, v4, v25

    .line 173
    .line 174
    aput-object v2, v4, v17

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    aput-object v2, v4, v25

    .line 178
    .line 179
    move/from16 v7, v25

    .line 180
    .line 181
    move v8, v7

    .line 182
    move/from16 v3, v26

    .line 183
    .line 184
    const/4 v2, -0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_3
    move/from16 v26, v2

    .line 187
    .line 188
    move-object/from16 v27, v3

    .line 189
    .line 190
    move/from16 v25, v7

    .line 191
    .line 192
    and-int/lit8 v2, v10, 0x7f

    .line 193
    .line 194
    int-to-long v2, v2

    .line 195
    shl-long v6, v13, v11

    .line 196
    .line 197
    not-long v6, v6

    .line 198
    and-long v6, v23, v6

    .line 199
    .line 200
    shl-long/2addr v2, v11

    .line 201
    or-long/2addr v2, v6

    .line 202
    aput-wide v2, v1, v5

    .line 203
    .line 204
    const/4 v2, -0x1

    .line 205
    if-ne v8, v2, :cond_4

    .line 206
    .line 207
    add-int/lit8 v7, v25, 0x1

    .line 208
    .line 209
    move/from16 v3, v26

    .line 210
    .line 211
    invoke-static {v1, v7, v3}, Landroidx/collection/v0;->b([JII)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    goto :goto_2

    .line 216
    :cond_4
    move/from16 v3, v26

    .line 217
    .line 218
    :goto_2
    aget-wide v5, v27, v17

    .line 219
    .line 220
    aput-wide v5, v27, v8

    .line 221
    .line 222
    aget-wide v5, v27, v25

    .line 223
    .line 224
    aput-wide v5, v27, v17

    .line 225
    .line 226
    aget-wide v5, v27, v8

    .line 227
    .line 228
    aput-wide v5, v27, v25

    .line 229
    .line 230
    aget-object v5, v4, v17

    .line 231
    .line 232
    aput-object v5, v4, v8

    .line 233
    .line 234
    aget-object v5, v4, v25

    .line 235
    .line 236
    aput-object v5, v4, v17

    .line 237
    .line 238
    aget-object v5, v4, v8

    .line 239
    .line 240
    aput-object v5, v4, v25

    .line 241
    .line 242
    add-int/lit8 v7, v25, -0x1

    .line 243
    .line 244
    :goto_3
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    const/4 v6, 0x0

    .line 249
    aget-wide v9, v1, v6

    .line 250
    .line 251
    and-long v9, v9, v19

    .line 252
    .line 253
    or-long v9, v9, v21

    .line 254
    .line 255
    aput-wide v9, v1, v5

    .line 256
    .line 257
    add-int/lit8 v7, v7, 0x1

    .line 258
    .line 259
    move v2, v3

    .line 260
    move-object/from16 v3, v27

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/h0;->k()V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method private final i(J)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p2}, Landroidx/collection/s;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, -0x3361d2af    # -8.2930312E7f

    .line 8
    .line 9
    .line 10
    mul-int/2addr v1, v2

    .line 11
    shl-int/lit8 v2, v1, 0x10

    .line 12
    .line 13
    xor-int/2addr v1, v2

    .line 14
    ushr-int/lit8 v2, v1, 0x7

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0x7f

    .line 17
    .line 18
    iget v3, v0, Landroidx/collection/u;->d:I

    .line 19
    .line 20
    and-int v4, v2, v3

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    iget-object v7, v0, Landroidx/collection/u;->a:[J

    .line 24
    .line 25
    shr-int/lit8 v8, v4, 0x3

    .line 26
    .line 27
    and-int/lit8 v9, v4, 0x7

    .line 28
    .line 29
    shl-int/lit8 v9, v9, 0x3

    .line 30
    .line 31
    aget-wide v10, v7, v8

    .line 32
    .line 33
    ushr-long/2addr v10, v9

    .line 34
    const/4 v12, 0x1

    .line 35
    add-int/2addr v8, v12

    .line 36
    aget-wide v13, v7, v8

    .line 37
    .line 38
    rsub-int/lit8 v7, v9, 0x40

    .line 39
    .line 40
    shl-long v7, v13, v7

    .line 41
    .line 42
    int-to-long v13, v9

    .line 43
    neg-long v13, v13

    .line 44
    const/16 v9, 0x3f

    .line 45
    .line 46
    shr-long/2addr v13, v9

    .line 47
    and-long/2addr v7, v13

    .line 48
    or-long/2addr v7, v10

    .line 49
    int-to-long v9, v1

    .line 50
    const-wide v13, 0x101010101010101L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    mul-long v15, v9, v13

    .line 56
    .line 57
    move/from16 v17, v6

    .line 58
    .line 59
    xor-long v5, v7, v15

    .line 60
    .line 61
    sub-long v13, v5, v13

    .line 62
    .line 63
    not-long v5, v5

    .line 64
    and-long/2addr v5, v13

    .line 65
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v5, v13

    .line 71
    :goto_1
    const-wide/16 v15, 0x0

    .line 72
    .line 73
    cmp-long v18, v5, v15

    .line 74
    .line 75
    if-eqz v18, :cond_1

    .line 76
    .line 77
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    shr-int/lit8 v15, v15, 0x3

    .line 82
    .line 83
    add-int/2addr v15, v4

    .line 84
    and-int/2addr v15, v3

    .line 85
    iget-object v11, v0, Landroidx/collection/u;->b:[J

    .line 86
    .line 87
    aget-wide v19, v11, v15

    .line 88
    .line 89
    cmp-long v11, v19, p1

    .line 90
    .line 91
    if-nez v11, :cond_0

    .line 92
    .line 93
    return v15

    .line 94
    :cond_0
    const-wide/16 v15, 0x1

    .line 95
    .line 96
    sub-long v15, v5, v15

    .line 97
    .line 98
    and-long/2addr v5, v15

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    not-long v5, v7

    .line 101
    const/4 v11, 0x6

    .line 102
    shl-long/2addr v5, v11

    .line 103
    and-long/2addr v5, v7

    .line 104
    and-long/2addr v5, v13

    .line 105
    cmp-long v5, v5, v15

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-direct {v0, v2}, Landroidx/collection/h0;->j(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v3, v0, Landroidx/collection/h0;->f:I

    .line 114
    .line 115
    const-wide/16 v4, 0xff

    .line 116
    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    iget-object v3, v0, Landroidx/collection/u;->a:[J

    .line 120
    .line 121
    shr-int/lit8 v6, v1, 0x3

    .line 122
    .line 123
    aget-wide v6, v3, v6

    .line 124
    .line 125
    and-int/lit8 v3, v1, 0x7

    .line 126
    .line 127
    shl-int/lit8 v3, v3, 0x3

    .line 128
    .line 129
    shr-long/2addr v6, v3

    .line 130
    and-long/2addr v6, v4

    .line 131
    const-wide/16 v13, 0xfe

    .line 132
    .line 133
    cmp-long v3, v6, v13

    .line 134
    .line 135
    if-nez v3, :cond_2

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/collection/h0;->f()V

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v2}, Landroidx/collection/h0;->j(I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/u;->e:I

    .line 146
    .line 147
    add-int/2addr v2, v12

    .line 148
    iput v2, v0, Landroidx/collection/u;->e:I

    .line 149
    .line 150
    iget v2, v0, Landroidx/collection/h0;->f:I

    .line 151
    .line 152
    iget-object v3, v0, Landroidx/collection/u;->a:[J

    .line 153
    .line 154
    shr-int/lit8 v6, v1, 0x3

    .line 155
    .line 156
    aget-wide v7, v3, v6

    .line 157
    .line 158
    and-int/lit8 v11, v1, 0x7

    .line 159
    .line 160
    shl-int/lit8 v11, v11, 0x3

    .line 161
    .line 162
    shr-long v13, v7, v11

    .line 163
    .line 164
    and-long/2addr v13, v4

    .line 165
    const-wide/16 v15, 0x80

    .line 166
    .line 167
    cmp-long v13, v13, v15

    .line 168
    .line 169
    if-nez v13, :cond_4

    .line 170
    .line 171
    move/from16 v18, v12

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    const/16 v18, 0x0

    .line 175
    .line 176
    :goto_3
    sub-int v2, v2, v18

    .line 177
    .line 178
    iput v2, v0, Landroidx/collection/h0;->f:I

    .line 179
    .line 180
    iget v2, v0, Landroidx/collection/u;->d:I

    .line 181
    .line 182
    shl-long/2addr v4, v11

    .line 183
    not-long v4, v4

    .line 184
    and-long/2addr v4, v7

    .line 185
    shl-long v7, v9, v11

    .line 186
    .line 187
    or-long/2addr v4, v7

    .line 188
    aput-wide v4, v3, v6

    .line 189
    .line 190
    add-int/lit8 v6, v1, -0x7

    .line 191
    .line 192
    and-int/2addr v6, v2

    .line 193
    and-int/lit8 v2, v2, 0x7

    .line 194
    .line 195
    add-int/2addr v6, v2

    .line 196
    shr-int/lit8 v2, v6, 0x3

    .line 197
    .line 198
    aput-wide v4, v3, v2

    .line 199
    .line 200
    return v1

    .line 201
    :cond_5
    add-int/lit8 v6, v17, 0x8

    .line 202
    .line 203
    add-int/2addr v4, v6

    .line 204
    and-int/2addr v4, v3

    .line 205
    goto/16 :goto_0
.end method

.method private final j(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/u;->d:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/u;->a:[J

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

.method private final k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/u;->c()I

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
    iget v1, p0, Landroidx/collection/u;->e:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/h0;->f:I

    .line 13
    .line 14
    return-void
.end method

.method private final l(I)V
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
    iput-object v0, p0, Landroidx/collection/u;->a:[J

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
    invoke-direct {p0}, Landroidx/collection/h0;->k()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final m(I)V
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
    iput p1, p0, Landroidx/collection/u;->d:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/h0;->l(I)V

    .line 17
    .line 18
    .line 19
    new-array v0, p1, [J

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/collection/u;->b:[J

    .line 22
    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method private final n(I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/u;->a:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/u;->b:[J

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, v0, Landroidx/collection/u;->d:I

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Landroidx/collection/h0;->m(I)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/u;->a:[J

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/collection/u;->b:[J

    .line 17
    .line 18
    iget-object v7, v0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v8, v0, Landroidx/collection/u;->d:I

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
    aget-wide v10, v2, v9

    .line 44
    .line 45
    invoke-static {v10, v11}, Landroidx/collection/s;->a(J)I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    const v15, -0x3361d2af    # -8.2930312E7f

    .line 50
    .line 51
    .line 52
    mul-int/2addr v14, v15

    .line 53
    shl-int/lit8 v15, v14, 0x10

    .line 54
    .line 55
    xor-int/2addr v14, v15

    .line 56
    ushr-int/lit8 v15, v14, 0x7

    .line 57
    .line 58
    invoke-direct {v0, v15}, Landroidx/collection/h0;->j(I)I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    and-int/lit8 v14, v14, 0x7f

    .line 63
    .line 64
    int-to-long v12, v14

    .line 65
    shr-int/lit8 v14, v15, 0x3

    .line 66
    .line 67
    and-int/lit8 v18, v15, 0x7

    .line 68
    .line 69
    shl-int/lit8 v18, v18, 0x3

    .line 70
    .line 71
    aget-wide v19, v5, v14

    .line 72
    .line 73
    move-object/from16 v21, v1

    .line 74
    .line 75
    const-wide/16 v16, 0xff

    .line 76
    .line 77
    shl-long v0, v16, v18

    .line 78
    .line 79
    not-long v0, v0

    .line 80
    and-long v0, v19, v0

    .line 81
    .line 82
    shl-long v12, v12, v18

    .line 83
    .line 84
    or-long/2addr v0, v12

    .line 85
    aput-wide v0, v5, v14

    .line 86
    .line 87
    add-int/lit8 v12, v15, -0x7

    .line 88
    .line 89
    and-int/2addr v12, v8

    .line 90
    and-int/lit8 v13, v8, 0x7

    .line 91
    .line 92
    add-int/2addr v12, v13

    .line 93
    shr-int/lit8 v12, v12, 0x3

    .line 94
    .line 95
    aput-wide v0, v5, v12

    .line 96
    .line 97
    aput-wide v10, v6, v15

    .line 98
    .line 99
    aget-object v0, v3, v9

    .line 100
    .line 101
    aput-object v0, v7, v15

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    move-object/from16 v21, v1

    .line 105
    .line 106
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    move-object/from16 v0, p0

    .line 109
    .line 110
    move-object/from16 v1, v21

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/u;->e:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/u;->a:[J

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
    iget-object v1, p0, Landroidx/collection/u;->a:[J

    .line 23
    .line 24
    iget v2, p0, Landroidx/collection/u;->d:I

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
    iget-object v1, p0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iget v3, p0, Landroidx/collection/u;->d:I

    .line 46
    .line 47
    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->u([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroidx/collection/h0;->k()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final o(JLjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/collection/h0;->i(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/collection/u;->b:[J

    .line 6
    .line 7
    aput-wide p1, v1, v0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/collection/u;->c:[Ljava/lang/Object;

    .line 10
    .line 11
    aput-object p3, p1, v0

    .line 12
    .line 13
    return-void
.end method
