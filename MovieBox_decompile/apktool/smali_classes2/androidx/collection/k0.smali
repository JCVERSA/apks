.class public final Landroidx/collection/k0;
.super Landroidx/collection/p0;
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

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/k0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/collection/p0;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct {p0, p1}, Landroidx/collection/k0;->n(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/k0;-><init>(I)V

    return-void
.end method

.method private final h()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/p0;->d:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/p0;->e:I

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
    iget v2, p0, Landroidx/collection/p0;->d:I

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
    invoke-direct {p0}, Landroidx/collection/k0;->i()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Landroidx/collection/p0;->d:I

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-direct {p0, v0}, Landroidx/collection/k0;->q(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private final i()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/p0;->a:[J

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/p0;->d:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/collection/p0;->c:[I

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
    if-eq v7, v2, :cond_6

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
    aget-object v10, v3, v7

    .line 55
    .line 56
    if-eqz v10, :cond_2

    .line 57
    .line 58
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v10, v6

    .line 64
    :goto_2
    const v11, -0x3361d2af    # -8.2930312E7f

    .line 65
    .line 66
    .line 67
    mul-int/2addr v10, v11

    .line 68
    shl-int/lit8 v11, v10, 0x10

    .line 69
    .line 70
    xor-int/2addr v10, v11

    .line 71
    ushr-int/lit8 v11, v10, 0x7

    .line 72
    .line 73
    invoke-direct {v0, v11}, Landroidx/collection/k0;->j(I)I

    .line 74
    .line 75
    .line 76
    move-result v17

    .line 77
    and-int/2addr v11, v2

    .line 78
    sub-int v18, v17, v11

    .line 79
    .line 80
    and-int v18, v18, v2

    .line 81
    .line 82
    div-int/lit8 v5, v18, 0x8

    .line 83
    .line 84
    sub-int v11, v7, v11

    .line 85
    .line 86
    and-int/2addr v11, v2

    .line 87
    div-int/lit8 v11, v11, 0x8

    .line 88
    .line 89
    const-wide v19, 0xffffffffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const-wide/high16 v21, -0x8000000000000000L

    .line 95
    .line 96
    if-ne v5, v11, :cond_3

    .line 97
    .line 98
    and-int/lit8 v5, v10, 0x7f

    .line 99
    .line 100
    int-to-long v10, v5

    .line 101
    aget-wide v15, v1, v9

    .line 102
    .line 103
    shl-long/2addr v13, v12

    .line 104
    not-long v13, v13

    .line 105
    and-long/2addr v13, v15

    .line 106
    shl-long/2addr v10, v12

    .line 107
    or-long/2addr v10, v13

    .line 108
    aput-wide v10, v1, v9

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    aget-wide v9, v1, v6

    .line 115
    .line 116
    and-long v9, v9, v19

    .line 117
    .line 118
    or-long v9, v9, v21

    .line 119
    .line 120
    aput-wide v9, v1, v5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    shr-int/lit8 v5, v17, 0x3

    .line 124
    .line 125
    aget-wide v23, v1, v5

    .line 126
    .line 127
    and-int/lit8 v11, v17, 0x7

    .line 128
    .line 129
    shl-int/lit8 v11, v11, 0x3

    .line 130
    .line 131
    shr-long v25, v23, v11

    .line 132
    .line 133
    and-long v25, v25, v13

    .line 134
    .line 135
    cmp-long v18, v25, v15

    .line 136
    .line 137
    if-nez v18, :cond_4

    .line 138
    .line 139
    and-int/lit8 v8, v10, 0x7f

    .line 140
    .line 141
    move/from16 v25, v7

    .line 142
    .line 143
    int-to-long v6, v8

    .line 144
    move/from16 v26, v2

    .line 145
    .line 146
    move-object/from16 v27, v3

    .line 147
    .line 148
    shl-long v2, v13, v11

    .line 149
    .line 150
    not-long v2, v2

    .line 151
    and-long v2, v23, v2

    .line 152
    .line 153
    shl-long/2addr v6, v11

    .line 154
    or-long/2addr v2, v6

    .line 155
    aput-wide v2, v1, v5

    .line 156
    .line 157
    aget-wide v2, v1, v9

    .line 158
    .line 159
    shl-long v5, v13, v12

    .line 160
    .line 161
    not-long v5, v5

    .line 162
    and-long/2addr v2, v5

    .line 163
    shl-long v5, v15, v12

    .line 164
    .line 165
    or-long/2addr v2, v5

    .line 166
    aput-wide v2, v1, v9

    .line 167
    .line 168
    aget-object v2, v27, v25

    .line 169
    .line 170
    aput-object v2, v27, v17

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    aput-object v2, v27, v25

    .line 174
    .line 175
    aget v2, v4, v25

    .line 176
    .line 177
    aput v2, v4, v17

    .line 178
    .line 179
    const/4 v2, 0x0

    .line 180
    aput v2, v4, v25

    .line 181
    .line 182
    move/from16 v7, v25

    .line 183
    .line 184
    move v8, v7

    .line 185
    move/from16 v3, v26

    .line 186
    .line 187
    const/4 v2, -0x1

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    move/from16 v26, v2

    .line 190
    .line 191
    move-object/from16 v27, v3

    .line 192
    .line 193
    move/from16 v25, v7

    .line 194
    .line 195
    and-int/lit8 v2, v10, 0x7f

    .line 196
    .line 197
    int-to-long v2, v2

    .line 198
    shl-long v6, v13, v11

    .line 199
    .line 200
    not-long v6, v6

    .line 201
    and-long v6, v23, v6

    .line 202
    .line 203
    shl-long/2addr v2, v11

    .line 204
    or-long/2addr v2, v6

    .line 205
    aput-wide v2, v1, v5

    .line 206
    .line 207
    const/4 v2, -0x1

    .line 208
    if-ne v8, v2, :cond_5

    .line 209
    .line 210
    add-int/lit8 v7, v25, 0x1

    .line 211
    .line 212
    move/from16 v3, v26

    .line 213
    .line 214
    invoke-static {v1, v7, v3}, Landroidx/collection/v0;->b([JII)I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    goto :goto_3

    .line 219
    :cond_5
    move/from16 v3, v26

    .line 220
    .line 221
    :goto_3
    aget-object v5, v27, v17

    .line 222
    .line 223
    aput-object v5, v27, v8

    .line 224
    .line 225
    aget-object v5, v27, v25

    .line 226
    .line 227
    aput-object v5, v27, v17

    .line 228
    .line 229
    aget-object v5, v27, v8

    .line 230
    .line 231
    aput-object v5, v27, v25

    .line 232
    .line 233
    aget v5, v4, v17

    .line 234
    .line 235
    aput v5, v4, v8

    .line 236
    .line 237
    aget v5, v4, v25

    .line 238
    .line 239
    aput v5, v4, v17

    .line 240
    .line 241
    aget v5, v4, v8

    .line 242
    .line 243
    aput v5, v4, v25

    .line 244
    .line 245
    add-int/lit8 v7, v25, -0x1

    .line 246
    .line 247
    :goto_4
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    const/4 v6, 0x0

    .line 252
    aget-wide v9, v1, v6

    .line 253
    .line 254
    and-long v9, v9, v19

    .line 255
    .line 256
    or-long v9, v9, v21

    .line 257
    .line 258
    aput-wide v9, v1, v5

    .line 259
    .line 260
    add-int/lit8 v7, v7, 0x1

    .line 261
    .line 262
    move v2, v3

    .line 263
    move-object/from16 v3, v27

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/collection/k0;->l()V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method private final j(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/p0;->d:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/p0;->a:[J

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

.method private final k(Ljava/lang/Object;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 14
    .line 15
    .line 16
    mul-int/2addr v3, v4

    .line 17
    shl-int/lit8 v4, v3, 0x10

    .line 18
    .line 19
    xor-int/2addr v3, v4

    .line 20
    ushr-int/lit8 v4, v3, 0x7

    .line 21
    .line 22
    and-int/lit8 v3, v3, 0x7f

    .line 23
    .line 24
    iget v5, v0, Landroidx/collection/p0;->d:I

    .line 25
    .line 26
    and-int v6, v4, v5

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    :goto_1
    iget-object v8, v0, Landroidx/collection/p0;->a:[J

    .line 30
    .line 31
    shr-int/lit8 v9, v6, 0x3

    .line 32
    .line 33
    and-int/lit8 v10, v6, 0x7

    .line 34
    .line 35
    shl-int/lit8 v10, v10, 0x3

    .line 36
    .line 37
    aget-wide v11, v8, v9

    .line 38
    .line 39
    ushr-long/2addr v11, v10

    .line 40
    const/4 v13, 0x1

    .line 41
    add-int/2addr v9, v13

    .line 42
    aget-wide v14, v8, v9

    .line 43
    .line 44
    rsub-int/lit8 v8, v10, 0x40

    .line 45
    .line 46
    shl-long v8, v14, v8

    .line 47
    .line 48
    int-to-long v14, v10

    .line 49
    neg-long v14, v14

    .line 50
    const/16 v10, 0x3f

    .line 51
    .line 52
    shr-long/2addr v14, v10

    .line 53
    and-long/2addr v8, v14

    .line 54
    or-long/2addr v8, v11

    .line 55
    int-to-long v10, v3

    .line 56
    const-wide v14, 0x101010101010101L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    mul-long v16, v10, v14

    .line 62
    .line 63
    move/from16 v18, v3

    .line 64
    .line 65
    xor-long v2, v8, v16

    .line 66
    .line 67
    sub-long v14, v2, v14

    .line 68
    .line 69
    not-long v2, v2

    .line 70
    and-long/2addr v2, v14

    .line 71
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long/2addr v2, v14

    .line 77
    :goto_2
    const-wide/16 v16, 0x0

    .line 78
    .line 79
    cmp-long v19, v2, v16

    .line 80
    .line 81
    if-eqz v19, :cond_2

    .line 82
    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 84
    .line 85
    .line 86
    move-result v16

    .line 87
    shr-int/lit8 v16, v16, 0x3

    .line 88
    .line 89
    add-int v16, v6, v16

    .line 90
    .line 91
    and-int v16, v16, v5

    .line 92
    .line 93
    iget-object v12, v0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 94
    .line 95
    aget-object v12, v12, v16

    .line 96
    .line 97
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_1

    .line 102
    .line 103
    return v16

    .line 104
    :cond_1
    const-wide/16 v16, 0x1

    .line 105
    .line 106
    sub-long v16, v2, v16

    .line 107
    .line 108
    and-long v2, v2, v16

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    not-long v2, v8

    .line 112
    const/4 v12, 0x6

    .line 113
    shl-long/2addr v2, v12

    .line 114
    and-long/2addr v2, v8

    .line 115
    and-long/2addr v2, v14

    .line 116
    cmp-long v2, v2, v16

    .line 117
    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    invoke-direct {v0, v4}, Landroidx/collection/k0;->j(I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iget v2, v0, Landroidx/collection/k0;->f:I

    .line 125
    .line 126
    const-wide/16 v5, 0xff

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    iget-object v2, v0, Landroidx/collection/p0;->a:[J

    .line 131
    .line 132
    shr-int/lit8 v3, v1, 0x3

    .line 133
    .line 134
    aget-wide v7, v2, v3

    .line 135
    .line 136
    and-int/lit8 v2, v1, 0x7

    .line 137
    .line 138
    shl-int/lit8 v2, v2, 0x3

    .line 139
    .line 140
    shr-long v2, v7, v2

    .line 141
    .line 142
    and-long/2addr v2, v5

    .line 143
    const-wide/16 v7, 0xfe

    .line 144
    .line 145
    cmp-long v2, v2, v7

    .line 146
    .line 147
    if-nez v2, :cond_3

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/collection/k0;->h()V

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v4}, Landroidx/collection/k0;->j(I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    :cond_4
    :goto_3
    iget v2, v0, Landroidx/collection/p0;->e:I

    .line 158
    .line 159
    add-int/2addr v2, v13

    .line 160
    iput v2, v0, Landroidx/collection/p0;->e:I

    .line 161
    .line 162
    iget v2, v0, Landroidx/collection/k0;->f:I

    .line 163
    .line 164
    iget-object v3, v0, Landroidx/collection/p0;->a:[J

    .line 165
    .line 166
    shr-int/lit8 v4, v1, 0x3

    .line 167
    .line 168
    aget-wide v7, v3, v4

    .line 169
    .line 170
    and-int/lit8 v9, v1, 0x7

    .line 171
    .line 172
    shl-int/lit8 v9, v9, 0x3

    .line 173
    .line 174
    shr-long v14, v7, v9

    .line 175
    .line 176
    and-long/2addr v14, v5

    .line 177
    const-wide/16 v16, 0x80

    .line 178
    .line 179
    cmp-long v12, v14, v16

    .line 180
    .line 181
    if-nez v12, :cond_5

    .line 182
    .line 183
    move/from16 v19, v13

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_5
    const/16 v19, 0x0

    .line 187
    .line 188
    :goto_4
    sub-int v2, v2, v19

    .line 189
    .line 190
    iput v2, v0, Landroidx/collection/k0;->f:I

    .line 191
    .line 192
    iget v2, v0, Landroidx/collection/p0;->d:I

    .line 193
    .line 194
    shl-long/2addr v5, v9

    .line 195
    not-long v5, v5

    .line 196
    and-long/2addr v5, v7

    .line 197
    shl-long v7, v10, v9

    .line 198
    .line 199
    or-long/2addr v5, v7

    .line 200
    aput-wide v5, v3, v4

    .line 201
    .line 202
    add-int/lit8 v4, v1, -0x7

    .line 203
    .line 204
    and-int/2addr v4, v2

    .line 205
    and-int/lit8 v2, v2, 0x7

    .line 206
    .line 207
    add-int/2addr v4, v2

    .line 208
    shr-int/lit8 v2, v4, 0x3

    .line 209
    .line 210
    aput-wide v5, v3, v2

    .line 211
    .line 212
    not-int v1, v1

    .line 213
    return v1

    .line 214
    :cond_6
    add-int/lit8 v7, v7, 0x8

    .line 215
    .line 216
    add-int/2addr v6, v7

    .line 217
    and-int/2addr v6, v5

    .line 218
    move/from16 v3, v18

    .line 219
    .line 220
    goto/16 :goto_1
.end method

.method private final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/p0;->c()I

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
    iget v1, p0, Landroidx/collection/p0;->e:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/k0;->f:I

    .line 13
    .line 14
    return-void
.end method

.method private final m(I)V
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
    iput-object v0, p0, Landroidx/collection/p0;->a:[J

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
    invoke-direct {p0}, Landroidx/collection/k0;->l()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final n(I)V
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
    iput p1, p0, Landroidx/collection/p0;->d:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/k0;->m(I)V

    .line 17
    .line 18
    .line 19
    new-array v0, p1, [Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 22
    .line 23
    new-array p1, p1, [I

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/collection/p0;->c:[I

    .line 26
    .line 27
    return-void
.end method

.method private final q(I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/p0;->a:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/p0;->c:[I

    .line 8
    .line 9
    iget v4, v0, Landroidx/collection/p0;->d:I

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Landroidx/collection/k0;->n(I)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/p0;->a:[J

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v7, v0, Landroidx/collection/p0;->c:[I

    .line 19
    .line 20
    iget v8, v0, Landroidx/collection/p0;->d:I

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    :goto_0
    if-ge v10, v4, :cond_2

    .line 24
    .line 25
    shr-int/lit8 v11, v10, 0x3

    .line 26
    .line 27
    aget-wide v11, v1, v11

    .line 28
    .line 29
    and-int/lit8 v13, v10, 0x7

    .line 30
    .line 31
    shl-int/lit8 v13, v13, 0x3

    .line 32
    .line 33
    shr-long/2addr v11, v13

    .line 34
    const-wide/16 v13, 0xff

    .line 35
    .line 36
    and-long/2addr v11, v13

    .line 37
    const-wide/16 v15, 0x80

    .line 38
    .line 39
    cmp-long v11, v11, v15

    .line 40
    .line 41
    if-gez v11, :cond_1

    .line 42
    .line 43
    aget-object v11, v2, v10

    .line 44
    .line 45
    if-eqz v11, :cond_0

    .line 46
    .line 47
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 v12, 0x0

    .line 53
    :goto_1
    const v15, -0x3361d2af    # -8.2930312E7f

    .line 54
    .line 55
    .line 56
    mul-int/2addr v12, v15

    .line 57
    shl-int/lit8 v15, v12, 0x10

    .line 58
    .line 59
    xor-int/2addr v12, v15

    .line 60
    ushr-int/lit8 v15, v12, 0x7

    .line 61
    .line 62
    invoke-direct {v0, v15}, Landroidx/collection/k0;->j(I)I

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    and-int/lit8 v12, v12, 0x7f

    .line 67
    .line 68
    move/from16 v16, v10

    .line 69
    .line 70
    int-to-long v9, v12

    .line 71
    shr-int/lit8 v12, v15, 0x3

    .line 72
    .line 73
    and-int/lit8 v17, v15, 0x7

    .line 74
    .line 75
    shl-int/lit8 v17, v17, 0x3

    .line 76
    .line 77
    aget-wide v18, v5, v12

    .line 78
    .line 79
    shl-long v13, v13, v17

    .line 80
    .line 81
    not-long v13, v13

    .line 82
    and-long v13, v18, v13

    .line 83
    .line 84
    shl-long v9, v9, v17

    .line 85
    .line 86
    or-long/2addr v9, v13

    .line 87
    aput-wide v9, v5, v12

    .line 88
    .line 89
    add-int/lit8 v12, v15, -0x7

    .line 90
    .line 91
    and-int/2addr v12, v8

    .line 92
    and-int/lit8 v13, v8, 0x7

    .line 93
    .line 94
    add-int/2addr v12, v13

    .line 95
    shr-int/lit8 v12, v12, 0x3

    .line 96
    .line 97
    aput-wide v9, v5, v12

    .line 98
    .line 99
    aput-object v11, v6, v15

    .line 100
    .line 101
    aget v9, v3, v16

    .line 102
    .line 103
    aput v9, v7, v15

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    move/from16 v16, v10

    .line 107
    .line 108
    :goto_2
    add-int/lit8 v10, v16, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;II)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/collection/k0;->k(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    not-int v0, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p3, p0, Landroidx/collection/p0;->c:[I

    .line 10
    .line 11
    aget p3, p3, v0

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/collection/p0;->c:[I

    .line 18
    .line 19
    aput p2, p1, v0

    .line 20
    .line 21
    return p3
.end method

.method public final p(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/collection/p0;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/p0;->e:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/p0;->a:[J

    .line 8
    .line 9
    iget v1, p0, Landroidx/collection/p0;->d:I

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
    iget-object v0, p0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    aput-object v1, v0, p1

    .line 45
    .line 46
    return-void
.end method

.method public final r(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/collection/k0;->k(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    not-int v0, v0

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/collection/p0;->c:[I

    .line 13
    .line 14
    aput p2, p1, v0

    .line 15
    .line 16
    return-void
.end method
