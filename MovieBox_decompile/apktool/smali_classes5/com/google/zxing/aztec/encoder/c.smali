.class public abstract Lcom/google/zxing/aztec/encoder/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/zxing/aztec/encoder/c;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static a(Lkd/a;II)[I
    .locals 7

    .line 1
    new-array p2, p2, [I

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/a;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/2addr v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    move v3, v1

    .line 13
    move v4, v3

    .line 14
    :goto_1
    if-ge v3, p1, :cond_1

    .line 15
    .line 16
    mul-int v5, v2, p1

    .line 17
    .line 18
    add-int/2addr v5, v3

    .line 19
    invoke-virtual {p0, v5}, Lkd/a;->i(I)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    sub-int v5, p1, v3

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    sub-int/2addr v5, v6

    .line 29
    shl-int v5, v6, v5

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    move v5, v1

    .line 33
    :goto_2
    or-int/2addr v4, v5

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    aput v4, p2, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object p2
.end method

.method private static b(Lkd/b;II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    sub-int v1, p1, v0

    .line 5
    .line 6
    move v2, v1

    .line 7
    :goto_1
    add-int v3, p1, v0

    .line 8
    .line 9
    if-gt v2, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Lkd/b;->r(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2, v3}, Lkd/b;->r(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lkd/b;->r(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3, v2}, Lkd/b;->r(II)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-int v0, p1, p2

    .line 30
    .line 31
    invoke-virtual {p0, v0, v0}, Lkd/b;->r(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lkd/b;->r(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lkd/b;->r(II)V

    .line 40
    .line 41
    .line 42
    add-int/2addr p1, p2

    .line 43
    invoke-virtual {p0, p1, v0}, Lkd/b;->r(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lkd/b;->r(II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p2, p1, -0x1

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lkd/b;->r(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static c(Lkd/b;ZILkd/a;)V
    .locals 2

    .line 1
    div-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    :goto_0
    const/4 p1, 0x7

    .line 7
    if-ge v0, p1, :cond_9

    .line 8
    .line 9
    add-int/lit8 p1, p2, -0x3

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    invoke-virtual {p3, v0}, Lkd/a;->i(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, p2, -0x5

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1}, Lkd/b;->r(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v0, 0x7

    .line 24
    .line 25
    invoke-virtual {p3, v1}, Lkd/a;->i(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, p2, 0x5

    .line 32
    .line 33
    invoke-virtual {p0, v1, p1}, Lkd/b;->r(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Lkd/a;->i(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, p2, 0x5

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lkd/b;->r(II)V

    .line 47
    .line 48
    .line 49
    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    .line 50
    .line 51
    invoke-virtual {p3, v1}, Lkd/a;->i(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    add-int/lit8 v1, p2, -0x5

    .line 58
    .line 59
    invoke-virtual {p0, v1, p1}, Lkd/b;->r(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_1
    const/16 p1, 0xa

    .line 66
    .line 67
    if-ge v0, p1, :cond_9

    .line 68
    .line 69
    add-int/lit8 p1, p2, -0x5

    .line 70
    .line 71
    add-int/2addr p1, v0

    .line 72
    div-int/lit8 v1, v0, 0x5

    .line 73
    .line 74
    add-int/2addr p1, v1

    .line 75
    invoke-virtual {p3, v0}, Lkd/a;->i(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    add-int/lit8 v1, p2, -0x7

    .line 82
    .line 83
    invoke-virtual {p0, p1, v1}, Lkd/b;->r(II)V

    .line 84
    .line 85
    .line 86
    :cond_5
    add-int/lit8 v1, v0, 0xa

    .line 87
    .line 88
    invoke-virtual {p3, v1}, Lkd/a;->i(I)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    add-int/lit8 v1, p2, 0x7

    .line 95
    .line 96
    invoke-virtual {p0, v1, p1}, Lkd/b;->r(II)V

    .line 97
    .line 98
    .line 99
    :cond_6
    rsub-int/lit8 v1, v0, 0x1d

    .line 100
    .line 101
    invoke-virtual {p3, v1}, Lkd/a;->i(I)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    add-int/lit8 v1, p2, 0x7

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1}, Lkd/b;->r(II)V

    .line 110
    .line 111
    .line 112
    :cond_7
    rsub-int/lit8 v1, v0, 0x27

    .line 113
    .line 114
    invoke-virtual {p3, v1}, Lkd/a;->i(I)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    add-int/lit8 v1, p2, -0x7

    .line 121
    .line 122
    invoke-virtual {p0, v1, p1}, Lkd/b;->r(II)V

    .line 123
    .line 124
    .line 125
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    move-object v0, p3

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/aztec/encoder/c;->e([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static e([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/a;
    .locals 21

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    .line 3
    .line 4
    move-object/from16 v2, p0

    .line 5
    .line 6
    move-object/from16 v3, p3

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a()Lkd/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lkd/a;->m()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-int v2, v2, p1

    .line 20
    .line 21
    div-int/lit8 v2, v2, 0x64

    .line 22
    .line 23
    const/16 v3, 0xb

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v1}, Lkd/a;->m()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v4, v2

    .line 31
    const/16 v5, 0x20

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x1

    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    if-gez p2, :cond_0

    .line 39
    .line 40
    move v4, v8

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v4, v7

    .line 43
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move v5, v6

    .line 50
    :cond_1
    if-gt v9, v5, :cond_4

    .line 51
    .line 52
    invoke-static {v9, v4}, Lcom/google/zxing/aztec/encoder/c;->j(IZ)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    sget-object v10, Lcom/google/zxing/aztec/encoder/c;->a:[I

    .line 57
    .line 58
    aget v10, v10, v9

    .line 59
    .line 60
    rem-int v11, v5, v10

    .line 61
    .line 62
    sub-int v11, v5, v11

    .line 63
    .line 64
    invoke-static {v1, v10}, Lcom/google/zxing/aztec/encoder/c;->i(Lkd/a;I)Lkd/a;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lkd/a;->m()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    add-int/2addr v12, v2

    .line 73
    const-string v2, "Data to large for user specified layer"

    .line 74
    .line 75
    if-gt v12, v11, :cond_3

    .line 76
    .line 77
    if-eqz v4, :cond_c

    .line 78
    .line 79
    invoke-virtual {v1}, Lkd/a;->m()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    mul-int/lit8 v12, v10, 0x40

    .line 84
    .line 85
    if-gt v11, v12, :cond_2

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-array v2, v8, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v1, v2, v7

    .line 110
    .line 111
    const-string v1, "Illegal value %s for layers"

    .line 112
    .line 113
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_5
    const/4 v9, 0x0

    .line 122
    move v10, v7

    .line 123
    move v11, v10

    .line 124
    :goto_1
    if-gt v10, v5, :cond_1d

    .line 125
    .line 126
    const/4 v12, 0x3

    .line 127
    if-gt v10, v12, :cond_6

    .line 128
    .line 129
    move v12, v8

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move v12, v7

    .line 132
    :goto_2
    if-eqz v12, :cond_7

    .line 133
    .line 134
    add-int/lit8 v13, v10, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    move v13, v10

    .line 138
    :goto_3
    invoke-static {v13, v12}, Lcom/google/zxing/aztec/encoder/c;->j(IZ)I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    if-le v4, v14, :cond_8

    .line 143
    .line 144
    move v3, v8

    .line 145
    goto/16 :goto_11

    .line 146
    .line 147
    :cond_8
    if-eqz v9, :cond_9

    .line 148
    .line 149
    sget-object v15, Lcom/google/zxing/aztec/encoder/c;->a:[I

    .line 150
    .line 151
    aget v15, v15, v13

    .line 152
    .line 153
    if-eq v11, v15, :cond_a

    .line 154
    .line 155
    :cond_9
    sget-object v9, Lcom/google/zxing/aztec/encoder/c;->a:[I

    .line 156
    .line 157
    aget v9, v9, v13

    .line 158
    .line 159
    invoke-static {v1, v9}, Lcom/google/zxing/aztec/encoder/c;->i(Lkd/a;I)Lkd/a;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    move-object/from16 v20, v11

    .line 164
    .line 165
    move v11, v9

    .line 166
    move-object/from16 v9, v20

    .line 167
    .line 168
    :cond_a
    rem-int v15, v14, v11

    .line 169
    .line 170
    sub-int v15, v14, v15

    .line 171
    .line 172
    if-eqz v12, :cond_b

    .line 173
    .line 174
    invoke-virtual {v9}, Lkd/a;->m()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    mul-int/lit8 v5, v11, 0x40

    .line 179
    .line 180
    if-le v3, v5, :cond_b

    .line 181
    .line 182
    goto/16 :goto_10

    .line 183
    .line 184
    :cond_b
    invoke-virtual {v9}, Lkd/a;->m()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    add-int/2addr v3, v2

    .line 189
    if-gt v3, v15, :cond_1c

    .line 190
    .line 191
    move-object v1, v9

    .line 192
    move v10, v11

    .line 193
    move v4, v12

    .line 194
    move v9, v13

    .line 195
    move v5, v14

    .line 196
    :cond_c
    :goto_4
    invoke-static {v1, v5, v10}, Lcom/google/zxing/aztec/encoder/c;->f(Lkd/a;II)Lkd/a;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v1}, Lkd/a;->m()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    div-int/2addr v1, v10

    .line 205
    invoke-static {v4, v9, v1}, Lcom/google/zxing/aztec/encoder/c;->g(ZII)Lkd/a;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    if-eqz v4, :cond_d

    .line 210
    .line 211
    const/16 v5, 0xb

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_d
    const/16 v5, 0xe

    .line 215
    .line 216
    :goto_5
    mul-int/lit8 v10, v9, 0x4

    .line 217
    .line 218
    add-int/2addr v5, v10

    .line 219
    new-array v10, v5, [I

    .line 220
    .line 221
    if-eqz v4, :cond_f

    .line 222
    .line 223
    move v11, v7

    .line 224
    :goto_6
    if-ge v11, v5, :cond_e

    .line 225
    .line 226
    aput v11, v10, v11

    .line 227
    .line 228
    add-int/2addr v11, v8

    .line 229
    goto :goto_6

    .line 230
    :cond_e
    move v11, v5

    .line 231
    goto :goto_8

    .line 232
    :cond_f
    add-int/lit8 v11, v5, 0x1

    .line 233
    .line 234
    div-int/lit8 v12, v5, 0x2

    .line 235
    .line 236
    add-int/lit8 v13, v12, -0x1

    .line 237
    .line 238
    div-int/lit8 v13, v13, 0xf

    .line 239
    .line 240
    mul-int/2addr v13, v0

    .line 241
    add-int/2addr v11, v13

    .line 242
    div-int/lit8 v13, v11, 0x2

    .line 243
    .line 244
    move v14, v7

    .line 245
    :goto_7
    if-ge v14, v12, :cond_10

    .line 246
    .line 247
    div-int/lit8 v15, v14, 0xf

    .line 248
    .line 249
    add-int/2addr v15, v14

    .line 250
    sub-int v16, v12, v14

    .line 251
    .line 252
    add-int/lit8 v16, v16, -0x1

    .line 253
    .line 254
    sub-int v17, v13, v15

    .line 255
    .line 256
    add-int/lit8 v17, v17, -0x1

    .line 257
    .line 258
    aput v17, v10, v16

    .line 259
    .line 260
    add-int v16, v12, v14

    .line 261
    .line 262
    add-int/2addr v15, v13

    .line 263
    add-int/2addr v15, v8

    .line 264
    aput v15, v10, v16

    .line 265
    .line 266
    add-int/2addr v14, v8

    .line 267
    goto :goto_7

    .line 268
    :cond_10
    :goto_8
    new-instance v12, Lkd/b;

    .line 269
    .line 270
    invoke-direct {v12, v11}, Lkd/b;-><init>(I)V

    .line 271
    .line 272
    .line 273
    move v13, v7

    .line 274
    move v14, v13

    .line 275
    :goto_9
    if-ge v13, v9, :cond_18

    .line 276
    .line 277
    sub-int v15, v9, v13

    .line 278
    .line 279
    mul-int/2addr v15, v6

    .line 280
    if-eqz v4, :cond_11

    .line 281
    .line 282
    const/16 v16, 0x9

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_11
    const/16 v16, 0xc

    .line 286
    .line 287
    :goto_a
    add-int v15, v15, v16

    .line 288
    .line 289
    :goto_b
    if-ge v7, v15, :cond_17

    .line 290
    .line 291
    mul-int/lit8 v16, v7, 0x2

    .line 292
    .line 293
    const/4 v6, 0x0

    .line 294
    :goto_c
    if-ge v6, v0, :cond_16

    .line 295
    .line 296
    add-int v18, v14, v16

    .line 297
    .line 298
    add-int v8, v18, v6

    .line 299
    .line 300
    invoke-virtual {v2, v8}, Lkd/a;->i(I)Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    if-eqz v8, :cond_12

    .line 305
    .line 306
    mul-int/lit8 v8, v13, 0x2

    .line 307
    .line 308
    add-int v18, v8, v6

    .line 309
    .line 310
    aget v0, v10, v18

    .line 311
    .line 312
    add-int/2addr v8, v7

    .line 313
    aget v8, v10, v8

    .line 314
    .line 315
    invoke-virtual {v12, v0, v8}, Lkd/b;->r(II)V

    .line 316
    .line 317
    .line 318
    const/4 v0, 0x2

    .line 319
    :cond_12
    mul-int/lit8 v8, v15, 0x2

    .line 320
    .line 321
    add-int/2addr v8, v14

    .line 322
    add-int v8, v8, v16

    .line 323
    .line 324
    add-int/2addr v8, v6

    .line 325
    invoke-virtual {v2, v8}, Lkd/a;->i(I)Z

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    if-eqz v8, :cond_13

    .line 330
    .line 331
    mul-int/lit8 v8, v13, 0x2

    .line 332
    .line 333
    add-int v0, v8, v7

    .line 334
    .line 335
    aget v0, v10, v0

    .line 336
    .line 337
    const/16 v18, 0x1

    .line 338
    .line 339
    add-int/lit8 v19, v5, -0x1

    .line 340
    .line 341
    sub-int v19, v19, v8

    .line 342
    .line 343
    sub-int v19, v19, v6

    .line 344
    .line 345
    aget v8, v10, v19

    .line 346
    .line 347
    invoke-virtual {v12, v0, v8}, Lkd/b;->r(II)V

    .line 348
    .line 349
    .line 350
    :cond_13
    const/4 v0, 0x4

    .line 351
    mul-int/lit8 v8, v15, 0x4

    .line 352
    .line 353
    add-int/2addr v8, v14

    .line 354
    add-int v8, v8, v16

    .line 355
    .line 356
    add-int/2addr v8, v6

    .line 357
    invoke-virtual {v2, v8}, Lkd/a;->i(I)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_14

    .line 362
    .line 363
    const/4 v8, 0x1

    .line 364
    add-int/lit8 v17, v5, -0x1

    .line 365
    .line 366
    const/4 v8, 0x2

    .line 367
    mul-int/lit8 v18, v13, 0x2

    .line 368
    .line 369
    sub-int v17, v17, v18

    .line 370
    .line 371
    sub-int v8, v17, v6

    .line 372
    .line 373
    aget v8, v10, v8

    .line 374
    .line 375
    sub-int v17, v17, v7

    .line 376
    .line 377
    aget v0, v10, v17

    .line 378
    .line 379
    invoke-virtual {v12, v8, v0}, Lkd/b;->r(II)V

    .line 380
    .line 381
    .line 382
    :cond_14
    mul-int/lit8 v0, v15, 0x6

    .line 383
    .line 384
    add-int/2addr v0, v14

    .line 385
    add-int v0, v0, v16

    .line 386
    .line 387
    add-int/2addr v0, v6

    .line 388
    invoke-virtual {v2, v0}, Lkd/a;->i(I)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_15

    .line 393
    .line 394
    const/4 v0, 0x1

    .line 395
    add-int/lit8 v8, v5, -0x1

    .line 396
    .line 397
    const/16 v17, 0x2

    .line 398
    .line 399
    mul-int/lit8 v18, v13, 0x2

    .line 400
    .line 401
    sub-int v8, v8, v18

    .line 402
    .line 403
    sub-int/2addr v8, v7

    .line 404
    aget v8, v10, v8

    .line 405
    .line 406
    add-int v18, v18, v6

    .line 407
    .line 408
    aget v0, v10, v18

    .line 409
    .line 410
    invoke-virtual {v12, v8, v0}, Lkd/b;->r(II)V

    .line 411
    .line 412
    .line 413
    :cond_15
    const/4 v0, 0x1

    .line 414
    add-int/2addr v6, v0

    .line 415
    move v8, v0

    .line 416
    const/4 v0, 0x2

    .line 417
    goto :goto_c

    .line 418
    :cond_16
    move v0, v8

    .line 419
    add-int/2addr v7, v0

    .line 420
    const/4 v0, 0x2

    .line 421
    const/4 v6, 0x4

    .line 422
    goto/16 :goto_b

    .line 423
    .line 424
    :cond_17
    move v0, v8

    .line 425
    mul-int/lit8 v15, v15, 0x8

    .line 426
    .line 427
    add-int/2addr v14, v15

    .line 428
    add-int/2addr v13, v0

    .line 429
    const/4 v0, 0x2

    .line 430
    const/4 v6, 0x4

    .line 431
    const/4 v7, 0x0

    .line 432
    goto/16 :goto_9

    .line 433
    .line 434
    :cond_18
    invoke-static {v12, v4, v11, v3}, Lcom/google/zxing/aztec/encoder/c;->c(Lkd/b;ZILkd/a;)V

    .line 435
    .line 436
    .line 437
    if-eqz v4, :cond_19

    .line 438
    .line 439
    const/4 v0, 0x2

    .line 440
    div-int/lit8 v0, v11, 0x2

    .line 441
    .line 442
    const/4 v2, 0x5

    .line 443
    invoke-static {v12, v0, v2}, Lcom/google/zxing/aztec/encoder/c;->b(Lkd/b;II)V

    .line 444
    .line 445
    .line 446
    goto :goto_f

    .line 447
    :cond_19
    const/4 v0, 0x2

    .line 448
    div-int/lit8 v2, v11, 0x2

    .line 449
    .line 450
    const/4 v3, 0x7

    .line 451
    invoke-static {v12, v2, v3}, Lcom/google/zxing/aztec/encoder/c;->b(Lkd/b;II)V

    .line 452
    .line 453
    .line 454
    const/4 v3, 0x0

    .line 455
    const/4 v7, 0x0

    .line 456
    :goto_d
    div-int/lit8 v6, v5, 0x2

    .line 457
    .line 458
    const/4 v0, 0x1

    .line 459
    sub-int/2addr v6, v0

    .line 460
    if-ge v7, v6, :cond_1b

    .line 461
    .line 462
    and-int/lit8 v6, v2, 0x1

    .line 463
    .line 464
    :goto_e
    if-ge v6, v11, :cond_1a

    .line 465
    .line 466
    sub-int v0, v2, v3

    .line 467
    .line 468
    invoke-virtual {v12, v0, v6}, Lkd/b;->r(II)V

    .line 469
    .line 470
    .line 471
    add-int v8, v2, v3

    .line 472
    .line 473
    invoke-virtual {v12, v8, v6}, Lkd/b;->r(II)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v12, v6, v0}, Lkd/b;->r(II)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v12, v6, v8}, Lkd/b;->r(II)V

    .line 480
    .line 481
    .line 482
    const/4 v0, 0x2

    .line 483
    add-int/2addr v6, v0

    .line 484
    goto :goto_e

    .line 485
    :cond_1a
    const/4 v0, 0x2

    .line 486
    add-int/lit8 v7, v7, 0xf

    .line 487
    .line 488
    add-int/lit8 v3, v3, 0x10

    .line 489
    .line 490
    goto :goto_d

    .line 491
    :cond_1b
    :goto_f
    new-instance v0, Lcom/google/zxing/aztec/encoder/a;

    .line 492
    .line 493
    invoke-direct {v0}, Lcom/google/zxing/aztec/encoder/a;-><init>()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v4}, Lcom/google/zxing/aztec/encoder/a;->c(Z)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v11}, Lcom/google/zxing/aztec/encoder/a;->f(I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/encoder/a;->d(I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/a;->b(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v12}, Lcom/google/zxing/aztec/encoder/a;->e(Lkd/b;)V

    .line 509
    .line 510
    .line 511
    return-object v0

    .line 512
    :cond_1c
    :goto_10
    const/4 v3, 0x1

    .line 513
    :goto_11
    add-int/2addr v10, v3

    .line 514
    move v8, v3

    .line 515
    const/16 v3, 0xb

    .line 516
    .line 517
    const/16 v5, 0x20

    .line 518
    .line 519
    const/4 v6, 0x4

    .line 520
    const/4 v7, 0x0

    .line 521
    goto/16 :goto_1

    .line 522
    .line 523
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 524
    .line 525
    const-string v1, "Data too large for an Aztec code"

    .line 526
    .line 527
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v0
.end method

.method private static f(Lkd/a;II)Lkd/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkd/a;->m()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    new-instance v1, Lmd/d;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/c;->h(I)Lmd/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lmd/d;-><init>(Lmd/a;)V

    .line 13
    .line 14
    .line 15
    div-int v2, p1, p2

    .line 16
    .line 17
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/c;->a(Lkd/a;II)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    invoke-virtual {v1, p0, v2}, Lmd/d;->b([II)V

    .line 23
    .line 24
    .line 25
    rem-int/2addr p1, p2

    .line 26
    new-instance v0, Lkd/a;

    .line 27
    .line 28
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1, p1}, Lkd/a;->c(II)V

    .line 33
    .line 34
    .line 35
    array-length p1, p0

    .line 36
    :goto_0
    if-ge v1, p1, :cond_0

    .line 37
    .line 38
    aget v2, p0, v1

    .line 39
    .line 40
    invoke-virtual {v0, v2, p2}, Lkd/a;->c(II)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method static g(ZII)Lkd/a;
    .locals 2

    .line 1
    new-instance v0, Lkd/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    invoke-virtual {v0, p1, p0}, Lkd/a;->c(II)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    const/4 p0, 0x6

    .line 18
    invoke-virtual {v0, p2, p0}, Lkd/a;->c(II)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0x1c

    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/c;->f(Lkd/a;II)Lkd/a;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    const/4 p0, 0x5

    .line 31
    invoke-virtual {v0, p1, p0}, Lkd/a;->c(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, -0x1

    .line 35
    .line 36
    const/16 p0, 0xb

    .line 37
    .line 38
    invoke-virtual {v0, p2, p0}, Lkd/a;->c(II)V

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x28

    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/c;->f(Lkd/a;II)Lkd/a;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
.end method

.method private static h(I)Lmd/a;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0xc

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lmd/a;->h:Lmd/a;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Unsupported word size "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    sget-object p0, Lmd/a;->i:Lmd/a;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    sget-object p0, Lmd/a;->n:Lmd/a;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_3
    sget-object p0, Lmd/a;->j:Lmd/a;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    sget-object p0, Lmd/a;->k:Lmd/a;

    .line 55
    .line 56
    return-object p0
.end method

.method static i(Lkd/a;I)Lkd/a;
    .locals 9

    .line 1
    new-instance v0, Lkd/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lkd/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkd/a;->m()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    shl-int v3, v2, p1

    .line 12
    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v1, :cond_5

    .line 18
    .line 19
    move v6, v4

    .line 20
    move v7, v6

    .line 21
    :goto_1
    if-ge v6, p1, :cond_2

    .line 22
    .line 23
    add-int v8, v5, v6

    .line 24
    .line 25
    if-ge v8, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v8}, Lkd/a;->i(I)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v8, p1, -0x1

    .line 34
    .line 35
    sub-int/2addr v8, v6

    .line 36
    shl-int v8, v2, v8

    .line 37
    .line 38
    or-int/2addr v7, v8

    .line 39
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    and-int v6, v7, v3

    .line 43
    .line 44
    if-ne v6, v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v6, p1}, Lkd/a;->c(II)V

    .line 47
    .line 48
    .line 49
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    if-nez v6, :cond_4

    .line 53
    .line 54
    or-int/lit8 v6, v7, 0x1

    .line 55
    .line 56
    invoke-virtual {v0, v6, p1}, Lkd/a;->c(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v0, v7, p1}, Lkd/a;->c(II)V

    .line 61
    .line 62
    .line 63
    :goto_3
    add-int/2addr v5, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return-object v0
.end method

.method private static j(IZ)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x58

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0x70

    .line 7
    .line 8
    :goto_0
    mul-int/lit8 v0, p0, 0x10

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    mul-int/2addr p1, p0

    .line 12
    return p1
.end method
