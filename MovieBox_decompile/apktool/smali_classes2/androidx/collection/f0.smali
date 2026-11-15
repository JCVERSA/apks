.class public final Landroidx/collection/f0;
.super Landroidx/collection/q;
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

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/collection/q;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct {p0, p1}, Landroidx/collection/f0;->n(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/f0;-><init>(I)V

    return-void
.end method

.method private final g()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/q;->c:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/q;->d:I

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
    iget v2, p0, Landroidx/collection/q;->c:I

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
    invoke-direct {p0}, Landroidx/collection/f0;->i()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Landroidx/collection/q;->c:I

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/collection/v0;->e(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-direct {p0, v0}, Landroidx/collection/f0;->t(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private final i()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/q;->a:[J

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/q;->c:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/q;->b:[I

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
    aget v9, v3, v6

    .line 53
    .line 54
    const v10, -0x3361d2af    # -8.2930312E7f

    .line 55
    .line 56
    .line 57
    mul-int/2addr v9, v10

    .line 58
    shl-int/lit8 v10, v9, 0x10

    .line 59
    .line 60
    xor-int/2addr v9, v10

    .line 61
    ushr-int/lit8 v10, v9, 0x7

    .line 62
    .line 63
    invoke-direct {v0, v10}, Landroidx/collection/f0;->k(I)I

    .line 64
    .line 65
    .line 66
    move-result v16

    .line 67
    and-int/2addr v10, v2

    .line 68
    sub-int v17, v16, v10

    .line 69
    .line 70
    and-int v17, v17, v2

    .line 71
    .line 72
    div-int/lit8 v4, v17, 0x8

    .line 73
    .line 74
    sub-int v10, v6, v10

    .line 75
    .line 76
    and-int/2addr v10, v2

    .line 77
    div-int/lit8 v10, v10, 0x8

    .line 78
    .line 79
    const-wide v18, 0xffffffffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide/high16 v20, -0x8000000000000000L

    .line 85
    .line 86
    if-ne v4, v10, :cond_2

    .line 87
    .line 88
    and-int/lit8 v4, v9, 0x7f

    .line 89
    .line 90
    int-to-long v9, v4

    .line 91
    aget-wide v14, v1, v8

    .line 92
    .line 93
    shl-long/2addr v12, v11

    .line 94
    not-long v12, v12

    .line 95
    and-long/2addr v12, v14

    .line 96
    shl-long/2addr v9, v11

    .line 97
    or-long/2addr v9, v12

    .line 98
    aput-wide v9, v1, v8

    .line 99
    .line 100
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    aget-wide v8, v1, v5

    .line 105
    .line 106
    and-long v8, v8, v18

    .line 107
    .line 108
    or-long v8, v8, v20

    .line 109
    .line 110
    aput-wide v8, v1, v4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    shr-int/lit8 v4, v16, 0x3

    .line 114
    .line 115
    aget-wide v22, v1, v4

    .line 116
    .line 117
    and-int/lit8 v10, v16, 0x7

    .line 118
    .line 119
    shl-int/lit8 v10, v10, 0x3

    .line 120
    .line 121
    shr-long v24, v22, v10

    .line 122
    .line 123
    and-long v24, v24, v12

    .line 124
    .line 125
    cmp-long v17, v24, v14

    .line 126
    .line 127
    if-nez v17, :cond_3

    .line 128
    .line 129
    and-int/lit8 v7, v9, 0x7f

    .line 130
    .line 131
    move/from16 v24, v6

    .line 132
    .line 133
    int-to-long v5, v7

    .line 134
    shl-long v14, v12, v10

    .line 135
    .line 136
    not-long v14, v14

    .line 137
    and-long v14, v22, v14

    .line 138
    .line 139
    shl-long/2addr v5, v10

    .line 140
    or-long/2addr v5, v14

    .line 141
    aput-wide v5, v1, v4

    .line 142
    .line 143
    aget-wide v4, v1, v8

    .line 144
    .line 145
    shl-long v6, v12, v11

    .line 146
    .line 147
    not-long v6, v6

    .line 148
    and-long/2addr v4, v6

    .line 149
    const-wide/16 v6, 0x80

    .line 150
    .line 151
    shl-long/2addr v6, v11

    .line 152
    or-long/2addr v4, v6

    .line 153
    aput-wide v4, v1, v8

    .line 154
    .line 155
    aget v4, v3, v24

    .line 156
    .line 157
    aput v4, v3, v16

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    aput v4, v3, v24

    .line 161
    .line 162
    move/from16 v6, v24

    .line 163
    .line 164
    move v7, v6

    .line 165
    const/4 v4, -0x1

    .line 166
    goto :goto_2

    .line 167
    :cond_3
    move/from16 v24, v6

    .line 168
    .line 169
    and-int/lit8 v5, v9, 0x7f

    .line 170
    .line 171
    int-to-long v5, v5

    .line 172
    shl-long v8, v12, v10

    .line 173
    .line 174
    not-long v8, v8

    .line 175
    and-long v8, v22, v8

    .line 176
    .line 177
    shl-long/2addr v5, v10

    .line 178
    or-long/2addr v5, v8

    .line 179
    aput-wide v5, v1, v4

    .line 180
    .line 181
    const/4 v4, -0x1

    .line 182
    if-ne v7, v4, :cond_4

    .line 183
    .line 184
    add-int/lit8 v6, v24, 0x1

    .line 185
    .line 186
    invoke-static {v1, v6, v2}, Landroidx/collection/v0;->b([JII)I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    :cond_4
    aget v5, v3, v16

    .line 191
    .line 192
    aput v5, v3, v7

    .line 193
    .line 194
    aget v5, v3, v24

    .line 195
    .line 196
    aput v5, v3, v16

    .line 197
    .line 198
    aget v5, v3, v7

    .line 199
    .line 200
    aput v5, v3, v24

    .line 201
    .line 202
    add-int/lit8 v6, v24, -0x1

    .line 203
    .line 204
    :goto_2
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->X([J)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    const/4 v8, 0x0

    .line 209
    aget-wide v9, v1, v8

    .line 210
    .line 211
    and-long v9, v9, v18

    .line 212
    .line 213
    or-long v9, v9, v20

    .line 214
    .line 215
    aput-wide v9, v1, v5

    .line 216
    .line 217
    add-int/lit8 v6, v6, 0x1

    .line 218
    .line 219
    move v5, v8

    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/f0;->l()V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method private final j(I)I
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
    iget v4, v0, Landroidx/collection/q;->c:I

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    :goto_0
    iget-object v8, v0, Landroidx/collection/q;->a:[J

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
    iget-object v12, v0, Landroidx/collection/q;->b:[I

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
    invoke-direct {v0, v3}, Landroidx/collection/f0;->k(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget v2, v0, Landroidx/collection/f0;->e:I

    .line 113
    .line 114
    const-wide/16 v4, 0xff

    .line 115
    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    iget-object v2, v0, Landroidx/collection/q;->a:[J

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
    invoke-direct/range {p0 .. p0}, Landroidx/collection/f0;->g()V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v3}, Landroidx/collection/f0;->k(I)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/q;->d:I

    .line 145
    .line 146
    add-int/2addr v2, v13

    .line 147
    iput v2, v0, Landroidx/collection/q;->d:I

    .line 148
    .line 149
    iget v2, v0, Landroidx/collection/f0;->e:I

    .line 150
    .line 151
    iget-object v3, v0, Landroidx/collection/q;->a:[J

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
    iput v2, v0, Landroidx/collection/f0;->e:I

    .line 178
    .line 179
    iget v2, v0, Landroidx/collection/q;->c:I

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

.method private final k(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/q;->c:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/q;->a:[J

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

.method private final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/q;->b()I

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
    iget v1, p0, Landroidx/collection/q;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/f0;->e:I

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
    iput-object v0, p0, Landroidx/collection/q;->a:[J

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
    invoke-direct {p0}, Landroidx/collection/f0;->l()V

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
    iput p1, p0, Landroidx/collection/q;->c:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/f0;->m(I)V

    .line 17
    .line 18
    .line 19
    new-array p1, p1, [I

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/collection/q;->b:[I

    .line 22
    .line 23
    return-void
.end method

.method private final s(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/collection/q;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/q;->d:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/q;->a:[J

    .line 8
    .line 9
    iget v1, p0, Landroidx/collection/q;->c:I

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

.method private final t(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/q;->a:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/q;->b:[I

    .line 6
    .line 7
    iget v3, v0, Landroidx/collection/q;->c:I

    .line 8
    .line 9
    invoke-direct/range {p0 .. p1}, Landroidx/collection/f0;->n(I)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Landroidx/collection/q;->a:[J

    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/q;->b:[I

    .line 15
    .line 16
    iget v6, v0, Landroidx/collection/q;->c:I

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
    aget v8, v2, v7

    .line 40
    .line 41
    const v9, -0x3361d2af    # -8.2930312E7f

    .line 42
    .line 43
    .line 44
    mul-int/2addr v9, v8

    .line 45
    shl-int/lit8 v12, v9, 0x10

    .line 46
    .line 47
    xor-int/2addr v9, v12

    .line 48
    ushr-int/lit8 v12, v9, 0x7

    .line 49
    .line 50
    invoke-direct {v0, v12}, Landroidx/collection/f0;->k(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    and-int/lit8 v9, v9, 0x7f

    .line 55
    .line 56
    int-to-long v13, v9

    .line 57
    shr-int/lit8 v9, v12, 0x3

    .line 58
    .line 59
    and-int/lit8 v15, v12, 0x7

    .line 60
    .line 61
    shl-int/lit8 v15, v15, 0x3

    .line 62
    .line 63
    aget-wide v16, v4, v9

    .line 64
    .line 65
    shl-long/2addr v10, v15

    .line 66
    not-long v10, v10

    .line 67
    and-long v10, v16, v10

    .line 68
    .line 69
    shl-long/2addr v13, v15

    .line 70
    or-long/2addr v10, v13

    .line 71
    aput-wide v10, v4, v9

    .line 72
    .line 73
    add-int/lit8 v9, v12, -0x7

    .line 74
    .line 75
    and-int/2addr v9, v6

    .line 76
    and-int/lit8 v13, v6, 0x7

    .line 77
    .line 78
    add-int/2addr v9, v13

    .line 79
    shr-int/lit8 v9, v9, 0x3

    .line 80
    .line 81
    aput-wide v10, v4, v9

    .line 82
    .line 83
    aput v8, v5, v12

    .line 84
    .line 85
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public final f(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/q;->d:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/collection/f0;->j(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Landroidx/collection/q;->b:[I

    .line 8
    .line 9
    aput p1, v2, v1

    .line 10
    .line 11
    iget p1, p0, Landroidx/collection/q;->d:I

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final h()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/q;->d:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/q;->a:[J

    .line 5
    .line 6
    sget-object v0, Landroidx/collection/v0;->a:[J

    .line 7
    .line 8
    if-eq v1, v0, :cond_0

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
    iget-object v0, p0, Landroidx/collection/q;->a:[J

    .line 23
    .line 24
    iget v1, p0, Landroidx/collection/q;->c:I

    .line 25
    .line 26
    shr-int/lit8 v2, v1, 0x3

    .line 27
    .line 28
    and-int/lit8 v1, v1, 0x7

    .line 29
    .line 30
    shl-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    aget-wide v3, v0, v2

    .line 33
    .line 34
    const-wide/16 v5, 0xff

    .line 35
    .line 36
    shl-long/2addr v5, v1

    .line 37
    not-long v7, v5

    .line 38
    and-long/2addr v3, v7

    .line 39
    or-long/2addr v3, v5

    .line 40
    aput-wide v3, v0, v2

    .line 41
    .line 42
    :cond_0
    invoke-direct {p0}, Landroidx/collection/f0;->l()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final o(I)V
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
    iget v2, p0, Landroidx/collection/q;->c:I

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
    iget-object v4, p0, Landroidx/collection/q;->a:[J

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
    iget-object v11, p0, Landroidx/collection/q;->b:[I

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
    invoke-direct {p0, v10}, Landroidx/collection/f0;->s(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void

    .line 103
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 104
    .line 105
    add-int/2addr v0, v3

    .line 106
    and-int/2addr v0, v2

    .line 107
    goto :goto_0
.end method

.method public final p(Landroidx/collection/q;)V
    .locals 13

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/collection/q;->b:[I

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/collection/q;->a:[J

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    add-int/lit8 v1, v1, -0x2

    .line 12
    .line 13
    if-ltz v1, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    aget-wide v4, p1, v3

    .line 18
    .line 19
    not-long v6, v4

    .line 20
    const/4 v8, 0x7

    .line 21
    shl-long/2addr v6, v8

    .line 22
    and-long/2addr v6, v4

    .line 23
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long/2addr v6, v8

    .line 29
    cmp-long v6, v6, v8

    .line 30
    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    sub-int v6, v3, v1

    .line 34
    .line 35
    not-int v6, v6

    .line 36
    ushr-int/lit8 v6, v6, 0x1f

    .line 37
    .line 38
    const/16 v7, 0x8

    .line 39
    .line 40
    rsub-int/lit8 v6, v6, 0x8

    .line 41
    .line 42
    move v8, v2

    .line 43
    :goto_1
    if-ge v8, v6, :cond_1

    .line 44
    .line 45
    const-wide/16 v9, 0xff

    .line 46
    .line 47
    and-long/2addr v9, v4

    .line 48
    const-wide/16 v11, 0x80

    .line 49
    .line 50
    cmp-long v9, v9, v11

    .line 51
    .line 52
    if-gez v9, :cond_0

    .line 53
    .line 54
    shl-int/lit8 v9, v3, 0x3

    .line 55
    .line 56
    add-int/2addr v9, v8

    .line 57
    aget v9, v0, v9

    .line 58
    .line 59
    invoke-virtual {p0, v9}, Landroidx/collection/f0;->o(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    shr-long/2addr v4, v7

    .line 63
    add-int/lit8 v8, v8, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    if-ne v6, v7, :cond_3

    .line 67
    .line 68
    :cond_2
    if-eq v3, v1, :cond_3

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method

.method public final q(I)Z
    .locals 17

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
    and-int/lit8 v3, v2, 0x7f

    .line 13
    .line 14
    iget v4, v0, Landroidx/collection/q;->c:I

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x7

    .line 17
    .line 18
    and-int/2addr v2, v4

    .line 19
    const/4 v5, 0x0

    .line 20
    move v6, v5

    .line 21
    :goto_0
    iget-object v7, v0, Landroidx/collection/q;->a:[J

    .line 22
    .line 23
    shr-int/lit8 v8, v2, 0x3

    .line 24
    .line 25
    and-int/lit8 v9, v2, 0x7

    .line 26
    .line 27
    shl-int/lit8 v9, v9, 0x3

    .line 28
    .line 29
    aget-wide v10, v7, v8

    .line 30
    .line 31
    ushr-long/2addr v10, v9

    .line 32
    const/4 v12, 0x1

    .line 33
    add-int/2addr v8, v12

    .line 34
    aget-wide v13, v7, v8

    .line 35
    .line 36
    rsub-int/lit8 v7, v9, 0x40

    .line 37
    .line 38
    shl-long v7, v13, v7

    .line 39
    .line 40
    int-to-long v13, v9

    .line 41
    neg-long v13, v13

    .line 42
    const/16 v9, 0x3f

    .line 43
    .line 44
    shr-long/2addr v13, v9

    .line 45
    and-long/2addr v7, v13

    .line 46
    or-long/2addr v7, v10

    .line 47
    int-to-long v9, v3

    .line 48
    const-wide v13, 0x101010101010101L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-long/2addr v9, v13

    .line 54
    xor-long/2addr v9, v7

    .line 55
    sub-long v13, v9, v13

    .line 56
    .line 57
    not-long v9, v9

    .line 58
    and-long/2addr v9, v13

    .line 59
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v9, v13

    .line 65
    :goto_1
    const-wide/16 v15, 0x0

    .line 66
    .line 67
    cmp-long v11, v9, v15

    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    shr-int/lit8 v11, v11, 0x3

    .line 76
    .line 77
    add-int/2addr v11, v2

    .line 78
    and-int/2addr v11, v4

    .line 79
    iget-object v15, v0, Landroidx/collection/q;->b:[I

    .line 80
    .line 81
    aget v15, v15, v11

    .line 82
    .line 83
    if-ne v15, v1, :cond_0

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_0
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    sub-long v15, v9, v15

    .line 89
    .line 90
    and-long/2addr v9, v15

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    not-long v9, v7

    .line 93
    const/4 v11, 0x6

    .line 94
    shl-long/2addr v9, v11

    .line 95
    and-long/2addr v7, v9

    .line 96
    and-long/2addr v7, v13

    .line 97
    cmp-long v7, v7, v15

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    const/4 v11, -0x1

    .line 102
    :goto_2
    if-ltz v11, :cond_2

    .line 103
    .line 104
    move v5, v12

    .line 105
    :cond_2
    if-eqz v5, :cond_3

    .line 106
    .line 107
    invoke-direct {v0, v11}, Landroidx/collection/f0;->s(I)V

    .line 108
    .line 109
    .line 110
    :cond_3
    return v5

    .line 111
    :cond_4
    add-int/lit8 v6, v6, 0x8

    .line 112
    .line 113
    add-int/2addr v2, v6

    .line 114
    and-int/2addr v2, v4

    .line 115
    goto :goto_0
.end method

.method public final r(Landroidx/collection/q;)Z
    .locals 1

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/collection/q;->d:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/collection/f0;->p(Landroidx/collection/q;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Landroidx/collection/q;->d:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method
