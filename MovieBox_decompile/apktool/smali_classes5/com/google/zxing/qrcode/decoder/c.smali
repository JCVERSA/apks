.class abstract Lcom/google/zxing/qrcode/decoder/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/zxing/qrcode/decoder/c;->a:[C

    .line 8
    .line 9
    return-void
.end method

.method static a([BLcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lkd/d;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v7, Lkd/c;

    .line 4
    .line 5
    move-object/from16 v9, p0

    .line 6
    .line 7
    invoke-direct {v7, v9}, Lkd/c;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v1, 0x32

    .line 13
    .line 14
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v10, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, -0x1

    .line 25
    move v13, v1

    .line 26
    move v14, v13

    .line 27
    move v15, v14

    .line 28
    move/from16 v16, v2

    .line 29
    .line 30
    move/from16 v17, v16

    .line 31
    .line 32
    const/16 v18, 0x0

    .line 33
    .line 34
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lkd/c;->a()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v6, 0x4

    .line 39
    if-ge v1, v6, :cond_0

    .line 40
    .line 41
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 42
    .line 43
    :goto_1
    move-object v5, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-virtual {v7, v6}, Lkd/c;->d(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    sget-object v1, Lcom/google/zxing/qrcode/decoder/c$a;->a:[I

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    aget v2, v1, v2

    .line 61
    .line 62
    const/4 v4, 0x3

    .line 63
    const/4 v3, 0x2

    .line 64
    packed-switch v2, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v7, v2}, Lkd/c;->d(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    aget v1, v1, v19

    .line 80
    .line 81
    if-eq v1, v11, :cond_4

    .line 82
    .line 83
    if-eq v1, v3, :cond_3

    .line 84
    .line 85
    if-eq v1, v4, :cond_2

    .line 86
    .line 87
    if-ne v1, v6, :cond_1

    .line 88
    .line 89
    invoke-static {v7, v8, v2}, Lcom/google/zxing/qrcode/decoder/c;->e(Lkd/c;Ljava/lang/StringBuilder;I)V

    .line 90
    .line 91
    .line 92
    :pswitch_0
    move/from16 v20, v3

    .line 93
    .line 94
    move/from16 v19, v4

    .line 95
    .line 96
    move-object v12, v5

    .line 97
    move v3, v11

    .line 98
    move v11, v6

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    throw v0

    .line 106
    :cond_2
    move-object v1, v7

    .line 107
    move/from16 v19, v2

    .line 108
    .line 109
    move-object v2, v8

    .line 110
    move/from16 v20, v3

    .line 111
    .line 112
    move/from16 v3, v19

    .line 113
    .line 114
    move/from16 v19, v4

    .line 115
    .line 116
    move-object/from16 v4, v18

    .line 117
    .line 118
    move-object v12, v5

    .line 119
    move-object v5, v10

    .line 120
    move v11, v6

    .line 121
    move-object/from16 v6, p3

    .line 122
    .line 123
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/decoder/c;->c(Lkd/c;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    const/4 v3, 0x1

    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :cond_3
    move v1, v2

    .line 130
    move/from16 v20, v3

    .line 131
    .line 132
    move/from16 v19, v4

    .line 133
    .line 134
    move-object v12, v5

    .line 135
    move v11, v6

    .line 136
    invoke-static {v7, v8, v1, v13}, Lcom/google/zxing/qrcode/decoder/c;->b(Lkd/c;Ljava/lang/StringBuilder;IZ)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move v1, v2

    .line 141
    move/from16 v20, v3

    .line 142
    .line 143
    move/from16 v19, v4

    .line 144
    .line 145
    move-object v12, v5

    .line 146
    move v11, v6

    .line 147
    invoke-static {v7, v8, v1}, Lcom/google/zxing/qrcode/decoder/c;->f(Lkd/c;Ljava/lang/StringBuilder;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :pswitch_1
    move/from16 v20, v3

    .line 152
    .line 153
    move/from16 v19, v4

    .line 154
    .line 155
    move-object v12, v5

    .line 156
    move v11, v6

    .line 157
    invoke-virtual {v7, v11}, Lkd/c;->d(I)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v12, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/g;)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v7, v2}, Lkd/c;->d(I)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    const/4 v3, 0x1

    .line 170
    if-ne v1, v3, :cond_7

    .line 171
    .line 172
    invoke-static {v7, v8, v2}, Lcom/google/zxing/qrcode/decoder/c;->d(Lkd/c;Ljava/lang/StringBuilder;I)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :pswitch_2
    move/from16 v20, v3

    .line 178
    .line 179
    move/from16 v19, v4

    .line 180
    .line 181
    move-object v12, v5

    .line 182
    move v3, v11

    .line 183
    move v11, v6

    .line 184
    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/c;->g(Lkd/c;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    .line 189
    .line 190
    .line 191
    move-result-object v18

    .line 192
    if-eqz v18, :cond_5

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    throw v0

    .line 200
    :pswitch_3
    move/from16 v20, v3

    .line 201
    .line 202
    move/from16 v19, v4

    .line 203
    .line 204
    move-object v12, v5

    .line 205
    move v3, v11

    .line 206
    move v11, v6

    .line 207
    invoke-virtual {v7}, Lkd/c;->a()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    const/16 v2, 0x10

    .line 212
    .line 213
    if-lt v1, v2, :cond_6

    .line 214
    .line 215
    const/16 v1, 0x8

    .line 216
    .line 217
    invoke-virtual {v7, v1}, Lkd/c;->d(I)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-virtual {v7, v1}, Lkd/c;->d(I)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    move/from16 v17, v1

    .line 226
    .line 227
    move/from16 v16, v2

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    throw v0

    .line 235
    :pswitch_4
    move/from16 v20, v3

    .line 236
    .line 237
    move/from16 v19, v4

    .line 238
    .line 239
    move-object v12, v5

    .line 240
    move v3, v11

    .line 241
    move v11, v6

    .line 242
    move v13, v3

    .line 243
    move v15, v13

    .line 244
    goto :goto_4

    .line 245
    :pswitch_5
    move/from16 v20, v3

    .line 246
    .line 247
    move/from16 v19, v4

    .line 248
    .line 249
    move-object v12, v5

    .line 250
    move v3, v11

    .line 251
    move v11, v6

    .line 252
    move v13, v3

    .line 253
    move v14, v13

    .line 254
    :cond_7
    :goto_4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    if-ne v12, v1, :cond_f

    .line 257
    .line 258
    if-eqz v18, :cond_a

    .line 259
    .line 260
    if-eqz v14, :cond_8

    .line 261
    .line 262
    move v15, v11

    .line 263
    goto :goto_6

    .line 264
    :cond_8
    if-eqz v15, :cond_9

    .line 265
    .line 266
    const/4 v0, 0x6

    .line 267
    :goto_5
    move v15, v0

    .line 268
    goto :goto_6

    .line 269
    :cond_9
    move/from16 v15, v20

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_a
    if-eqz v14, :cond_b

    .line 273
    .line 274
    move/from16 v15, v19

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_b
    if-eqz v15, :cond_c

    .line 278
    .line 279
    const/4 v0, 0x5

    .line 280
    goto :goto_5

    .line 281
    :cond_c
    move v15, v3

    .line 282
    :goto_6
    new-instance v0, Lkd/d;

    .line 283
    .line 284
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_d

    .line 293
    .line 294
    const/4 v11, 0x0

    .line 295
    goto :goto_7

    .line 296
    :cond_d
    move-object v11, v10

    .line 297
    :goto_7
    if-nez p2, :cond_e

    .line 298
    .line 299
    const/4 v12, 0x0

    .line 300
    goto :goto_8

    .line 301
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    move-object v12, v2

    .line 306
    :goto_8
    move-object v8, v0

    .line 307
    move-object/from16 v9, p0

    .line 308
    .line 309
    move-object v10, v1

    .line 310
    move/from16 v13, v16

    .line 311
    .line 312
    move/from16 v14, v17

    .line 313
    .line 314
    invoke-direct/range {v8 .. v15}, Lkd/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    .line 315
    .line 316
    .line 317
    return-object v0

    .line 318
    :cond_f
    move v11, v3

    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    throw v0

    .line 326
    nop

    .line 327
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lkd/c;Ljava/lang/StringBuilder;IZ)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, 0x1

    .line 6
    if-le p2, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lkd/c;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    div-int/lit8 v2, v1, 0x2d

    .line 21
    .line 22
    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    rem-int/lit8 v1, v1, 0x2d

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 p2, p2, -0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    :cond_1
    if-ne p2, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v2, 0x6

    .line 53
    if-lt p2, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lkd/c;->d(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 73
    .line 74
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-ge v0, p0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    const/16 p2, 0x25

    .line 85
    .line 86
    if-ne p0, p2, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    sub-int/2addr p0, v1

    .line 93
    if-ge v0, p0, :cond_4

    .line 94
    .line 95
    add-int/lit8 p0, v0, 0x1

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-ne p3, p2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    const/16 p0, 0x1d

    .line 108
    .line 109
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    return-void
.end method

.method private static c(Lkd/c;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3

    .line 1
    mul-int/lit8 v0, p2, 0x8

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    new-array v0, p2, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p2, :cond_0

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lkd/c;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez p3, :cond_1

    .line 27
    .line 28
    invoke-static {v0, p5}, Lkd/o;->a([BLjava/util/Map;)Ljava/nio/charset/Charset;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->getCharset()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    new-instance p2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    throw p0
.end method

.method private static d(Lkd/c;Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    sget-object v0, Lkd/o;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p2, 0xd

    .line 6
    .line 7
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_2

    .line 12
    .line 13
    mul-int/lit8 v0, p2, 0x2

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-lez p2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0xd

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lkd/c;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    div-int/lit8 v3, v2, 0x60

    .line 27
    .line 28
    shl-int/lit8 v3, v3, 0x8

    .line 29
    .line 30
    rem-int/lit8 v2, v2, 0x60

    .line 31
    .line 32
    or-int/2addr v2, v3

    .line 33
    const/16 v3, 0xa00

    .line 34
    .line 35
    if-ge v2, v3, :cond_0

    .line 36
    .line 37
    const v3, 0xa1a1

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/2addr v2, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const v3, 0xa6a1

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :goto_2
    shr-int/lit8 v3, v2, 0x8

    .line 47
    .line 48
    and-int/lit16 v3, v3, 0xff

    .line 49
    .line 50
    int-to-byte v3, v3

    .line 51
    aput-byte v3, v0, v1

    .line 52
    .line 53
    add-int/lit8 v3, v1, 0x1

    .line 54
    .line 55
    and-int/lit16 v2, v2, 0xff

    .line 56
    .line 57
    int-to-byte v2, v2

    .line 58
    aput-byte v2, v0, v3

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x2

    .line 61
    .line 62
    add-int/lit8 p2, p2, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 66
    .line 67
    sget-object p2, Lkd/o;->c:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    throw p0

    .line 81
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    throw p0
.end method

.method private static e(Lkd/c;Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    mul-int/lit8 v0, p2, 0xd

    .line 2
    .line 3
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    mul-int/lit8 v0, p2, 0x2

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-lez p2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lkd/c;->d(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    div-int/lit16 v3, v2, 0xc0

    .line 23
    .line 24
    shl-int/lit8 v3, v3, 0x8

    .line 25
    .line 26
    rem-int/lit16 v2, v2, 0xc0

    .line 27
    .line 28
    or-int/2addr v2, v3

    .line 29
    const/16 v3, 0x1f00

    .line 30
    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    const v3, 0x8140

    .line 34
    .line 35
    .line 36
    :goto_1
    add-int/2addr v2, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const v3, 0xc140

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_2
    shr-int/lit8 v3, v2, 0x8

    .line 43
    .line 44
    int-to-byte v3, v3

    .line 45
    aput-byte v3, v0, v1

    .line 46
    .line 47
    add-int/lit8 v3, v1, 0x1

    .line 48
    .line 49
    int-to-byte v2, v2

    .line 50
    aput-byte v2, v0, v3

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 58
    .line 59
    sget-object p2, Lkd/o;->b:Ljava/nio/charset/Charset;

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    throw p0
.end method

.method private static f(Lkd/c;Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 1
    :goto_0
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    if-lt p2, v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lkd/c;->d(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x3e8

    .line 17
    .line 18
    if-ge v0, v2, :cond_0

    .line 19
    .line 20
    div-int/lit8 v2, v0, 0x64

    .line 21
    .line 22
    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    div-int/lit8 v2, v0, 0xa

    .line 30
    .line 31
    rem-int/2addr v2, v1

    .line 32
    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    rem-int/lit8 v0, v0, 0xa

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 p2, p2, -0x3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0

    .line 61
    :cond_2
    const/4 v0, 0x2

    .line 62
    if-ne p2, v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/4 v0, 0x7

    .line 69
    if-lt p2, v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lkd/c;->d(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/16 p2, 0x64

    .line 76
    .line 77
    if-ge p0, p2, :cond_3

    .line 78
    .line 79
    div-int/lit8 p2, p0, 0xa

    .line 80
    .line 81
    invoke-static {p2}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    rem-int/2addr p0, v1

    .line 89
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    throw p0

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0}, Lkd/c;->a()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/4 v0, 0x4

    .line 115
    if-lt p2, v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lkd/c;->d(I)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-ge p0, v1, :cond_6

    .line 122
    .line 123
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/c;->h(I)C

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    throw p0

    .line 136
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    throw p0

    .line 141
    :cond_8
    :goto_1
    return-void
.end method

.method private static g(Lkd/c;)I
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkd/c;->d(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/lit16 v2, v1, 0x80

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    and-int/lit8 p0, v1, 0x7f

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    and-int/lit16 v2, v1, 0xc0

    .line 15
    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lkd/c;->d(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    and-int/lit8 v1, v1, 0x3f

    .line 25
    .line 26
    shl-int/lit8 v0, v1, 0x8

    .line 27
    .line 28
    or-int/2addr p0, v0

    .line 29
    return p0

    .line 30
    :cond_1
    and-int/lit16 v0, v1, 0xe0

    .line 31
    .line 32
    const/16 v2, 0xc0

    .line 33
    .line 34
    if-ne v0, v2, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lkd/c;->d(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    and-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    shl-int/lit8 v0, v1, 0x10

    .line 45
    .line 46
    or-int/2addr p0, v0

    .line 47
    return p0

    .line 48
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
.end method

.method private static h(I)C
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/c;->a:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-char p0, v0, p0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method
