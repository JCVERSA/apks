.class public abstract Le3/s;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Le3/s;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private static a(IZ)Z
    .locals 5

    .line 1
    ushr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    const v1, 0x336770

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    const v0, 0x68656963

    .line 11
    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    sget-object p1, Le3/s;->a:[I

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    const/4 v1, 0x0

    .line 22
    move v3, v1

    .line 23
    :goto_0
    if-ge v3, v0, :cond_3

    .line 24
    .line 25
    aget v4, p1, v3

    .line 26
    .line 27
    if-ne v4, p0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v1
.end method

.method public static b(Lk2/s;)Lk2/q0;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Le3/s;->c(Lk2/s;ZZ)Lk2/q0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static c(Lk2/s;ZZ)Lk2/q0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, Lk2/s;->getLength()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    const-wide/16 v7, 0x1000

    .line 14
    .line 15
    if-eqz v6, :cond_1

    .line 16
    .line 17
    cmp-long v9, v2, v7

    .line 18
    .line 19
    if-lez v9, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v7, v2

    .line 23
    :cond_1
    :goto_0
    long-to-int v7, v7

    .line 24
    new-instance v8, Landroidx/media3/common/util/j0;

    .line 25
    .line 26
    const/16 v9, 0x40

    .line 27
    .line 28
    invoke-direct {v8, v9}, Landroidx/media3/common/util/j0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    move v10, v9

    .line 33
    move v11, v10

    .line 34
    :goto_1
    if-ge v10, v7, :cond_2

    .line 35
    .line 36
    const/16 v13, 0x8

    .line 37
    .line 38
    invoke-virtual {v8, v13}, Landroidx/media3/common/util/j0;->S(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->e()[B

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    const/4 v15, 0x1

    .line 46
    invoke-interface {v0, v14, v9, v13, v15}, Lk2/s;->peekFully([BIIZ)Z

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    if-nez v14, :cond_3

    .line 51
    .line 52
    :cond_2
    move v4, v9

    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_3
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->J()J

    .line 56
    .line 57
    .line 58
    move-result-wide v16

    .line 59
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    const-wide/16 v18, 0x1

    .line 64
    .line 65
    cmp-long v18, v16, v18

    .line 66
    .line 67
    if-nez v18, :cond_4

    .line 68
    .line 69
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->e()[B

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    invoke-interface {v0, v15, v13, v13}, Lk2/s;->peekFully([BII)V

    .line 74
    .line 75
    .line 76
    const/16 v15, 0x10

    .line 77
    .line 78
    invoke-virtual {v8, v15}, Landroidx/media3/common/util/j0;->V(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->A()J

    .line 82
    .line 83
    .line 84
    move-result-wide v16

    .line 85
    :goto_2
    move-wide/from16 v4, v16

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    const-wide/16 v19, 0x0

    .line 89
    .line 90
    cmp-long v15, v16, v19

    .line 91
    .line 92
    if-nez v15, :cond_5

    .line 93
    .line 94
    invoke-interface/range {p0 .. p0}, Lk2/s;->getLength()J

    .line 95
    .line 96
    .line 97
    move-result-wide v19

    .line 98
    cmp-long v15, v19, v4

    .line 99
    .line 100
    if-eqz v15, :cond_5

    .line 101
    .line 102
    invoke-interface/range {p0 .. p0}, Lk2/s;->getPeekPosition()J

    .line 103
    .line 104
    .line 105
    move-result-wide v15

    .line 106
    sub-long v19, v19, v15

    .line 107
    .line 108
    int-to-long v4, v13

    .line 109
    add-long v16, v19, v4

    .line 110
    .line 111
    :cond_5
    move v15, v13

    .line 112
    goto :goto_2

    .line 113
    :goto_3
    int-to-long v12, v15

    .line 114
    cmp-long v19, v4, v12

    .line 115
    .line 116
    if-gez v19, :cond_6

    .line 117
    .line 118
    new-instance v0, Le3/a;

    .line 119
    .line 120
    invoke-direct {v0, v14, v4, v5, v15}, Le3/a;-><init>(IJI)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_6
    add-int/2addr v10, v15

    .line 125
    const v15, 0x6d6f6f76

    .line 126
    .line 127
    .line 128
    if-ne v14, v15, :cond_8

    .line 129
    .line 130
    long-to-int v4, v4

    .line 131
    add-int/2addr v7, v4

    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    int-to-long v4, v7

    .line 135
    cmp-long v4, v4, v2

    .line 136
    .line 137
    if-lez v4, :cond_7

    .line 138
    .line 139
    long-to-int v7, v2

    .line 140
    :cond_7
    :goto_4
    const-wide/16 v4, -0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    const v15, 0x6d6f6f66

    .line 144
    .line 145
    .line 146
    if-eq v14, v15, :cond_14

    .line 147
    .line 148
    const v15, 0x6d766578

    .line 149
    .line 150
    .line 151
    if-ne v14, v15, :cond_9

    .line 152
    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :cond_9
    const v15, 0x6d646174

    .line 156
    .line 157
    .line 158
    move-wide/from16 v19, v2

    .line 159
    .line 160
    if-ne v14, v15, :cond_a

    .line 161
    .line 162
    const/4 v11, 0x1

    .line 163
    :cond_a
    int-to-long v2, v10

    .line 164
    add-long/2addr v2, v4

    .line 165
    sub-long/2addr v2, v12

    .line 166
    move/from16 v21, v10

    .line 167
    .line 168
    int-to-long v9, v7

    .line 169
    cmp-long v2, v2, v9

    .line 170
    .line 171
    if-ltz v2, :cond_b

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    goto/16 :goto_a

    .line 175
    .line 176
    :cond_b
    sub-long/2addr v4, v12

    .line 177
    long-to-int v2, v4

    .line 178
    add-int v10, v21, v2

    .line 179
    .line 180
    const v3, 0x66747970

    .line 181
    .line 182
    .line 183
    if-ne v14, v3, :cond_12

    .line 184
    .line 185
    const/16 v3, 0x8

    .line 186
    .line 187
    if-ge v2, v3, :cond_c

    .line 188
    .line 189
    new-instance v0, Le3/a;

    .line 190
    .line 191
    int-to-long v1, v2

    .line 192
    invoke-direct {v0, v14, v1, v2, v3}, Le3/a;-><init>(IJI)V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_c
    invoke-virtual {v8, v2}, Landroidx/media3/common/util/j0;->S(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->e()[B

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const/4 v4, 0x0

    .line 204
    invoke-interface {v0, v3, v4, v2}, Lk2/s;->peekFully([BII)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-static {v2, v1}, Le3/s;->a(IZ)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_d

    .line 216
    .line 217
    const/4 v11, 0x1

    .line 218
    :cond_d
    const/4 v3, 0x4

    .line 219
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/j0;->X(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->a()I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    div-int/2addr v5, v3

    .line 227
    if-nez v11, :cond_10

    .line 228
    .line 229
    if-lez v5, :cond_10

    .line 230
    .line 231
    new-array v12, v5, [I

    .line 232
    .line 233
    move v3, v4

    .line 234
    :goto_5
    if-ge v3, v5, :cond_f

    .line 235
    .line 236
    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    aput v9, v12, v3

    .line 241
    .line 242
    invoke-static {v9, v1}, Le3/s;->a(IZ)Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-eqz v9, :cond_e

    .line 247
    .line 248
    const/4 v15, 0x1

    .line 249
    goto :goto_6

    .line 250
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_f
    move v15, v11

    .line 254
    goto :goto_6

    .line 255
    :cond_10
    move v15, v11

    .line 256
    const/4 v12, 0x0

    .line 257
    :goto_6
    if-nez v15, :cond_11

    .line 258
    .line 259
    new-instance v0, Le3/x;

    .line 260
    .line 261
    invoke-direct {v0, v2, v12}, Le3/x;-><init>(I[I)V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :cond_11
    move v11, v15

    .line 266
    goto :goto_7

    .line 267
    :cond_12
    const/4 v4, 0x0

    .line 268
    if-eqz v2, :cond_13

    .line 269
    .line 270
    invoke-interface {v0, v2}, Lk2/s;->advancePeekPosition(I)V

    .line 271
    .line 272
    .line 273
    :cond_13
    :goto_7
    move v9, v4

    .line 274
    move-wide/from16 v2, v19

    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :cond_14
    :goto_8
    const/4 v9, 0x1

    .line 279
    goto :goto_a

    .line 280
    :goto_9
    move v9, v4

    .line 281
    :goto_a
    if-nez v11, :cond_15

    .line 282
    .line 283
    sget-object v0, Le3/o;->a:Le3/o;

    .line 284
    .line 285
    return-object v0

    .line 286
    :cond_15
    move/from16 v0, p1

    .line 287
    .line 288
    if-eq v0, v9, :cond_17

    .line 289
    .line 290
    if-eqz v9, :cond_16

    .line 291
    .line 292
    sget-object v0, Le3/i;->b:Le3/i;

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_16
    sget-object v0, Le3/i;->c:Le3/i;

    .line 296
    .line 297
    :goto_b
    return-object v0

    .line 298
    :cond_17
    const/4 v0, 0x0

    .line 299
    return-object v0
.end method

.method public static d(Lk2/s;Z)Lk2/q0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Le3/s;->c(Lk2/s;ZZ)Lk2/q0;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
