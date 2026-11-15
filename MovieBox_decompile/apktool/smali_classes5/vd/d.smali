.class public final Lvd/d;
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

.method private static b([[BI)Lkd/b;
    .locals 8

    .line 1
    new-instance v0, Lkd/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, p0, v1

    .line 5
    .line 6
    array-length v2, v2

    .line 7
    mul-int/lit8 v3, p1, 0x2

    .line 8
    .line 9
    add-int/2addr v2, v3

    .line 10
    array-length v4, p0

    .line 11
    add-int/2addr v4, v3

    .line 12
    invoke-direct {v0, v2, v4}, Lkd/b;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lkd/b;->b()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lkd/b;->k()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v2, p1

    .line 23
    const/4 v3, 0x1

    .line 24
    sub-int/2addr v2, v3

    .line 25
    move v4, v1

    .line 26
    :goto_0
    array-length v5, p0

    .line 27
    if-ge v4, v5, :cond_2

    .line 28
    .line 29
    aget-object v5, p0, v4

    .line 30
    .line 31
    move v6, v1

    .line 32
    :goto_1
    aget-object v7, p0, v1

    .line 33
    .line 34
    array-length v7, v7

    .line 35
    if-ge v6, v7, :cond_1

    .line 36
    .line 37
    aget-byte v7, v5, v6

    .line 38
    .line 39
    if-ne v7, v3, :cond_0

    .line 40
    .line 41
    add-int v7, v6, p1

    .line 42
    .line 43
    invoke-virtual {v0, v7, v2}, Lkd/b;->r(II)V

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    add-int/lit8 v2, v2, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method private static c(Lyd/c;Ljava/lang/String;IIIIZ)Lkd/b;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p6}, Lyd/c;->e(Ljava/lang/String;IZ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lyd/c;->f()Lyd/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x1

    .line 9
    const/4 p6, 0x4

    .line 10
    invoke-virtual {p1, p2, p6}, Lyd/a;->b(II)[[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p6, 0x0

    .line 15
    if-le p4, p3, :cond_0

    .line 16
    .line 17
    move v0, p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, p6

    .line 20
    :goto_0
    aget-object v1, p1, p6

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    array-length v2, p1

    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    move v1, p2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, p6

    .line 29
    :goto_1
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Lvd/d;->d([[B)[[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move v0, p2

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v0, p6

    .line 38
    :goto_2
    aget-object p6, p1, p6

    .line 39
    .line 40
    array-length p6, p6

    .line 41
    div-int/2addr p3, p6

    .line 42
    array-length p6, p1

    .line 43
    div-int/2addr p4, p6

    .line 44
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-le p3, p2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lyd/c;->f()Lyd/a;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    mul-int/lit8 p1, p3, 0x4

    .line 55
    .line 56
    invoke-virtual {p0, p3, p1}, Lyd/a;->b(II)[[B

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-static {p0}, Lvd/d;->d([[B)[[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :cond_3
    invoke-static {p0, p5}, Lvd/d;->b([[BI)Lkd/b;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_4
    invoke-static {p1, p5}, Lvd/d;->b([[BI)Lkd/b;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private static d([[B)[[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    array-length v2, p0

    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    aput v2, v3, v4

    .line 11
    .line 12
    aput v1, v3, v0

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, [[B

    .line 21
    .line 22
    move v2, v0

    .line 23
    :goto_0
    array-length v3, p0

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    array-length v3, p0

    .line 27
    sub-int/2addr v3, v2

    .line 28
    sub-int/2addr v3, v4

    .line 29
    move v5, v0

    .line 30
    :goto_1
    aget-object v6, p0, v0

    .line 31
    .line 32
    array-length v6, v6

    .line 33
    if-ge v5, v6, :cond_0

    .line 34
    .line 35
    aget-object v6, v1, v5

    .line 36
    .line 37
    aget-object v7, p0, v2

    .line 38
    .line 39
    aget-byte v7, v7, v5

    .line 40
    .line 41
    aput-byte v7, v6, v3

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lkd/b;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    if-ne p2, v0, :cond_7

    .line 4
    .line 5
    new-instance v1, Lyd/c;

    .line 6
    .line 7
    invoke-direct {v1}, Lyd/c;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const/16 v0, 0x1e

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz p5, :cond_5

    .line 15
    .line 16
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 17
    .line 18
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1, v3}, Lyd/c;->h(Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    .line 40
    .line 41
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Lyd/c;->i(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    .line 63
    .line 64
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_6

    .line 69
    .line 70
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    .line 71
    .line 72
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :cond_2
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 91
    .line 92
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :cond_3
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 111
    .line 112
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v1, v3}, Lyd/c;->j(Ljava/nio/charset/Charset;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    sget-object v3, Lcom/google/zxing/EncodeHintType;->PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

    .line 134
    .line 135
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_5

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
    if-eqz p5, :cond_5

    .line 154
    .line 155
    const/4 p2, 0x1

    .line 156
    :cond_5
    move v7, p2

    .line 157
    move v6, v0

    .line 158
    move v3, v2

    .line 159
    goto :goto_0

    .line 160
    :cond_6
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const/4 p1, 0x0

    .line 168
    throw p1

    .line 169
    :goto_0
    move-object v2, p1

    .line 170
    move v4, p3

    .line 171
    move v5, p4

    .line 172
    invoke-static/range {v1 .. v7}, Lvd/d;->c(Lyd/c;Ljava/lang/String;IIIIZ)Lkd/b;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    return-object p1

    .line 177
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string p4, "Can only encode PDF_417, but got "

    .line 185
    .line 186
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1
.end method
