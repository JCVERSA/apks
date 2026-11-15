.class final Lcom/google/zxing/qrcode/decoder/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 7
    .line 8
    return-void
.end method

.method static b([BLcom/google/zxing/qrcode/decoder/g;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/b;
    .locals 12

    .line 1
    array-length v0, p0

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/g;->h()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v0, v1, :cond_b

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/g;->f(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/g$b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/g$b;->a()[Lcom/google/zxing/qrcode/decoder/g$a;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v2, v0, :cond_0

    .line 21
    .line 22
    aget-object v4, p2, v2

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/g$a;->a()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/2addr v3, v4

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-array v0, v3, [Lcom/google/zxing/qrcode/decoder/b;

    .line 33
    .line 34
    array-length v2, p2

    .line 35
    move v4, v1

    .line 36
    move v5, v4

    .line 37
    :goto_1
    if-ge v4, v2, :cond_2

    .line 38
    .line 39
    aget-object v6, p2, v4

    .line 40
    .line 41
    move v7, v1

    .line 42
    :goto_2
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/g$a;->a()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ge v7, v8, :cond_1

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/g$a;->b()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/g$b;->b()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    add-int/2addr v9, v8

    .line 57
    add-int/lit8 v10, v5, 0x1

    .line 58
    .line 59
    new-instance v11, Lcom/google/zxing/qrcode/decoder/b;

    .line 60
    .line 61
    new-array v9, v9, [B

    .line 62
    .line 63
    invoke-direct {v11, v8, v9}, Lcom/google/zxing/qrcode/decoder/b;-><init>(I[B)V

    .line 64
    .line 65
    .line 66
    aput-object v11, v0, v5

    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    move v5, v10

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    aget-object p2, v0, v1

    .line 76
    .line 77
    iget-object p2, p2, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 78
    .line 79
    array-length p2, p2

    .line 80
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    :goto_3
    if-ltz v3, :cond_4

    .line 83
    .line 84
    aget-object v2, v0, v3

    .line 85
    .line 86
    iget-object v2, v2, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 87
    .line 88
    array-length v2, v2

    .line 89
    if-ne v2, p2, :cond_3

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/g$b;->b()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    sub-int/2addr p2, p1

    .line 102
    move p1, v1

    .line 103
    move v2, p1

    .line 104
    :goto_5
    if-ge p1, p2, :cond_6

    .line 105
    .line 106
    move v4, v1

    .line 107
    :goto_6
    if-ge v4, v5, :cond_5

    .line 108
    .line 109
    aget-object v6, v0, v4

    .line 110
    .line 111
    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 112
    .line 113
    add-int/lit8 v7, v2, 0x1

    .line 114
    .line 115
    aget-byte v2, p0, v2

    .line 116
    .line 117
    aput-byte v2, v6, p1

    .line 118
    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    move v2, v7

    .line 122
    goto :goto_6

    .line 123
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_6
    move p1, v3

    .line 127
    :goto_7
    if-ge p1, v5, :cond_7

    .line 128
    .line 129
    aget-object v4, v0, p1

    .line 130
    .line 131
    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 132
    .line 133
    add-int/lit8 v6, v2, 0x1

    .line 134
    .line 135
    aget-byte v2, p0, v2

    .line 136
    .line 137
    aput-byte v2, v4, p2

    .line 138
    .line 139
    add-int/lit8 p1, p1, 0x1

    .line 140
    .line 141
    move v2, v6

    .line 142
    goto :goto_7

    .line 143
    :cond_7
    aget-object p1, v0, v1

    .line 144
    .line 145
    iget-object p1, p1, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 146
    .line 147
    array-length p1, p1

    .line 148
    :goto_8
    if-ge p2, p1, :cond_a

    .line 149
    .line 150
    move v4, v1

    .line 151
    :goto_9
    if-ge v4, v5, :cond_9

    .line 152
    .line 153
    if-ge v4, v3, :cond_8

    .line 154
    .line 155
    move v6, p2

    .line 156
    goto :goto_a

    .line 157
    :cond_8
    add-int/lit8 v6, p2, 0x1

    .line 158
    .line 159
    :goto_a
    aget-object v7, v0, v4

    .line 160
    .line 161
    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 162
    .line 163
    add-int/lit8 v8, v2, 0x1

    .line 164
    .line 165
    aget-byte v2, p0, v2

    .line 166
    .line 167
    aput-byte v2, v7, v6

    .line 168
    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    move v2, v8

    .line 172
    goto :goto_9

    .line 173
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_a
    return-object v0

    .line 177
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 180
    .line 181
    .line 182
    throw p0
.end method


# virtual methods
.method a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 2
    .line 3
    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/b;->a:I

    .line 2
    .line 3
    return v0
.end method
