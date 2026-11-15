.class public abstract Lcom/google/zxing/datamatrix/encoder/g;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move v1, p1

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sub-int/2addr v1, p1

    .line 22
    return v1
.end method

.method public static b(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/c;Lcom/google/zxing/c;Z)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/zxing/datamatrix/encoder/c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/a;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/h;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/zxing/datamatrix/encoder/h;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/google/zxing/datamatrix/encoder/i;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/google/zxing/datamatrix/encoder/i;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/google/zxing/datamatrix/encoder/d;

    .line 22
    .line 23
    invoke-direct {v4}, Lcom/google/zxing/datamatrix/encoder/d;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/b;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/google/zxing/datamatrix/encoder/b;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x6

    .line 32
    new-array v6, v6, [Lcom/google/zxing/datamatrix/encoder/e;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    aput-object v1, v6, v7

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput-object v0, v6, v1

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    aput-object v2, v6, v8

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    aput-object v3, v6, v2

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v4, v6, v2

    .line 48
    .line 49
    const/4 v3, 0x5

    .line 50
    aput-object v5, v6, v3

    .line 51
    .line 52
    new-instance v4, Lcom/google/zxing/datamatrix/encoder/f;

    .line 53
    .line 54
    invoke-direct {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Lcom/google/zxing/datamatrix/encoder/f;->n(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p2, p3}, Lcom/google/zxing/datamatrix/encoder/f;->l(Lcom/google/zxing/c;Lcom/google/zxing/c;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "[)>\u001e05\u001d"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const-string p2, "\u001e\u0004"

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    const/16 p0, 0xec

    .line 80
    .line 81
    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v8}, Lcom/google/zxing/datamatrix/encoder/f;->m(I)V

    .line 85
    .line 86
    .line 87
    iget p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 88
    .line 89
    add-int/lit8 p0, p0, 0x7

    .line 90
    .line 91
    iput p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_1

    .line 107
    .line 108
    const/16 p0, 0xed

    .line 109
    .line 110
    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v8}, Lcom/google/zxing/datamatrix/encoder/f;->m(I)V

    .line 114
    .line 115
    .line 116
    iget p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 117
    .line 118
    add-int/lit8 p0, p0, 0x7

    .line 119
    .line 120
    iput p0, v4, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 121
    .line 122
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Lcom/google/zxing/datamatrix/encoder/c;->d(Lcom/google/zxing/datamatrix/encoder/f;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->e()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->j()V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->i()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_3

    .line 139
    .line 140
    aget-object p0, v6, v7

    .line 141
    .line 142
    invoke-interface {p0, v4}, Lcom/google/zxing/datamatrix/encoder/e;->a(Lcom/google/zxing/datamatrix/encoder/f;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->e()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-ltz p0, :cond_2

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->e()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->j()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->p()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->g()Lpd/d;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lpd/d;->a()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-ge p0, p1, :cond_4

    .line 175
    .line 176
    if-eqz v7, :cond_4

    .line 177
    .line 178
    if-eq v7, v3, :cond_4

    .line 179
    .line 180
    if-eq v7, v2, :cond_4

    .line 181
    .line 182
    const/16 p0, 0xfe

    .line 183
    .line 184
    invoke-virtual {v4, p0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 185
    .line 186
    .line 187
    :cond_4
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->b()Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-ge p2, p1, :cond_5

    .line 196
    .line 197
    const/16 p2, 0x81

    .line 198
    .line 199
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-ge p2, p1, :cond_6

    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    add-int/2addr p2, v1

    .line 213
    invoke-static {p2}, Lcom/google/zxing/datamatrix/encoder/g;->r(I)C

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_6
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/f;->b()Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    return-object p0
.end method

.method private static c([F[II[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x6

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    aget v2, p0, v1

    .line 7
    .line 8
    float-to-double v2, v2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    double-to-int v2, v2

    .line 14
    aput v2, p1, v1

    .line 15
    .line 16
    if-le p2, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 19
    .line 20
    .line 21
    move p2, v2

    .line 22
    :cond_0
    if-ne p2, v2, :cond_1

    .line 23
    .line 24
    aget-byte v2, p3, v1

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    int-to-byte v2, v2

    .line 29
    aput-byte v2, p3, v1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return p2
.end method

.method private static d([B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x6

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    aget-byte v2, p0, v0

    .line 7
    .line 8
    add-int/2addr v1, v2

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return v1
.end method

.method static e(C)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    rsub-int/lit8 v2, v2, 0x4

    .line 15
    .line 16
    const-string v3, "0000"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "Illegal character: "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, " (0x"

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 p0, 0x29

    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method static f(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method static g(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method static h(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x39

    .line 10
    .line 11
    if-le p0, v0, :cond_2

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x41

    .line 14
    .line 15
    if-lt p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x5a

    .line 18
    .line 19
    if-gt p0, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method static i(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5e

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method static j(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x39

    .line 10
    .line 11
    if-le p0, v0, :cond_2

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x61

    .line 14
    .line 15
    if-lt p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x7a

    .line 18
    .line 19
    if-gt p0, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method static k(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/g;->m(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x30

    .line 12
    .line 13
    if-lt p0, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x39

    .line 16
    .line 17
    if-le p0, v0, :cond_2

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0x41

    .line 20
    .line 21
    if-lt p0, v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x5a

    .line 24
    .line 25
    if-gt p0, v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method

.method private static l(C)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private static m(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2a

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x3e

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method static n(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/g;->o(Ljava/lang/CharSequence;II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne p2, v2, :cond_1

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    add-int/lit8 p2, p1, 0x3

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :goto_0
    if-ge p1, p2, :cond_3

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x4

    .line 38
    if-ne p2, v2, :cond_3

    .line 39
    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    add-int/lit8 p2, p1, 0x4

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    :goto_1
    if-ge p1, p2, :cond_3

    .line 53
    .line 54
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->i(C)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    return v1

    .line 65
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return v0
.end method

.method static o(Ljava/lang/CharSequence;II)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x6

    .line 14
    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    .line 16
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/4 v6, 0x5

    .line 19
    const/4 v7, 0x2

    .line 20
    const/4 v8, 0x4

    .line 21
    const/4 v9, 0x3

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x1

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    new-array v12, v3, [F

    .line 27
    .line 28
    aput v2, v12, v10

    .line 29
    .line 30
    aput v5, v12, v11

    .line 31
    .line 32
    aput v5, v12, v7

    .line 33
    .line 34
    aput v5, v12, v9

    .line 35
    .line 36
    aput v5, v12, v8

    .line 37
    .line 38
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 39
    .line 40
    aput v2, v12, v6

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-array v12, v3, [F

    .line 44
    .line 45
    aput v5, v12, v10

    .line 46
    .line 47
    aput v4, v12, v11

    .line 48
    .line 49
    aput v4, v12, v7

    .line 50
    .line 51
    aput v4, v12, v9

    .line 52
    .line 53
    aput v4, v12, v8

    .line 54
    .line 55
    const/high16 v13, 0x40100000    # 2.25f

    .line 56
    .line 57
    aput v13, v12, v6

    .line 58
    .line 59
    aput v2, v12, p2

    .line 60
    .line 61
    :goto_0
    new-array v2, v3, [B

    .line 62
    .line 63
    new-array v3, v3, [I

    .line 64
    .line 65
    move v13, v10

    .line 66
    :goto_1
    add-int v14, v1, v13

    .line 67
    .line 68
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    const v5, 0x7fffffff

    .line 73
    .line 74
    .line 75
    if-ne v14, v15, :cond_7

    .line 76
    .line 77
    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    .line 81
    .line 82
    .line 83
    invoke-static {v12, v3, v5, v2}, Lcom/google/zxing/datamatrix/encoder/g;->c([F[II[B)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->d([B)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    aget v3, v3, v10

    .line 92
    .line 93
    if-ne v3, v0, :cond_2

    .line 94
    .line 95
    return v10

    .line 96
    :cond_2
    if-ne v1, v11, :cond_6

    .line 97
    .line 98
    aget-byte v0, v2, v6

    .line 99
    .line 100
    if-lez v0, :cond_3

    .line 101
    .line 102
    return v6

    .line 103
    :cond_3
    aget-byte v0, v2, v8

    .line 104
    .line 105
    if-lez v0, :cond_4

    .line 106
    .line 107
    return v8

    .line 108
    :cond_4
    aget-byte v0, v2, v7

    .line 109
    .line 110
    if-lez v0, :cond_5

    .line 111
    .line 112
    return v7

    .line 113
    :cond_5
    aget-byte v0, v2, v9

    .line 114
    .line 115
    if-lez v0, :cond_6

    .line 116
    .line 117
    return v9

    .line 118
    :cond_6
    return v11

    .line 119
    :cond_7
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    add-int/lit8 v13, v13, 0x1

    .line 124
    .line 125
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-eqz v15, :cond_8

    .line 130
    .line 131
    aget v15, v12, v10

    .line 132
    .line 133
    const/high16 v16, 0x3f000000    # 0.5f

    .line 134
    .line 135
    add-float v15, v15, v16

    .line 136
    .line 137
    aput v15, v12, v10

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-eqz v15, :cond_9

    .line 145
    .line 146
    aget v15, v12, v10

    .line 147
    .line 148
    float-to-double v5, v15

    .line 149
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v5

    .line 153
    double-to-float v5, v5

    .line 154
    aput v5, v12, v10

    .line 155
    .line 156
    add-float/2addr v5, v4

    .line 157
    aput v5, v12, v10

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    aget v5, v12, v10

    .line 161
    .line 162
    float-to-double v5, v5

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v5

    .line 167
    double-to-float v5, v5

    .line 168
    aput v5, v12, v10

    .line 169
    .line 170
    const/high16 v6, 0x3f800000    # 1.0f

    .line 171
    .line 172
    add-float/2addr v5, v6

    .line 173
    aput v5, v12, v10

    .line 174
    .line 175
    :goto_2
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->h(C)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    const v6, 0x3faaaaab

    .line 180
    .line 181
    .line 182
    const v15, 0x402aaaab

    .line 183
    .line 184
    .line 185
    const v17, 0x3f2aaaab

    .line 186
    .line 187
    .line 188
    if-eqz v5, :cond_a

    .line 189
    .line 190
    aget v5, v12, v11

    .line 191
    .line 192
    add-float v5, v5, v17

    .line 193
    .line 194
    aput v5, v12, v11

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_a
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_b

    .line 202
    .line 203
    aget v5, v12, v11

    .line 204
    .line 205
    add-float/2addr v5, v15

    .line 206
    aput v5, v12, v11

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_b
    aget v5, v12, v11

    .line 210
    .line 211
    add-float/2addr v5, v6

    .line 212
    aput v5, v12, v11

    .line 213
    .line 214
    :goto_3
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->j(C)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_c

    .line 219
    .line 220
    aget v5, v12, v7

    .line 221
    .line 222
    add-float v5, v5, v17

    .line 223
    .line 224
    aput v5, v12, v7

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_c
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_d

    .line 232
    .line 233
    aget v5, v12, v7

    .line 234
    .line 235
    add-float/2addr v5, v15

    .line 236
    aput v5, v12, v7

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_d
    aget v5, v12, v7

    .line 240
    .line 241
    add-float/2addr v5, v6

    .line 242
    aput v5, v12, v7

    .line 243
    .line 244
    :goto_4
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_e

    .line 249
    .line 250
    aget v5, v12, v9

    .line 251
    .line 252
    add-float v5, v5, v17

    .line 253
    .line 254
    aput v5, v12, v9

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_e
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_f

    .line 262
    .line 263
    aget v5, v12, v9

    .line 264
    .line 265
    const v6, 0x408aaaab

    .line 266
    .line 267
    .line 268
    add-float/2addr v5, v6

    .line 269
    aput v5, v12, v9

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_f
    aget v5, v12, v9

    .line 273
    .line 274
    const v6, 0x40555555

    .line 275
    .line 276
    .line 277
    add-float/2addr v5, v6

    .line 278
    aput v5, v12, v9

    .line 279
    .line 280
    :goto_5
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->i(C)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_10

    .line 285
    .line 286
    aget v5, v12, v8

    .line 287
    .line 288
    const/high16 v6, 0x3f400000    # 0.75f

    .line 289
    .line 290
    add-float/2addr v5, v6

    .line 291
    aput v5, v12, v8

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_10
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_11

    .line 299
    .line 300
    aget v5, v12, v8

    .line 301
    .line 302
    const/high16 v6, 0x40880000    # 4.25f

    .line 303
    .line 304
    add-float/2addr v5, v6

    .line 305
    aput v5, v12, v8

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_11
    aget v5, v12, v8

    .line 309
    .line 310
    const/high16 v6, 0x40500000    # 3.25f

    .line 311
    .line 312
    add-float/2addr v5, v6

    .line 313
    aput v5, v12, v8

    .line 314
    .line 315
    :goto_6
    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/g;->l(C)Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_12

    .line 320
    .line 321
    const/4 v5, 0x5

    .line 322
    aget v6, v12, v5

    .line 323
    .line 324
    const/high16 v14, 0x40800000    # 4.0f

    .line 325
    .line 326
    add-float/2addr v6, v14

    .line 327
    aput v6, v12, v5

    .line 328
    .line 329
    const/high16 v14, 0x3f800000    # 1.0f

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_12
    const/4 v5, 0x5

    .line 333
    aget v6, v12, v5

    .line 334
    .line 335
    const/high16 v14, 0x3f800000    # 1.0f

    .line 336
    .line 337
    add-float/2addr v6, v14

    .line 338
    aput v6, v12, v5

    .line 339
    .line 340
    :goto_7
    if-lt v13, v8, :cond_1f

    .line 341
    .line 342
    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 343
    .line 344
    .line 345
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    .line 346
    .line 347
    .line 348
    const v6, 0x7fffffff

    .line 349
    .line 350
    .line 351
    invoke-static {v12, v3, v6, v2}, Lcom/google/zxing/datamatrix/encoder/g;->c([F[II[B)I

    .line 352
    .line 353
    .line 354
    aget v6, v3, v10

    .line 355
    .line 356
    aget v15, v3, v5

    .line 357
    .line 358
    aget v4, v3, v11

    .line 359
    .line 360
    aget v14, v3, v7

    .line 361
    .line 362
    aget v7, v3, v9

    .line 363
    .line 364
    aget v9, v3, v8

    .line 365
    .line 366
    invoke-static {v15, v4, v14, v7, v9}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-ge v6, v4, :cond_13

    .line 371
    .line 372
    return v10

    .line 373
    :cond_13
    aget v4, v3, v5

    .line 374
    .line 375
    aget v5, v3, v10

    .line 376
    .line 377
    if-lt v4, v5, :cond_14

    .line 378
    .line 379
    add-int/lit8 v4, v4, 0x1

    .line 380
    .line 381
    aget v5, v3, v11

    .line 382
    .line 383
    const/4 v6, 0x2

    .line 384
    aget v7, v3, v6

    .line 385
    .line 386
    const/4 v9, 0x3

    .line 387
    aget v14, v3, v9

    .line 388
    .line 389
    aget v15, v3, v8

    .line 390
    .line 391
    invoke-static {v5, v7, v14, v15}, Lcom/google/zxing/datamatrix/encoder/g;->p(IIII)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-ge v4, v5, :cond_15

    .line 396
    .line 397
    :cond_14
    const/4 v6, 0x5

    .line 398
    goto/16 :goto_b

    .line 399
    .line 400
    :cond_15
    aget v4, v3, v8

    .line 401
    .line 402
    add-int/2addr v4, v11

    .line 403
    const/4 v5, 0x5

    .line 404
    aget v7, v3, v5

    .line 405
    .line 406
    aget v14, v3, v11

    .line 407
    .line 408
    aget v15, v3, v6

    .line 409
    .line 410
    aget v5, v3, v9

    .line 411
    .line 412
    aget v9, v3, v10

    .line 413
    .line 414
    invoke-static {v7, v14, v15, v5, v9}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-ge v4, v5, :cond_16

    .line 419
    .line 420
    return v8

    .line 421
    :cond_16
    aget v4, v3, v6

    .line 422
    .line 423
    add-int/2addr v4, v11

    .line 424
    const/4 v5, 0x5

    .line 425
    aget v7, v3, v5

    .line 426
    .line 427
    aget v9, v3, v11

    .line 428
    .line 429
    aget v14, v3, v8

    .line 430
    .line 431
    const/4 v15, 0x3

    .line 432
    aget v8, v3, v15

    .line 433
    .line 434
    aget v5, v3, v10

    .line 435
    .line 436
    invoke-static {v7, v9, v14, v8, v5}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-ge v4, v5, :cond_17

    .line 441
    .line 442
    return v6

    .line 443
    :cond_17
    aget v4, v3, v15

    .line 444
    .line 445
    add-int/2addr v4, v11

    .line 446
    const/4 v5, 0x5

    .line 447
    aget v7, v3, v5

    .line 448
    .line 449
    aget v8, v3, v11

    .line 450
    .line 451
    const/4 v9, 0x4

    .line 452
    aget v14, v3, v9

    .line 453
    .line 454
    aget v9, v3, v6

    .line 455
    .line 456
    aget v6, v3, v10

    .line 457
    .line 458
    invoke-static {v7, v8, v14, v9, v6}, Lcom/google/zxing/datamatrix/encoder/g;->q(IIIII)I

    .line 459
    .line 460
    .line 461
    move-result v6

    .line 462
    if-ge v4, v6, :cond_18

    .line 463
    .line 464
    return v15

    .line 465
    :cond_18
    aget v4, v3, v11

    .line 466
    .line 467
    add-int/2addr v4, v11

    .line 468
    aget v6, v3, v10

    .line 469
    .line 470
    aget v7, v3, v5

    .line 471
    .line 472
    const/4 v5, 0x4

    .line 473
    aget v8, v3, v5

    .line 474
    .line 475
    const/4 v9, 0x2

    .line 476
    aget v14, v3, v9

    .line 477
    .line 478
    invoke-static {v6, v7, v8, v14}, Lcom/google/zxing/datamatrix/encoder/g;->p(IIII)I

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    if-ge v4, v6, :cond_1e

    .line 483
    .line 484
    aget v4, v3, v11

    .line 485
    .line 486
    aget v6, v3, v15

    .line 487
    .line 488
    if-ge v4, v6, :cond_19

    .line 489
    .line 490
    return v11

    .line 491
    :cond_19
    if-ne v4, v6, :cond_1d

    .line 492
    .line 493
    add-int/2addr v1, v13

    .line 494
    add-int/2addr v1, v11

    .line 495
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-ge v1, v2, :cond_1c

    .line 500
    .line 501
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->m(C)Z

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    if-eqz v3, :cond_1a

    .line 510
    .line 511
    const/4 v4, 0x3

    .line 512
    return v4

    .line 513
    :cond_1a
    const/4 v4, 0x3

    .line 514
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/g;->k(C)Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-nez v2, :cond_1b

    .line 519
    .line 520
    goto :goto_9

    .line 521
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 522
    .line 523
    goto :goto_8

    .line 524
    :cond_1c
    :goto_9
    return v11

    .line 525
    :cond_1d
    const/4 v4, 0x3

    .line 526
    :goto_a
    const/4 v6, 0x5

    .line 527
    goto :goto_c

    .line 528
    :cond_1e
    move v4, v15

    .line 529
    goto :goto_a

    .line 530
    :goto_b
    return v6

    .line 531
    :cond_1f
    move v6, v5

    .line 532
    move v5, v8

    .line 533
    move v4, v9

    .line 534
    move v9, v7

    .line 535
    :goto_c
    move v8, v5

    .line 536
    move v7, v9

    .line 537
    const/high16 v5, 0x3f800000    # 1.0f

    .line 538
    .line 539
    move v9, v4

    .line 540
    const/high16 v4, 0x40000000    # 2.0f

    .line 541
    .line 542
    goto/16 :goto_1
.end method

.method private static p(IIII)I
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static q(IIIII)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/g;->p(IIII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static r(I)C
    .locals 2

    .line 1
    mul-int/lit16 p0, p0, 0x95

    .line 2
    .line 3
    rem-int/lit16 p0, p0, 0xfd

    .line 4
    .line 5
    add-int/lit16 v0, p0, 0x82

    .line 6
    .line 7
    const/16 v1, 0xfe

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    add-int/lit8 v0, p0, -0x7c

    .line 13
    .line 14
    :goto_0
    int-to-char p0, v0

    .line 15
    return p0
.end method
