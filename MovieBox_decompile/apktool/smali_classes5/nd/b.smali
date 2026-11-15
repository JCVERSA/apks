.class public final Lnd/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/zxing/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(Lae/a;II)Lkd/b;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lae/a;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lae/a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    div-int v4, v2, v0

    .line 18
    .line 19
    div-int v5, v3, v1

    .line 20
    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    mul-int v5, v0, v4

    .line 26
    .line 27
    sub-int/2addr v2, v5

    .line 28
    div-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    mul-int v5, v1, v4

    .line 31
    .line 32
    sub-int/2addr v3, v5

    .line 33
    div-int/lit8 v3, v3, 0x2

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-lt p2, v1, :cond_1

    .line 37
    .line 38
    if-ge p1, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v6, Lkd/b;

    .line 42
    .line 43
    invoke-direct {v6, p1, p2}, Lkd/b;-><init>(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    new-instance v6, Lkd/b;

    .line 48
    .line 49
    invoke-direct {v6, v0, v1}, Lkd/b;-><init>(II)V

    .line 50
    .line 51
    .line 52
    move v2, v5

    .line 53
    move v3, v2

    .line 54
    :goto_1
    invoke-virtual {v6}, Lkd/b;->b()V

    .line 55
    .line 56
    .line 57
    move p1, v5

    .line 58
    :goto_2
    if-ge p1, v1, :cond_4

    .line 59
    .line 60
    move v7, v2

    .line 61
    move p2, v5

    .line 62
    :goto_3
    if-ge p2, v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, p2, p1}, Lae/a;->b(II)B

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v9, 0x1

    .line 69
    if-ne v8, v9, :cond_2

    .line 70
    .line 71
    invoke-virtual {v6, v7, v3, v4, v4}, Lkd/b;->s(IIII)V

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    add-int/2addr v7, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    add-int/2addr v3, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    return-object v6
.end method

.method private static c(Lpd/b;Lpd/d;II)Lkd/b;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lpd/d;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lpd/d;->g()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Lae/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lpd/d;->j()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Lpd/d;->i()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v2, v3, v4}, Lae/a;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v4, v1, :cond_9

    .line 26
    .line 27
    iget v6, p1, Lpd/d;->e:I

    .line 28
    .line 29
    rem-int v6, v4, v6

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    move v6, v3

    .line 35
    move v8, v6

    .line 36
    :goto_1
    invoke-virtual {p1}, Lpd/d;->j()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-ge v6, v9, :cond_1

    .line 41
    .line 42
    rem-int/lit8 v9, v6, 0x2

    .line 43
    .line 44
    if-nez v9, :cond_0

    .line 45
    .line 46
    move v9, v7

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    move v9, v3

    .line 49
    :goto_2
    invoke-virtual {v2, v8, v5, v9}, Lae/a;->g(IIZ)V

    .line 50
    .line 51
    .line 52
    add-int/2addr v8, v7

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    :cond_2
    move v6, v3

    .line 59
    move v8, v6

    .line 60
    :goto_3
    if-ge v6, v0, :cond_6

    .line 61
    .line 62
    iget v9, p1, Lpd/d;->d:I

    .line 63
    .line 64
    rem-int v9, v6, v9

    .line 65
    .line 66
    if-nez v9, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, v8, v5, v7}, Lae/a;->g(IIZ)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0, v6, v4}, Lpd/b;->e(II)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {v2, v8, v5, v9}, Lae/a;->g(IIZ)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v9, v8, 0x1

    .line 81
    .line 82
    iget v10, p1, Lpd/d;->d:I

    .line 83
    .line 84
    rem-int v11, v6, v10

    .line 85
    .line 86
    sub-int/2addr v10, v7

    .line 87
    if-ne v11, v10, :cond_5

    .line 88
    .line 89
    rem-int/lit8 v10, v4, 0x2

    .line 90
    .line 91
    if-nez v10, :cond_4

    .line 92
    .line 93
    move v10, v7

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move v10, v3

    .line 96
    :goto_4
    invoke-virtual {v2, v9, v5, v10}, Lae/a;->g(IIZ)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v8, v8, 0x2

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    move v8, v9

    .line 103
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 107
    .line 108
    iget v8, p1, Lpd/d;->e:I

    .line 109
    .line 110
    rem-int v9, v4, v8

    .line 111
    .line 112
    sub-int/2addr v8, v7

    .line 113
    if-ne v9, v8, :cond_8

    .line 114
    .line 115
    move v8, v3

    .line 116
    move v9, v8

    .line 117
    :goto_6
    invoke-virtual {p1}, Lpd/d;->j()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-ge v8, v10, :cond_7

    .line 122
    .line 123
    invoke-virtual {v2, v9, v6, v7}, Lae/a;->g(IIZ)V

    .line 124
    .line 125
    .line 126
    add-int/2addr v9, v7

    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    add-int/lit8 v5, v5, 0x2

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_8
    move v5, v6

    .line 134
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    invoke-static {v2, p2, p3}, Lnd/b;->b(Lae/a;II)Lkd/b;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lkd/b;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 8
    .line 9
    if-ne p2, v0, :cond_8

    .line 10
    .line 11
    if-ltz p3, :cond_7

    .line 12
    .line 13
    if-ltz p4, :cond_7

    .line 14
    .line 15
    sget-object p2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 16
    .line 17
    if-eqz p5, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    .line 20
    .line 21
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move-object p2, v0

    .line 30
    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 31
    .line 32
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 40
    .line 41
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz p5, :cond_5

    .line 52
    .line 53
    sget-object v3, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 54
    .line 55
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    sget-object v3, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    .line 76
    .line 77
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    move v0, v1

    .line 98
    :cond_2
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 99
    .line 100
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p5

    .line 110
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p5

    .line 114
    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    move-object p5, v2

    .line 120
    :goto_0
    if-eqz v0, :cond_4

    .line 121
    .line 122
    const/16 v0, 0x1d

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    const/4 v0, -0x1

    .line 126
    :goto_1
    invoke-static {p1, p5, v0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->h(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    if-eqz p5, :cond_6

    .line 132
    .line 133
    sget-object v3, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    .line 134
    .line 135
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_6

    .line 140
    .line 141
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p5

    .line 145
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p5

    .line 149
    invoke-static {p5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p5

    .line 153
    if-eqz p5, :cond_6

    .line 154
    .line 155
    move v0, v1

    .line 156
    :cond_6
    invoke-static {p1, p2, v2, v2, v0}, Lcom/google/zxing/datamatrix/encoder/g;->b(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/c;Lcom/google/zxing/c;Z)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result p5

    .line 164
    invoke-static {p5, p2, v2, v2, v1}, Lpd/d;->l(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/c;Lcom/google/zxing/c;Z)Lpd/d;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {p1, p2}, Lpd/c;->b(Ljava/lang/String;Lpd/d;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance p5, Lpd/b;

    .line 173
    .line 174
    invoke-virtual {p2}, Lpd/d;->h()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p2}, Lpd/d;->g()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-direct {p5, p1, v0, v1}, Lpd/b;-><init>(Ljava/lang/CharSequence;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p5}, Lpd/b;->h()V

    .line 186
    .line 187
    .line 188
    invoke-static {p5, p2, p3, p4}, Lnd/b;->c(Lpd/b;Lpd/d;II)Lkd/b;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    return-object p1

    .line 193
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string p5, "Requested dimensions can\'t be negative: "

    .line 201
    .line 202
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const/16 p3, 0x78

    .line 209
    .line 210
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    new-instance p3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string p4, "Can only encode DATA_MATRIX, but got "

    .line 232
    .line 233
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 248
    .line 249
    const-string p2, "Found empty contents"

    .line 250
    .line 251
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1
.end method
