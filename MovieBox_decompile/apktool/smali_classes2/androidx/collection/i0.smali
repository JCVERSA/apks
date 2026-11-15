.class public final Landroidx/collection/i0;
.super Landroidx/collection/v;
.source "source.java"


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/i0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/collection/v;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct {p0, p1}, Landroidx/collection/i0;->k(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/i0;-><init>(I)V

    return-void
.end method

.method private final e()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/v;->c:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/v;->d:I

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
    iget v2, p0, Landroidx/collection/v;->c:I

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
    invoke-direct {p0}, Landroidx/collection/i0;->f()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Landroidx/collection/v;->c:I

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-direct {p0, v0}, Landroidx/collection/i0;->o(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private final f()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/v;->a:[J

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/v;->c:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/v;->b:[J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/collection/v0;->a([JI)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move v6, v5

    .line 14
    const/4 v7, -0x1

    .line 15
    :goto_0
    if-eq v6, v2, :cond_5

    .line 16
    .line 17
    shr-int/lit8 v8, v6, 0x3

    .line 18
    .line 19
    aget-wide v9, v1, v8

    .line 20
    .line 21
    and-int/lit8 v11, v6, 0x7

    .line 22
    .line 23
    shl-int/lit8 v11, v11, 0x3

    .line 24
    .line 25
    shr-long/2addr v9, v11

    .line 26
    const-wide/16 v12, 0xff

    .line 27
    .line 28
    and-long/2addr v9, v12

    .line 29
    const-wide/16 v14, 0x80

    .line 30
    .line 31
    cmp-long v16, v9, v14

    .line 32
    .line 33
    if-nez v16, :cond_0

    .line 34
    .line 35
    add-int/lit8 v7, v6, 0x1

    .line 36
    .line 37
    move/from16 v26, v7

    .line 38
    .line 39
    move v7, v6

    .line 40
    move/from16 v6, v26

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v16, 0xfe

    .line 44
    .line 45
    cmp-long v9, v9, v16

    .line 46
    .line 47
    if-eqz v9, :cond_1

    .line 48
    .line 49
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    aget-wide v9, v3, v6

    .line 53
    .line 54
    invoke-static {v9, v10}, Landroidx/collection/s;->a(J)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const v10, -0x3361d2af    # -8.2930312E7f

    .line 59
    .line 60
    .line 61
    mul-int/2addr v9, v10

    .line 62
    shl-int/lit8 v10, v9, 0x10

    .line 63
    .line 64
    xor-int/2addr v9, v10

    .line 65
    ushr-int/lit8 v10, v9, 0x7

    .line 66
    .line 67
    invoke-direct {v0, v10}, Landroidx/collection/i0;->h(I)I

    .line 68
    .line 69
    .line 70
    move-result v16

    .line 71
    and-int/2addr v10, v2

    .line 72
    sub-int v17, v16, v10

    .line 73
    .line 74
    and-int v17, v17, v2

    .line 75
    .line 76
    div-int/lit8 v4, v17, 0x8

    .line 77
    .line 78
    sub-int v10, v6, v10

    .line 79
    .line 80
    and-int/2addr v10, v2

    .line 81
    div-int/lit8 v10, v10, 0x8

    .line 82
    .line 83
    const-wide v18, 0xffffffffffffffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide/high16 v20, -0x8000000000000000L

    .line 89
    .line 90
    if-ne v4, v10, :cond_2

    .line 91
    .line 92
    and-int/lit8 v4, v9, 0x7f

    .line 93
    .line 94
    int-to-long v9, v4

    .line 95
    aget-wide v14, v1, v8

    .line 96
    .line 97
    shl-long/2addr v12, v11

    .line 98
    not-long v12, v12

    .line 99
    and-long/2addr v12, v14

    .line 100
    shl-long/2addr v9, v11

    .line 101
    or-long/2addr v9, v12

    .line 102
    aput-wide v9, v1, v8

    .line 103
    .line 104
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    aget-wide v8, v1, v5

    .line 109
    .line 110
    and-long v8, v8, v18

    .line 111
    .line 112
    or-long v8, v8, v20

    .line 113
    .line 114
    aput-wide v8, v1, v4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    shr-int/lit8 v4, v16, 0x3

    .line 118
    .line 119
    aget-wide v22, v1, v4

    .line 120
    .line 121
    and-int/lit8 v10, v16, 0x7

    .line 122
    .line 123
    shl-int/lit8 v10, v10, 0x3

    .line 124
    .line 125
    shr-long v24, v22, v10

    .line 126
    .line 127
    and-long v24, v24, v12

    .line 128
    .line 129
    cmp-long v17, v24, v14

    .line 130
    .line 131
    if-nez v17, :cond_3

    .line 132
    .line 133
    and-int/lit8 v7, v9, 0x7f

    .line 134
    .line 135
    move/from16 v24, v6

    .line 136
    .line 137
    int-to-long v5, v7

    .line 138
    shl-long v14, v12, v10

    .line 139
    .line 140
    not-long v14, v14

    .line 141
    and-long v14, v22, v14

    .line 142
    .line 143
    shl-long/2addr v5, v10

    .line 144
    or-long/2addr v5, v14

    .line 145
    aput-wide v5, v1, v4

    .line 146
    .line 147
    aget-wide v4, v1, v8

    .line 148
    .line 149
    shl-long v6, v12, v11

    .line 150
    .line 151
    not-long v6, v6

    .line 152
    and-long/2addr v4, v6

    .line 153
    const-wide/16 v6, 0x80

    .line 154
    .line 155
    shl-long/2addr v6, v11

    .line 156
    or-long/2addr v4, v6

    .line 157
    aput-wide v4, v1, v8

    .line 158
    .line 159
    aget-wide v4, v3, v24

    .line 160
    .line 161
    aput-wide v4, v3, v16

    .line 162
    .line 163
    const-wide/16 v4, 0x0

    .line 164
    .line 165
    aput-wide v4, v3, v24

    .line 166
    .line 167
    move/from16 v6, v24

    .line 168
    .line 169
    move v7, v6

    .line 170
    const/4 v4, -0x1

    .line 171
    goto :goto_2

    .line 172
    :cond_3
    move/from16 v24, v6

    .line 173
    .line 174
    and-int/lit8 v5, v9, 0x7f

    .line 175
    .line 176
    int-to-long v5, v5

    .line 177
    shl-long v8, v12, v10

    .line 178
    .line 179
    not-long v8, v8

    .line 180
    and-long v8, v22, v8

    .line 181
    .line 182
    shl-long/2addr v5, v10

    .line 183
    or-long/2addr v5, v8

    .line 184
    aput-wide v5, v1, v4

    .line 185
    .line 186
    const/4 v4, -0x1

    .line 187
    if-ne v7, v4, :cond_4

    .line 188
    .line 189
    add-int/lit8 v6, v24, 0x1

    .line 190
    .line 191
    invoke-static {v1, v6, v2}, Landroidx/collection/v0;->b([JII)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    :cond_4
    aget-wide v5, v3, v16

    .line 196
    .line 197
    aput-wide v5, v3, v7

    .line 198
    .line 199
    aget-wide v5, v3, v24

    .line 200
    .line 201
    aput-wide v5, v3, v16

    .line 202
    .line 203
    aget-wide v5, v3, v7

    .line 204
    .line 205
    aput-wide v5, v3, v24

    .line 206
    .line 207
    add-int/lit8 v6, v24, -0x1

    .line 208
    .line 209
    :goto_2
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    const/4 v8, 0x0

    .line 214
    aget-wide v9, v1, v8

    .line 215
    .line 216
    and-long v9, v9, v18

    .line 217
    .line 218
    or-long v9, v9, v20

    .line 219
    .line 220
    aput-wide v9, v1, v5

    .line 221
    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 223
    .line 224
    move v5, v8

    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/i0;->i()V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method private final g(J)I
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
    iget v3, v0, Landroidx/collection/v;->c:I

    .line 19
    .line 20
    and-int v4, v2, v3

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    iget-object v7, v0, Landroidx/collection/v;->a:[J

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
    iget-object v11, v0, Landroidx/collection/v;->b:[J

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
    invoke-direct {v0, v2}, Landroidx/collection/i0;->h(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v3, v0, Landroidx/collection/i0;->e:I

    .line 114
    .line 115
    const-wide/16 v4, 0xff

    .line 116
    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    iget-object v3, v0, Landroidx/collection/v;->a:[J

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
    invoke-direct/range {p0 .. p0}, Landroidx/collection/i0;->e()V

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v2}, Landroidx/collection/i0;->h(I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/v;->d:I

    .line 146
    .line 147
    add-int/2addr v2, v12

    .line 148
    iput v2, v0, Landroidx/collection/v;->d:I

    .line 149
    .line 150
    iget v2, v0, Landroidx/collection/i0;->e:I

    .line 151
    .line 152
    iget-object v3, v0, Landroidx/collection/v;->a:[J

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
    iput v2, v0, Landroidx/collection/i0;->e:I

    .line 179
    .line 180
    iget v2, v0, Landroidx/collection/v;->c:I

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

.method private final h(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/v;->c:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/v;->a:[J

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

.method private final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/v;->b()I

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
    iget v1, p0, Landroidx/collection/v;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/i0;->e:I

    .line 13
    .line 14
    return-void
.end method

.method private final j(I)V
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
    iput-object v0, p0, Landroidx/collection/v;->a:[J

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
    invoke-direct {p0}, Landroidx/collection/i0;->i()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final k(I)V
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
    iput p1, p0, Landroidx/collection/v;->c:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/i0;->j(I)V

    .line 17
    .line 18
    .line 19
    new-array p1, p1, [J

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/collection/v;->b:[J

    .line 22
    .line 23
    return-void
.end method

.method private final n(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/collection/v;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/v;->d:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/v;->a:[J

    .line 8
    .line 9
    iget v1, p0, Landroidx/collection/v;->c:I

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
    add-int/lit8 p1, p1, -0x7

    .line 32
    .line 33
    and-int/2addr p1, v1

    .line 34
    and-int/lit8 v1, v1, 0x7

    .line 35
    .line 36
    add-int/2addr p1, v1

    .line 37
    shr-int/lit8 p1, p1, 0x3

    .line 38
    .line 39
    aput-wide v3, v0, p1

    .line 40
    .line 41
    return-void
.end method

.method private final o(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/v;->a:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/v;->b:[J

    .line 6
    .line 7
    iget v3, v0, Landroidx/collection/v;->c:I

    .line 8
    .line 9
    invoke-direct/range {p0 .. p1}, Landroidx/collection/i0;->k(I)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Landroidx/collection/v;->a:[J

    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/v;->b:[J

    .line 15
    .line 16
    iget v6, v0, Landroidx/collection/v;->c:I

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    :goto_0
    if-ge v7, v3, :cond_1

    .line 20
    .line 21
    shr-int/lit8 v8, v7, 0x3

    .line 22
    .line 23
    aget-wide v8, v1, v8

    .line 24
    .line 25
    and-int/lit8 v10, v7, 0x7

    .line 26
    .line 27
    shl-int/lit8 v10, v10, 0x3

    .line 28
    .line 29
    shr-long/2addr v8, v10

    .line 30
    const-wide/16 v10, 0xff

    .line 31
    .line 32
    and-long/2addr v8, v10

    .line 33
    const-wide/16 v12, 0x80

    .line 34
    .line 35
    cmp-long v8, v8, v12

    .line 36
    .line 37
    if-gez v8, :cond_0

    .line 38
    .line 39
    aget-wide v8, v2, v7

    .line 40
    .line 41
    invoke-static {v8, v9}, Landroidx/collection/s;->a(J)I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    const v13, -0x3361d2af    # -8.2930312E7f

    .line 46
    .line 47
    .line 48
    mul-int/2addr v12, v13

    .line 49
    shl-int/lit8 v13, v12, 0x10

    .line 50
    .line 51
    xor-int/2addr v12, v13

    .line 52
    ushr-int/lit8 v13, v12, 0x7

    .line 53
    .line 54
    invoke-direct {v0, v13}, Landroidx/collection/i0;->h(I)I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    and-int/lit8 v12, v12, 0x7f

    .line 59
    .line 60
    int-to-long v14, v12

    .line 61
    shr-int/lit8 v12, v13, 0x3

    .line 62
    .line 63
    and-int/lit8 v16, v13, 0x7

    .line 64
    .line 65
    shl-int/lit8 v16, v16, 0x3

    .line 66
    .line 67
    aget-wide v17, v4, v12

    .line 68
    .line 69
    shl-long v10, v10, v16

    .line 70
    .line 71
    not-long v10, v10

    .line 72
    and-long v10, v17, v10

    .line 73
    .line 74
    shl-long v14, v14, v16

    .line 75
    .line 76
    or-long/2addr v10, v14

    .line 77
    aput-wide v10, v4, v12

    .line 78
    .line 79
    add-int/lit8 v12, v13, -0x7

    .line 80
    .line 81
    and-int/2addr v12, v6

    .line 82
    and-int/lit8 v14, v6, 0x7

    .line 83
    .line 84
    add-int/2addr v12, v14

    .line 85
    shr-int/lit8 v12, v12, 0x3

    .line 86
    .line 87
    aput-wide v10, v4, v12

    .line 88
    .line 89
    aput-wide v8, v5, v13

    .line 90
    .line 91
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public final l(J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/collection/i0;->g(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/collection/v;->b:[J

    .line 6
    .line 7
    aput-wide p1, v1, v0

    .line 8
    .line 9
    return-void
.end method

.method public final m(J)Z
    .locals 17

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
    and-int/lit8 v2, v1, 0x7f

    .line 15
    .line 16
    iget v3, v0, Landroidx/collection/v;->c:I

    .line 17
    .line 18
    ushr-int/lit8 v1, v1, 0x7

    .line 19
    .line 20
    and-int/2addr v1, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    iget-object v6, v0, Landroidx/collection/v;->a:[J

    .line 24
    .line 25
    shr-int/lit8 v7, v1, 0x3

    .line 26
    .line 27
    and-int/lit8 v8, v1, 0x7

    .line 28
    .line 29
    shl-int/lit8 v8, v8, 0x3

    .line 30
    .line 31
    aget-wide v9, v6, v7

    .line 32
    .line 33
    ushr-long/2addr v9, v8

    .line 34
    const/4 v11, 0x1

    .line 35
    add-int/2addr v7, v11

    .line 36
    aget-wide v12, v6, v7

    .line 37
    .line 38
    rsub-int/lit8 v6, v8, 0x40

    .line 39
    .line 40
    shl-long v6, v12, v6

    .line 41
    .line 42
    int-to-long v12, v8

    .line 43
    neg-long v12, v12

    .line 44
    const/16 v8, 0x3f

    .line 45
    .line 46
    shr-long/2addr v12, v8

    .line 47
    and-long/2addr v6, v12

    .line 48
    or-long/2addr v6, v9

    .line 49
    int-to-long v8, v2

    .line 50
    const-wide v12, 0x101010101010101L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    mul-long/2addr v8, v12

    .line 56
    xor-long/2addr v8, v6

    .line 57
    sub-long v12, v8, v12

    .line 58
    .line 59
    not-long v8, v8

    .line 60
    and-long/2addr v8, v12

    .line 61
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    and-long/2addr v8, v12

    .line 67
    :goto_1
    const-wide/16 v14, 0x0

    .line 68
    .line 69
    cmp-long v10, v8, v14

    .line 70
    .line 71
    if-eqz v10, :cond_1

    .line 72
    .line 73
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    shr-int/lit8 v10, v10, 0x3

    .line 78
    .line 79
    add-int/2addr v10, v1

    .line 80
    and-int/2addr v10, v3

    .line 81
    iget-object v14, v0, Landroidx/collection/v;->b:[J

    .line 82
    .line 83
    aget-wide v15, v14, v10

    .line 84
    .line 85
    cmp-long v14, v15, p1

    .line 86
    .line 87
    if-nez v14, :cond_0

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_0
    const-wide/16 v14, 0x1

    .line 91
    .line 92
    sub-long v14, v8, v14

    .line 93
    .line 94
    and-long/2addr v8, v14

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    not-long v8, v6

    .line 97
    const/4 v10, 0x6

    .line 98
    shl-long/2addr v8, v10

    .line 99
    and-long/2addr v6, v8

    .line 100
    and-long/2addr v6, v12

    .line 101
    cmp-long v6, v6, v14

    .line 102
    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    const/4 v10, -0x1

    .line 106
    :goto_2
    if-ltz v10, :cond_2

    .line 107
    .line 108
    move v4, v11

    .line 109
    :cond_2
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-direct {v0, v10}, Landroidx/collection/i0;->n(I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return v4

    .line 115
    :cond_4
    add-int/lit8 v5, v5, 0x8

    .line 116
    .line 117
    add-int/2addr v1, v5

    .line 118
    and-int/2addr v1, v3

    .line 119
    goto :goto_0
.end method
