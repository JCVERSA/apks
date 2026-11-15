.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$b;,
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/nio/charset/Charset;


# instance fields
.field private a:Lgd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    const-string v30, "CTRL_DL"

    .line 2
    .line 3
    const-string v31, "CTRL_BS"

    .line 4
    .line 5
    const-string v0, "CTRL_PS"

    .line 6
    .line 7
    const-string v1, " "

    .line 8
    .line 9
    const-string v2, "A"

    .line 10
    .line 11
    const-string v3, "B"

    .line 12
    .line 13
    const-string v4, "C"

    .line 14
    .line 15
    const-string v5, "D"

    .line 16
    .line 17
    const-string v6, "E"

    .line 18
    .line 19
    const-string v7, "F"

    .line 20
    .line 21
    const-string v8, "G"

    .line 22
    .line 23
    const-string v9, "H"

    .line 24
    .line 25
    const-string v10, "I"

    .line 26
    .line 27
    const-string v11, "J"

    .line 28
    .line 29
    const-string v12, "K"

    .line 30
    .line 31
    const-string v13, "L"

    .line 32
    .line 33
    const-string v14, "M"

    .line 34
    .line 35
    const-string v15, "N"

    .line 36
    .line 37
    const-string v16, "O"

    .line 38
    .line 39
    const-string v17, "P"

    .line 40
    .line 41
    const-string v18, "Q"

    .line 42
    .line 43
    const-string v19, "R"

    .line 44
    .line 45
    const-string v20, "S"

    .line 46
    .line 47
    const-string v21, "T"

    .line 48
    .line 49
    const-string v22, "U"

    .line 50
    .line 51
    const-string v23, "V"

    .line 52
    .line 53
    const-string v24, "W"

    .line 54
    .line 55
    const-string v25, "X"

    .line 56
    .line 57
    const-string v26, "Y"

    .line 58
    .line 59
    const-string v27, "Z"

    .line 60
    .line 61
    const-string v28, "CTRL_LL"

    .line 62
    .line 63
    const-string v29, "CTRL_ML"

    .line 64
    .line 65
    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[Ljava/lang/String;

    .line 70
    .line 71
    const-string v31, "CTRL_DL"

    .line 72
    .line 73
    const-string v32, "CTRL_BS"

    .line 74
    .line 75
    const-string v1, "CTRL_PS"

    .line 76
    .line 77
    const-string v2, " "

    .line 78
    .line 79
    const-string v3, "a"

    .line 80
    .line 81
    const-string v4, "b"

    .line 82
    .line 83
    const-string v5, "c"

    .line 84
    .line 85
    const-string v6, "d"

    .line 86
    .line 87
    const-string v7, "e"

    .line 88
    .line 89
    const-string v8, "f"

    .line 90
    .line 91
    const-string v9, "g"

    .line 92
    .line 93
    const-string v10, "h"

    .line 94
    .line 95
    const-string v11, "i"

    .line 96
    .line 97
    const-string v12, "j"

    .line 98
    .line 99
    const-string v13, "k"

    .line 100
    .line 101
    const-string v14, "l"

    .line 102
    .line 103
    const-string v15, "m"

    .line 104
    .line 105
    const-string v16, "n"

    .line 106
    .line 107
    const-string v17, "o"

    .line 108
    .line 109
    const-string v18, "p"

    .line 110
    .line 111
    const-string v19, "q"

    .line 112
    .line 113
    const-string v20, "r"

    .line 114
    .line 115
    const-string v21, "s"

    .line 116
    .line 117
    const-string v22, "t"

    .line 118
    .line 119
    const-string v23, "u"

    .line 120
    .line 121
    const-string v24, "v"

    .line 122
    .line 123
    const-string v25, "w"

    .line 124
    .line 125
    const-string v26, "x"

    .line 126
    .line 127
    const-string v27, "y"

    .line 128
    .line 129
    const-string v28, "z"

    .line 130
    .line 131
    const-string v29, "CTRL_US"

    .line 132
    .line 133
    const-string v30, "CTRL_ML"

    .line 134
    .line 135
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->c:[Ljava/lang/String;

    .line 140
    .line 141
    const-string v31, "CTRL_PL"

    .line 142
    .line 143
    const-string v32, "CTRL_BS"

    .line 144
    .line 145
    const-string v1, "CTRL_PS"

    .line 146
    .line 147
    const-string v2, " "

    .line 148
    .line 149
    const-string v3, "\u0001"

    .line 150
    .line 151
    const-string v4, "\u0002"

    .line 152
    .line 153
    const-string v5, "\u0003"

    .line 154
    .line 155
    const-string v6, "\u0004"

    .line 156
    .line 157
    const-string v7, "\u0005"

    .line 158
    .line 159
    const-string v8, "\u0006"

    .line 160
    .line 161
    const-string v9, "\u0007"

    .line 162
    .line 163
    const-string v10, "\u0008"

    .line 164
    .line 165
    const-string v11, "\t"

    .line 166
    .line 167
    const-string v12, "\n"

    .line 168
    .line 169
    const-string v13, "\u000b"

    .line 170
    .line 171
    const-string v14, "\u000c"

    .line 172
    .line 173
    const-string v15, "\r"

    .line 174
    .line 175
    const-string v16, "\u001b"

    .line 176
    .line 177
    const-string v17, "\u001c"

    .line 178
    .line 179
    const-string v18, "\u001d"

    .line 180
    .line 181
    const-string v19, "\u001e"

    .line 182
    .line 183
    const-string v20, "\u001f"

    .line 184
    .line 185
    const-string v21, "@"

    .line 186
    .line 187
    const-string v22, "\\"

    .line 188
    .line 189
    const-string v23, "^"

    .line 190
    .line 191
    const-string v24, "_"

    .line 192
    .line 193
    const-string v25, "`"

    .line 194
    .line 195
    const-string v26, "|"

    .line 196
    .line 197
    const-string v27, "~"

    .line 198
    .line 199
    const-string v28, "\u007f"

    .line 200
    .line 201
    const-string v29, "CTRL_LL"

    .line 202
    .line 203
    const-string v30, "CTRL_UL"

    .line 204
    .line 205
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->d:[Ljava/lang/String;

    .line 210
    .line 211
    const-string v31, "}"

    .line 212
    .line 213
    const-string v32, "CTRL_UL"

    .line 214
    .line 215
    const-string v1, "FLG(n)"

    .line 216
    .line 217
    const-string v2, "\r"

    .line 218
    .line 219
    const-string v3, "\r\n"

    .line 220
    .line 221
    const-string v4, ". "

    .line 222
    .line 223
    const-string v5, ", "

    .line 224
    .line 225
    const-string v6, ": "

    .line 226
    .line 227
    const-string v7, "!"

    .line 228
    .line 229
    const-string v8, "\""

    .line 230
    .line 231
    const-string v9, "#"

    .line 232
    .line 233
    const-string v10, "$"

    .line 234
    .line 235
    const-string v11, "%"

    .line 236
    .line 237
    const-string v12, "&"

    .line 238
    .line 239
    const-string v13, "\'"

    .line 240
    .line 241
    const-string v14, "("

    .line 242
    .line 243
    const-string v15, ")"

    .line 244
    .line 245
    const-string v16, "*"

    .line 246
    .line 247
    const-string v17, "+"

    .line 248
    .line 249
    const-string v18, ","

    .line 250
    .line 251
    const-string v19, "-"

    .line 252
    .line 253
    const-string v20, "."

    .line 254
    .line 255
    const-string v21, "/"

    .line 256
    .line 257
    const-string v22, ":"

    .line 258
    .line 259
    const-string v23, ";"

    .line 260
    .line 261
    const-string v24, "<"

    .line 262
    .line 263
    const-string v25, "="

    .line 264
    .line 265
    const-string v26, ">"

    .line 266
    .line 267
    const-string v27, "?"

    .line 268
    .line 269
    const-string v28, "["

    .line 270
    .line 271
    const-string v29, "]"

    .line 272
    .line 273
    const-string v30, "{"

    .line 274
    .line 275
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    .line 280
    .line 281
    const-string v15, "CTRL_UL"

    .line 282
    .line 283
    const-string v16, "CTRL_US"

    .line 284
    .line 285
    const-string v1, "CTRL_PS"

    .line 286
    .line 287
    const-string v2, " "

    .line 288
    .line 289
    const-string v3, "0"

    .line 290
    .line 291
    const-string v4, "1"

    .line 292
    .line 293
    const-string v5, "2"

    .line 294
    .line 295
    const-string v6, "3"

    .line 296
    .line 297
    const-string v7, "4"

    .line 298
    .line 299
    const-string v8, "5"

    .line 300
    .line 301
    const-string v9, "6"

    .line 302
    .line 303
    const-string v10, "7"

    .line 304
    .line 305
    const-string v11, "8"

    .line 306
    .line 307
    const-string v12, "9"

    .line 308
    .line 309
    const-string v13, ","

    .line 310
    .line 311
    const-string v14, "."

    .line 312
    .line 313
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->f:[Ljava/lang/String;

    .line 318
    .line 319
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 320
    .line 321
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->g:Ljava/nio/charset/Charset;

    .line 322
    .line 323
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a([Z)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x7

    .line 3
    .line 4
    div-int/lit8 v0, v0, 0x8

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    mul-int/lit8 v3, v2, 0x8

    .line 12
    .line 13
    invoke-static {p0, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->h([ZI)B

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    aput-byte v3, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v1
.end method

.method private b([Z)Lcom/google/zxing/aztec/decoder/Decoder$b;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 6
    .line 7
    invoke-virtual {v2}, Lgd/a;->e()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    if-gt v2, v3, :cond_0

    .line 13
    .line 14
    sget-object v2, Lmd/a;->j:Lmd/a;

    .line 15
    .line 16
    const/4 v4, 0x6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, v1, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 19
    .line 20
    invoke-virtual {v2}, Lgd/a;->e()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-gt v2, v4, :cond_1

    .line 27
    .line 28
    sget-object v2, Lmd/a;->n:Lmd/a;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, v1, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 32
    .line 33
    invoke-virtual {v2}, Lgd/a;->e()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v4, 0x16

    .line 38
    .line 39
    if-gt v2, v4, :cond_2

    .line 40
    .line 41
    sget-object v2, Lmd/a;->i:Lmd/a;

    .line 42
    .line 43
    const/16 v4, 0xa

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object v2, Lmd/a;->h:Lmd/a;

    .line 47
    .line 48
    const/16 v4, 0xc

    .line 49
    .line 50
    :goto_0
    iget-object v5, v1, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 51
    .line 52
    invoke-virtual {v5}, Lgd/a;->d()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    array-length v6, v0

    .line 57
    div-int/2addr v6, v4

    .line 58
    if-lt v6, v5, :cond_e

    .line 59
    .line 60
    array-length v7, v0

    .line 61
    rem-int/2addr v7, v4

    .line 62
    new-array v8, v6, [I

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    move v10, v9

    .line 66
    :goto_1
    if-ge v10, v6, :cond_3

    .line 67
    .line 68
    invoke-static {v0, v7, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    aput v11, v8, v10

    .line 73
    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 75
    .line 76
    add-int/2addr v7, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :try_start_0
    new-instance v0, Lmd/c;

    .line 79
    .line 80
    invoke-direct {v0, v2}, Lmd/c;-><init>(Lmd/a;)V

    .line 81
    .line 82
    .line 83
    sub-int v2, v6, v5

    .line 84
    .line 85
    invoke-virtual {v0, v8, v2}, Lmd/c;->a([II)I

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v7, 0x1

    .line 90
    shl-int v10, v7, v4

    .line 91
    .line 92
    add-int/lit8 v11, v10, -0x1

    .line 93
    .line 94
    move v12, v9

    .line 95
    move v13, v12

    .line 96
    :goto_2
    if-ge v12, v5, :cond_7

    .line 97
    .line 98
    aget v14, v8, v12

    .line 99
    .line 100
    if-eqz v14, :cond_6

    .line 101
    .line 102
    if-eq v14, v11, :cond_6

    .line 103
    .line 104
    if-eq v14, v7, :cond_4

    .line 105
    .line 106
    add-int/lit8 v15, v10, -0x2

    .line 107
    .line 108
    if-ne v14, v15, :cond_5

    .line 109
    .line 110
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 111
    .line 112
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    throw v0

    .line 120
    :cond_7
    mul-int v11, v5, v4

    .line 121
    .line 122
    sub-int/2addr v11, v13

    .line 123
    new-array v11, v11, [Z

    .line 124
    .line 125
    move v12, v9

    .line 126
    move v13, v12

    .line 127
    :goto_3
    if-ge v12, v5, :cond_d

    .line 128
    .line 129
    aget v14, v8, v12

    .line 130
    .line 131
    if-eq v14, v7, :cond_a

    .line 132
    .line 133
    add-int/lit8 v15, v10, -0x2

    .line 134
    .line 135
    if-ne v14, v15, :cond_8

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    add-int/lit8 v15, v4, -0x1

    .line 139
    .line 140
    :goto_4
    if-ltz v15, :cond_c

    .line 141
    .line 142
    add-int/lit8 v16, v13, 0x1

    .line 143
    .line 144
    shl-int v17, v7, v15

    .line 145
    .line 146
    and-int v17, v14, v17

    .line 147
    .line 148
    if-eqz v17, :cond_9

    .line 149
    .line 150
    move/from16 v17, v7

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    move/from16 v17, v9

    .line 154
    .line 155
    :goto_5
    aput-boolean v17, v11, v13

    .line 156
    .line 157
    add-int/lit8 v15, v15, -0x1

    .line 158
    .line 159
    move/from16 v13, v16

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_a
    :goto_6
    add-int v15, v13, v4

    .line 163
    .line 164
    sub-int/2addr v15, v7

    .line 165
    if-le v14, v7, :cond_b

    .line 166
    .line 167
    move v14, v7

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    move v14, v9

    .line 170
    :goto_7
    invoke-static {v11, v13, v15, v14}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v14, v4, -0x1

    .line 174
    .line 175
    add-int/2addr v13, v14

    .line 176
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_d
    mul-int/lit8 v2, v2, 0x64

    .line 180
    .line 181
    div-int/2addr v2, v6

    .line 182
    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 183
    .line 184
    invoke-direct {v3, v11, v0, v2}, Lcom/google/zxing/aztec/decoder/Decoder$b;-><init>([ZII)V

    .line 185
    .line 186
    .line 187
    return-object v3

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lcom/google/zxing/FormatException;->getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    throw v0

    .line 194
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    throw v0
.end method

.method private d(Lkd/b;)[Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 6
    .line 7
    invoke-virtual {v2}, Lgd/a;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 12
    .line 13
    invoke-virtual {v3}, Lgd/a;->e()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/16 v4, 0xb

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v4, 0xe

    .line 23
    .line 24
    :goto_0
    mul-int/lit8 v5, v3, 0x4

    .line 25
    .line 26
    add-int/2addr v4, v5

    .line 27
    new-array v5, v4, [I

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->j(IZ)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    new-array v6, v6, [Z

    .line 34
    .line 35
    const/4 v8, 0x2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    :goto_1
    if-ge v9, v4, :cond_2

    .line 40
    .line 41
    aput v9, v5, v9

    .line 42
    .line 43
    add-int/lit8 v9, v9, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v9, v4, 0x1

    .line 47
    .line 48
    div-int/lit8 v10, v4, 0x2

    .line 49
    .line 50
    add-int/lit8 v11, v10, -0x1

    .line 51
    .line 52
    div-int/lit8 v11, v11, 0xf

    .line 53
    .line 54
    mul-int/2addr v11, v8

    .line 55
    add-int/2addr v9, v11

    .line 56
    div-int/2addr v9, v8

    .line 57
    const/4 v11, 0x0

    .line 58
    :goto_2
    if-ge v11, v10, :cond_2

    .line 59
    .line 60
    div-int/lit8 v12, v11, 0xf

    .line 61
    .line 62
    add-int/2addr v12, v11

    .line 63
    sub-int v13, v10, v11

    .line 64
    .line 65
    add-int/lit8 v13, v13, -0x1

    .line 66
    .line 67
    sub-int v14, v9, v12

    .line 68
    .line 69
    add-int/lit8 v14, v14, -0x1

    .line 70
    .line 71
    aput v14, v5, v13

    .line 72
    .line 73
    add-int v13, v10, v11

    .line 74
    .line 75
    add-int/2addr v12, v9

    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    aput v12, v5, v13

    .line 79
    .line 80
    add-int/lit8 v11, v11, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    :goto_3
    if-ge v9, v3, :cond_6

    .line 86
    .line 87
    sub-int v11, v3, v9

    .line 88
    .line 89
    mul-int/lit8 v11, v11, 0x4

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    const/16 v12, 0x9

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_3
    const/16 v12, 0xc

    .line 97
    .line 98
    :goto_4
    add-int/2addr v11, v12

    .line 99
    mul-int/lit8 v12, v9, 0x2

    .line 100
    .line 101
    add-int/lit8 v13, v4, -0x1

    .line 102
    .line 103
    sub-int/2addr v13, v12

    .line 104
    const/4 v14, 0x0

    .line 105
    :goto_5
    if-ge v14, v11, :cond_5

    .line 106
    .line 107
    mul-int/lit8 v15, v14, 0x2

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    :goto_6
    if-ge v7, v8, :cond_4

    .line 111
    .line 112
    add-int v16, v10, v15

    .line 113
    .line 114
    add-int v16, v16, v7

    .line 115
    .line 116
    add-int v17, v12, v7

    .line 117
    .line 118
    aget v8, v5, v17

    .line 119
    .line 120
    add-int v18, v12, v14

    .line 121
    .line 122
    aget v0, v5, v18

    .line 123
    .line 124
    invoke-virtual {v1, v8, v0}, Lkd/b;->h(II)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    aput-boolean v0, v6, v16

    .line 129
    .line 130
    mul-int/lit8 v0, v11, 0x2

    .line 131
    .line 132
    add-int/2addr v0, v10

    .line 133
    add-int/2addr v0, v15

    .line 134
    add-int/2addr v0, v7

    .line 135
    aget v8, v5, v18

    .line 136
    .line 137
    sub-int v16, v13, v7

    .line 138
    .line 139
    move/from16 v18, v2

    .line 140
    .line 141
    aget v2, v5, v16

    .line 142
    .line 143
    invoke-virtual {v1, v8, v2}, Lkd/b;->h(II)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    aput-boolean v2, v6, v0

    .line 148
    .line 149
    mul-int/lit8 v0, v11, 0x4

    .line 150
    .line 151
    add-int/2addr v0, v10

    .line 152
    add-int/2addr v0, v15

    .line 153
    add-int/2addr v0, v7

    .line 154
    aget v2, v5, v16

    .line 155
    .line 156
    sub-int v8, v13, v14

    .line 157
    .line 158
    move/from16 v16, v3

    .line 159
    .line 160
    aget v3, v5, v8

    .line 161
    .line 162
    invoke-virtual {v1, v2, v3}, Lkd/b;->h(II)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    aput-boolean v2, v6, v0

    .line 167
    .line 168
    mul-int/lit8 v0, v11, 0x6

    .line 169
    .line 170
    add-int/2addr v0, v10

    .line 171
    add-int/2addr v0, v15

    .line 172
    add-int/2addr v0, v7

    .line 173
    aget v2, v5, v8

    .line 174
    .line 175
    aget v3, v5, v17

    .line 176
    .line 177
    invoke-virtual {v1, v2, v3}, Lkd/b;->h(II)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    aput-boolean v2, v6, v0

    .line 182
    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 184
    .line 185
    move-object/from16 v0, p0

    .line 186
    .line 187
    move/from16 v3, v16

    .line 188
    .line 189
    move/from16 v2, v18

    .line 190
    .line 191
    const/4 v8, 0x2

    .line 192
    goto :goto_6

    .line 193
    :cond_4
    move/from16 v18, v2

    .line 194
    .line 195
    move/from16 v16, v3

    .line 196
    .line 197
    add-int/lit8 v14, v14, 0x1

    .line 198
    .line 199
    move-object/from16 v0, p0

    .line 200
    .line 201
    const/4 v8, 0x2

    .line 202
    goto :goto_5

    .line 203
    :cond_5
    move/from16 v18, v2

    .line 204
    .line 205
    move/from16 v16, v3

    .line 206
    .line 207
    mul-int/lit8 v11, v11, 0x8

    .line 208
    .line 209
    add-int/2addr v10, v11

    .line 210
    add-int/lit8 v9, v9, 0x1

    .line 211
    .line 212
    move-object/from16 v0, p0

    .line 213
    .line 214
    const/4 v8, 0x2

    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_6
    return-object v6
.end method

.method private static e(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->f:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object p0, p0, p1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p1, "Bad table"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->e:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object p0, p0, p1

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->d:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object p0, p0, p1

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->c:[Ljava/lang/String;

    .line 48
    .line 49
    aget-object p0, p0, p1

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->b:[Ljava/lang/String;

    .line 53
    .line 54
    aget-object p0, p0, p1

    .line 55
    .line 56
    return-object p0
.end method

.method private static f([Z)Ljava/lang/String;
    .locals 14

    .line 1
    array-length v0, p0

    .line 2
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    array-length v3, p0

    .line 7
    const/4 v4, 0x5

    .line 8
    sub-int/2addr v3, v4

    .line 9
    const/4 v5, 0x4

    .line 10
    div-int/2addr v3, v5

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder;->g:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v8, v6

    .line 23
    move v9, v7

    .line 24
    move-object v6, v1

    .line 25
    :goto_0
    if-ge v9, v0, :cond_12

    .line 26
    .line 27
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 28
    .line 29
    const/16 v11, 0xb

    .line 30
    .line 31
    if-ne v1, v10, :cond_5

    .line 32
    .line 33
    sub-int v1, v0, v9

    .line 34
    .line 35
    if-ge v1, v4, :cond_0

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    invoke-static {p0, v9, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/lit8 v10, v9, 0x5

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    sub-int v1, v0, v10

    .line 48
    .line 49
    if-ge v1, v11, :cond_1

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_1
    invoke-static {p0, v10, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    add-int/lit8 v10, v9, 0x10

    .line 60
    .line 61
    :cond_2
    move v9, v7

    .line 62
    :goto_1
    if-ge v9, v1, :cond_4

    .line 63
    .line 64
    sub-int v11, v0, v10

    .line 65
    .line 66
    const/16 v12, 0x8

    .line 67
    .line 68
    if-ge v11, v12, :cond_3

    .line 69
    .line 70
    move v9, v0

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-static {p0, v10, v12}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    int-to-byte v11, v11

    .line 77
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v10, v10, 0x8

    .line 81
    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move v9, v10

    .line 86
    :goto_2
    move-object v1, v6

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 89
    .line 90
    if-ne v1, v10, :cond_6

    .line 91
    .line 92
    move v10, v5

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move v10, v4

    .line 95
    :goto_3
    sub-int v12, v0, v9

    .line 96
    .line 97
    if-ge v12, v10, :cond_7

    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_7
    invoke-static {p0, v9, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    add-int/2addr v9, v10

    .line 106
    invoke-static {v1, v12}, Lcom/google/zxing/aztec/decoder/Decoder;->e(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const-string v12, "FLG(n)"

    .line 111
    .line 112
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_f

    .line 117
    .line 118
    sub-int v1, v0, v9

    .line 119
    .line 120
    const/4 v10, 0x3

    .line 121
    if-ge v1, v10, :cond_8

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_8
    invoke-static {p0, v9, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/lit8 v9, v9, 0x3

    .line 130
    .line 131
    :try_start_0
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 143
    .line 144
    .line 145
    if-eqz v1, :cond_e

    .line 146
    .line 147
    const/4 v10, 0x7

    .line 148
    if-eq v1, v10, :cond_d

    .line 149
    .line 150
    sub-int v10, v0, v9

    .line 151
    .line 152
    mul-int/lit8 v12, v1, 0x4

    .line 153
    .line 154
    if-ge v10, v12, :cond_9

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_9
    move v8, v7

    .line 158
    :goto_4
    add-int/lit8 v10, v1, -0x1

    .line 159
    .line 160
    if-lez v1, :cond_b

    .line 161
    .line 162
    invoke-static {p0, v9, v5}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    add-int/lit8 v9, v9, 0x4

    .line 167
    .line 168
    const/4 v12, 0x2

    .line 169
    if-lt v1, v12, :cond_a

    .line 170
    .line 171
    if-gt v1, v11, :cond_a

    .line 172
    .line 173
    mul-int/lit8 v8, v8, 0xa

    .line 174
    .line 175
    add-int/lit8 v1, v1, -0x2

    .line 176
    .line 177
    add-int/2addr v8, v1

    .line 178
    move v1, v10

    .line 179
    goto :goto_4

    .line 180
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    throw p0

    .line 185
    :cond_b
    invoke-static {v8}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_c

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    goto :goto_2

    .line 196
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    throw p0

    .line 201
    :cond_d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    throw p0

    .line 206
    :cond_e
    const/16 v1, 0x1d

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :catch_0
    move-exception p0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_f
    const-string v11, "CTRL_"

    .line 220
    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    if-eqz v11, :cond_11

    .line 226
    .line 227
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-static {v6}, Lcom/google/zxing/aztec/decoder/Decoder;->g(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const/4 v11, 0x6

    .line 236
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    const/16 v11, 0x4c

    .line 241
    .line 242
    if-ne v10, v11, :cond_10

    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_10
    move-object v13, v6

    .line 247
    move-object v6, v1

    .line 248
    move-object v1, v13

    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_11
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 252
    .line 253
    invoke-virtual {v10, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    array-length v10, v1

    .line 258
    invoke-virtual {v3, v1, v7, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :cond_12
    :goto_5
    :try_start_1
    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {v3, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    return-object p0

    .line 279
    :catch_1
    move-exception p0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 281
    .line 282
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    throw v0
.end method

.method private static g(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x44

    .line 6
    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x50

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4c

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x4d

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 37
    .line 38
    return-object p0
.end method

.method private static h([ZI)B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    sub-int/2addr v0, p1

    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    int-to-byte p0, p0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->i([ZII)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    shl-int/2addr p0, v1

    .line 19
    goto :goto_0
.end method

.method private static i([ZII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    :goto_0
    add-int v2, p1, p2

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    shl-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    aget-boolean v2, p0, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0
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


# virtual methods
.method public c(Lgd/a;)Lkd/d;
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->a:Lgd/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkd/f;->a()Lkd/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->d(Lkd/b;)[Z

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->b([Z)Lcom/google/zxing/aztec/decoder/Decoder$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$b;->a(Lcom/google/zxing/aztec/decoder/Decoder$b;)[Z

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/zxing/aztec/decoder/Decoder;->a([Z)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$b;->a(Lcom/google/zxing/aztec/decoder/Decoder$b;)[Z

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->f([Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lkd/d;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$b;->b(Lcom/google/zxing/aztec/decoder/Decoder$b;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x1

    .line 42
    new-array v4, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    aput-object v3, v4, v5

    .line 46
    .line 47
    const-string v3, "%d%%"

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v2, v0, v1, v4, v3}, Lkd/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$b;->a(Lcom/google/zxing/aztec/decoder/Decoder$b;)[Z

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    array-length v0, v0

    .line 62
    invoke-virtual {v2, v0}, Lkd/d;->o(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder$b;->c(Lcom/google/zxing/aztec/decoder/Decoder$b;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v2, p1}, Lkd/d;->n(Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    return-object v2
.end method
