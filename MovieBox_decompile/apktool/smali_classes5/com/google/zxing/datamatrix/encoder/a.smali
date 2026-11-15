.class final Lcom/google/zxing/datamatrix/encoder/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/e;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b(CC)C
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/g;->f(C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 p0, p0, -0x30

    .line 14
    .line 15
    mul-int/lit8 p0, p0, 0xa

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x30

    .line 18
    .line 19
    add-int/2addr p0, p1

    .line 20
    add-int/lit16 p0, p0, 0x82

    .line 21
    .line 22
    int-to-char p0, p0

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "not digits: "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method


# virtual methods
.method public a(Lcom/google/zxing/datamatrix/encoder/f;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/g;->a(Ljava/lang/CharSequence;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x2

    .line 13
    if-lt v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 30
    .line 31
    add-int/2addr v4, v1

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/a;->b(CC)C

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 41
    .line 42
    .line 43
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 44
    .line 45
    add-int/2addr v0, v2

    .line 46
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->c()C

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->d()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/a;->c()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v3, v4, v5}, Lcom/google/zxing/datamatrix/encoder/g;->n(Ljava/lang/CharSequence;II)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/a;->c()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eq v3, v4, :cond_6

    .line 73
    .line 74
    if-eq v3, v1, :cond_5

    .line 75
    .line 76
    if-eq v3, v2, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    if-eq v3, v0, :cond_3

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    if-eq v3, v0, :cond_2

    .line 83
    .line 84
    const/4 v0, 0x5

    .line 85
    if-ne v3, v0, :cond_1

    .line 86
    .line 87
    const/16 v1, 0xe7

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Illegal mode: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_2
    const/16 v1, 0xf0

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const/16 v1, 0xee

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    const/16 v0, 0xef

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    const/16 v0, 0xe6

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/g;->g(C)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    const/16 v2, 0xeb

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v0, v0, -0x7f

    .line 167
    .line 168
    int-to-char v0, v0

    .line 169
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 170
    .line 171
    .line 172
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 173
    .line 174
    add-int/2addr v0, v1

    .line 175
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_7
    add-int/2addr v0, v1

    .line 179
    int-to-char v0, v0

    .line 180
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/f;->r(C)V

    .line 181
    .line 182
    .line 183
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 184
    .line 185
    add-int/2addr v0, v1

    .line 186
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 187
    .line 188
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
