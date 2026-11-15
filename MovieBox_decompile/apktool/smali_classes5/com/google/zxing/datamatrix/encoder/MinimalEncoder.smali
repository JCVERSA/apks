.class public abstract Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    }
.end annotation


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1b

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data
.end method

.method static synthetic a(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->l(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->n(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(CI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->m(CI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d(CI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->o(CI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->a(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->e(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    aget-object v1, p0, v0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aget-object v1, v1, v2

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    aget-object v1, p0, v0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-le v1, v2, :cond_1

    .line 45
    .line 46
    :cond_0
    aget-object p0, p0, v0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    aput-object p1, p0, v0

    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method static f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v11, 0x3

    .line 9
    const/4 v12, 0x2

    .line 10
    const/4 v13, 0x1

    .line 11
    invoke-virtual {v7, v9}, Lkd/m;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 18
    .line 19
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v0, v10

    .line 24
    move-object/from16 v1, p0

    .line 25
    .line 26
    move/from16 v3, p2

    .line 27
    .line 28
    move-object/from16 v5, p3

    .line 29
    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v7, v9}, Lkd/m;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->o()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 48
    .line 49
    if-eq v1, v2, :cond_7

    .line 50
    .line 51
    :cond_1
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v7, v9, v12}, Lkd/m;->g(II)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    add-int/lit8 v0, v9, 0x1

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Lkd/m;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 76
    .line 77
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 78
    .line 79
    const/4 v4, 0x2

    .line 80
    const/4 v6, 0x0

    .line 81
    move-object v0, v14

    .line 82
    move-object/from16 v1, p0

    .line 83
    .line 84
    move/from16 v3, p2

    .line 85
    .line 86
    move-object/from16 v5, p3

    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 96
    .line 97
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v0, v14

    .line 102
    move-object/from16 v1, p0

    .line 103
    .line 104
    move/from16 v3, p2

    .line 105
    .line 106
    move-object/from16 v5, p3

    .line 107
    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    new-array v14, v12, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 115
    .line 116
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 117
    .line 118
    aput-object v0, v14, v10

    .line 119
    .line 120
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 121
    .line 122
    aput-object v0, v14, v13

    .line 123
    .line 124
    move v15, v10

    .line 125
    :goto_1
    if-ge v15, v12, :cond_5

    .line 126
    .line 127
    aget-object v2, v14, v15

    .line 128
    .line 129
    new-array v0, v13, [I

    .line 130
    .line 131
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 132
    .line 133
    if-ne v2, v1, :cond_3

    .line 134
    .line 135
    move v1, v13

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    move v1, v10

    .line 138
    :goto_2
    invoke-static {v7, v9, v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->j(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;IZ[I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-lez v1, :cond_4

    .line 143
    .line 144
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 145
    .line 146
    aget v4, v0, v10

    .line 147
    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    move-object v0, v6

    .line 151
    move-object/from16 v1, p0

    .line 152
    .line 153
    move/from16 v3, p2

    .line 154
    .line 155
    move-object/from16 v5, p3

    .line 156
    .line 157
    move-object v10, v6

    .line 158
    move-object/from16 v6, v16

    .line 159
    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    add-int/2addr v15, v13

    .line 167
    const/4 v10, 0x0

    .line 168
    goto :goto_1

    .line 169
    :cond_5
    invoke-virtual {v7, v9, v11}, Lkd/m;->g(II)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    invoke-virtual {v7, v9}, Lkd/m;->charAt(I)C

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    add-int/lit8 v0, v9, 0x1

    .line 186
    .line 187
    invoke-virtual {v7, v0}, Lkd/m;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    add-int/lit8 v0, v9, 0x2

    .line 198
    .line 199
    invoke-virtual {v7, v0}, Lkd/m;->charAt(I)C

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 210
    .line 211
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 212
    .line 213
    const/4 v4, 0x3

    .line 214
    const/4 v6, 0x0

    .line 215
    move-object v0, v10

    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    move/from16 v3, p2

    .line 219
    .line 220
    move-object/from16 v5, p3

    .line 221
    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 229
    .line 230
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 231
    .line 232
    const/4 v4, 0x1

    .line 233
    const/4 v6, 0x0

    .line 234
    move-object v0, v10

    .line 235
    move-object/from16 v1, p0

    .line 236
    .line 237
    move/from16 v3, p2

    .line 238
    .line 239
    move-object/from16 v5, p3

    .line 240
    .line 241
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    const/4 v10, 0x0

    .line 248
    :goto_3
    if-ge v10, v11, :cond_8

    .line 249
    .line 250
    add-int v0, v9, v10

    .line 251
    .line 252
    invoke-virtual {v7, v0, v13}, Lkd/m;->g(II)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    invoke-virtual {v7, v0}, Lkd/m;->charAt(I)C

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->i(C)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    new-instance v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 269
    .line 270
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 271
    .line 272
    add-int/2addr v10, v13

    .line 273
    const/4 v6, 0x0

    .line 274
    move-object v0, v12

    .line 275
    move-object/from16 v1, p0

    .line 276
    .line 277
    move/from16 v3, p2

    .line 278
    .line 279
    move v4, v10

    .line 280
    move-object/from16 v5, p3

    .line 281
    .line 282
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v8, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_8
    if-ne v10, v11, :cond_9

    .line 290
    .line 291
    const/4 v0, 0x4

    .line 292
    invoke-virtual {v7, v9, v0}, Lkd/m;->g(II)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_9

    .line 297
    .line 298
    add-int/lit8 v0, v9, 0x3

    .line 299
    .line 300
    invoke-virtual {v7, v0}, Lkd/m;->charAt(I)C

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->i(C)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_9

    .line 309
    .line 310
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 311
    .line 312
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 313
    .line 314
    const/4 v4, 0x4

    .line 315
    const/4 v6, 0x0

    .line 316
    move-object v0, v10

    .line 317
    move-object/from16 v1, p0

    .line 318
    .line 319
    move/from16 v3, p2

    .line 320
    .line 321
    move-object/from16 v5, p3

    .line 322
    .line 323
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->e([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    return-void
.end method

.method static g(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B
    .locals 8

    .line 1
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$a;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->i(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;->b()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "[)>\u001e05\u001d"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x7

    .line 8
    const-string v2, "\u001e\u0004"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x2

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "[)>\u001e06\u001d"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/lit8 v0, v0, -0x2

    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 v0, 0x6

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_0
    new-instance v1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->g(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method static i(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x6

    .line 12
    aput v4, v2, v3

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput v1, v2, v5

    .line 16
    .line 17
    const-class v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p0, v1, v5, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 27
    .line 28
    .line 29
    move v6, v3

    .line 30
    :goto_0
    if-gt v6, v0, :cond_3

    .line 31
    .line 32
    move v7, v5

    .line 33
    :goto_1
    if-ge v7, v4, :cond_1

    .line 34
    .line 35
    aget-object v8, v1, v6

    .line 36
    .line 37
    aget-object v8, v8, v7

    .line 38
    .line 39
    if-eqz v8, :cond_0

    .line 40
    .line 41
    if-ge v6, v0, :cond_0

    .line 42
    .line 43
    invoke-static {p0, v1, v6, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v7, v5

    .line 50
    :goto_2
    if-ge v7, v4, :cond_2

    .line 51
    .line 52
    add-int/lit8 v8, v6, -0x1

    .line 53
    .line 54
    aget-object v8, v1, v8

    .line 55
    .line 56
    aput-object v2, v8, v7

    .line 57
    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v2, -0x1

    .line 65
    const v6, 0x7fffffff

    .line 66
    .line 67
    .line 68
    :goto_3
    if-ge v5, v4, :cond_6

    .line 69
    .line 70
    aget-object v7, v1, v0

    .line 71
    .line 72
    aget-object v7, v7, v5

    .line 73
    .line 74
    if-eqz v7, :cond_5

    .line 75
    .line 76
    if-lt v5, v3, :cond_4

    .line 77
    .line 78
    const/4 v8, 0x3

    .line 79
    if-gt v5, v8, :cond_4

    .line 80
    .line 81
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    add-int/2addr v7, v3

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;->f(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    :goto_4
    if-ge v7, v6, :cond_5

    .line 92
    .line 93
    move v2, v5

    .line 94
    move v6, v7

    .line 95
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    if-ltz v2, :cond_7

    .line 99
    .line 100
    new-instance p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;

    .line 101
    .line 102
    aget-object v0, v1, v0

    .line 103
    .line 104
    aget-object v0, v0, v2

    .line 105
    .line 106
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$d;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$b;)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "Failed to encode \""

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p0, "\""

    .line 126
    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method static j(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$c;IZ[I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    move v2, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_a

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lkd/m;->a(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    aput v0, p3, v0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lkd/m;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/g;->h(C)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    :cond_1
    if-nez p2, :cond_3

    .line 32
    .line 33
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/g;->j(C)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0}, Lkd/m;->f()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->k(CI)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    and-int/lit16 v3, v3, 0xff

    .line 56
    .line 57
    const/16 v4, 0x80

    .line 58
    .line 59
    if-lt v3, v4, :cond_7

    .line 60
    .line 61
    if-eqz p2, :cond_5

    .line 62
    .line 63
    add-int/lit8 v4, v3, -0x80

    .line 64
    .line 65
    int-to-char v4, v4

    .line 66
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/g;->h(C)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    :cond_5
    if-nez p2, :cond_7

    .line 73
    .line 74
    add-int/lit8 v3, v3, -0x80

    .line 75
    .line 76
    int-to-char v3, v3

    .line 77
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/g;->j(C)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_7

    .line 82
    .line 83
    :cond_6
    add-int/lit8 v2, v2, 0x3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_7
    add-int/lit8 v2, v2, 0x4

    .line 87
    .line 88
    :goto_1
    rem-int/lit8 v3, v2, 0x3

    .line 89
    .line 90
    if-eqz v3, :cond_9

    .line 91
    .line 92
    add-int/lit8 v3, v2, -0x2

    .line 93
    .line 94
    rem-int/lit8 v3, v3, 0x3

    .line 95
    .line 96
    if-nez v3, :cond_8

    .line 97
    .line 98
    add-int/lit8 v3, v1, 0x1

    .line 99
    .line 100
    invoke-virtual {p0}, Lkd/m;->length()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-ne v3, v4, :cond_8

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_9
    :goto_2
    sub-int/2addr v1, p1

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    aput v1, p3, v0

    .line 114
    .line 115
    int-to-double p0, v2

    .line 116
    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    .line 117
    .line 118
    div-double/2addr p0, p2

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide p0

    .line 123
    double-to-int p0, p0

    .line 124
    return p0

    .line 125
    :cond_a
    aput v0, p3, v0

    .line 126
    .line 127
    return v0
.end method

.method static k(CI)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x80

    .line 4
    .line 5
    if-lt p0, p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0xff

    .line 8
    .line 9
    if-gt p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private static l(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private static m(CI)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->a:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_1

    .line 8
    .line 9
    aget-char v5, v0, v3

    .line 10
    .line 11
    if-ne v5, p0, :cond_0

    .line 12
    .line 13
    return v4

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-ne p0, p1, :cond_2

    .line 18
    .line 19
    move v2, v4

    .line 20
    :cond_2
    return v2
.end method

.method private static n(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->l(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static o(CI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->m(CI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
