.class public final Lmd/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lmd/a;


# direct methods
.method public constructor <init>(Lmd/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmd/c;->a:Lmd/a;

    .line 5
    .line 6
    return-void
.end method

.method private b(Lmd/b;)[I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lmd/b;->d(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    filled-new-array {p1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-array v2, v0, [I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    iget-object v4, p0, Lmd/c;->a:Lmd/a;

    .line 21
    .line 22
    invoke-virtual {v4}, Lmd/a;->f()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v1, v4, :cond_2

    .line 27
    .line 28
    if-ge v3, v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lmd/b;->c(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lmd/c;->a:Lmd/a;

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Lmd/a;->h(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    aput v4, v2, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-ne v3, v0, :cond_3

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 53
    .line 54
    const-string v0, "Error locator degree does not match number of roots"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private c(Lmd/b;[I)[I
    .locals 9

    .line 1
    array-length v0, p2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v0, :cond_4

    .line 7
    .line 8
    iget-object v4, p0, Lmd/c;->a:Lmd/a;

    .line 9
    .line 10
    aget v5, p2, v3

    .line 11
    .line 12
    invoke-virtual {v4, v5}, Lmd/a;->h(I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    move v6, v2

    .line 18
    :goto_1
    if-ge v6, v0, :cond_2

    .line 19
    .line 20
    if-eq v3, v6, :cond_1

    .line 21
    .line 22
    iget-object v7, p0, Lmd/c;->a:Lmd/a;

    .line 23
    .line 24
    aget v8, p2, v6

    .line 25
    .line 26
    invoke-virtual {v7, v8, v4}, Lmd/a;->j(II)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    and-int/lit8 v8, v7, 0x1

    .line 31
    .line 32
    if-nez v8, :cond_0

    .line 33
    .line 34
    or-int/lit8 v7, v7, 0x1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    and-int/lit8 v7, v7, -0x2

    .line 38
    .line 39
    :goto_2
    iget-object v8, p0, Lmd/c;->a:Lmd/a;

    .line 40
    .line 41
    invoke-virtual {v8, v5, v7}, Lmd/a;->j(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v6, p0, Lmd/c;->a:Lmd/a;

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Lmd/b;->c(I)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    iget-object v8, p0, Lmd/c;->a:Lmd/a;

    .line 55
    .line 56
    invoke-virtual {v8, v5}, Lmd/a;->h(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v6, v7, v5}, Lmd/a;->j(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    aput v5, v1, v3

    .line 65
    .line 66
    iget-object v5, p0, Lmd/c;->a:Lmd/a;

    .line 67
    .line 68
    invoke-virtual {v5}, Lmd/a;->d()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget-object v5, p0, Lmd/c;->a:Lmd/a;

    .line 75
    .line 76
    aget v6, v1, v3

    .line 77
    .line 78
    invoke-virtual {v5, v6, v4}, Lmd/a;->j(II)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    aput v4, v1, v3

    .line 83
    .line 84
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    return-object v1
.end method

.method private d(Lmd/b;Lmd/b;I)[Lmd/b;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p2}, Lmd/b;->f()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    move-object v9, p2

    .line 14
    move-object p2, p1

    .line 15
    move-object p1, v9

    .line 16
    :cond_0
    iget-object v2, p0, Lmd/c;->a:Lmd/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lmd/a;->g()Lmd/b;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lmd/c;->a:Lmd/a;

    .line 23
    .line 24
    invoke-virtual {v3}, Lmd/a;->e()Lmd/b;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    move-object v9, p2

    .line 29
    move-object p2, p1

    .line 30
    move-object p1, v9

    .line 31
    move-object v10, v3

    .line 32
    move-object v3, v2

    .line 33
    move-object v2, v10

    .line 34
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    mul-int/2addr v4, v1

    .line 39
    if-lt v4, p3, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Lmd/b;->g()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lmd/c;->a:Lmd/a;

    .line 48
    .line 49
    invoke-virtual {v4}, Lmd/a;->g()Lmd/b;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p1, v5}, Lmd/b;->d(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    iget-object v6, p0, Lmd/c;->a:Lmd/a;

    .line 62
    .line 63
    invoke-virtual {v6, v5}, Lmd/a;->h(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    :goto_1
    invoke-virtual {p2}, Lmd/b;->f()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-lt v6, v7, :cond_1

    .line 76
    .line 77
    invoke-virtual {p2}, Lmd/b;->g()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {p2}, Lmd/b;->f()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    sub-int/2addr v6, v7

    .line 92
    iget-object v7, p0, Lmd/c;->a:Lmd/a;

    .line 93
    .line 94
    invoke-virtual {p2}, Lmd/b;->f()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-virtual {p2, v8}, Lmd/b;->d(I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-virtual {v7, v8, v5}, Lmd/a;->j(II)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iget-object v8, p0, Lmd/c;->a:Lmd/a;

    .line 107
    .line 108
    invoke-virtual {v8, v6, v7}, Lmd/a;->b(II)Lmd/b;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v4, v8}, Lmd/b;->a(Lmd/b;)Lmd/b;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p1, v6, v7}, Lmd/b;->j(II)Lmd/b;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {p2, v6}, Lmd/b;->a(Lmd/b;)Lmd/b;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {v4, v2}, Lmd/b;->i(Lmd/b;)Lmd/b;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, v3}, Lmd/b;->a(Lmd/b;)Lmd/b;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {p2}, Lmd/b;->f()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {p1}, Lmd/b;->f()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-ge v4, v5, :cond_2

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "Division algorithm failed to reduce polynomial? r: "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p2, ", rLast: "

    .line 160
    .line 161
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p3

    .line 175
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 176
    .line 177
    const-string p2, "r_{i-1} was zero"

    .line 178
    .line 179
    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :cond_4
    invoke-virtual {v2, v0}, Lmd/b;->d(I)I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_5

    .line 188
    .line 189
    iget-object p3, p0, Lmd/c;->a:Lmd/a;

    .line 190
    .line 191
    invoke-virtual {p3, p2}, Lmd/a;->h(I)I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    invoke-virtual {v2, p2}, Lmd/b;->h(I)Lmd/b;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    invoke-virtual {p1, p2}, Lmd/b;->h(I)Lmd/b;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    new-array p2, v1, [Lmd/b;

    .line 204
    .line 205
    aput-object p3, p2, v0

    .line 206
    .line 207
    const/4 p3, 0x1

    .line 208
    aput-object p1, p2, p3

    .line 209
    .line 210
    return-object p2

    .line 211
    :cond_5
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 212
    .line 213
    const-string p2, "sigmaTilde(0) was zero"

    .line 214
    .line 215
    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1
.end method


# virtual methods
.method public a([II)I
    .locals 8

    .line 1
    new-instance v0, Lmd/b;

    .line 2
    .line 3
    iget-object v1, p0, Lmd/c;->a:Lmd/a;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lmd/b;-><init>(Lmd/a;[I)V

    .line 6
    .line 7
    .line 8
    new-array v1, p2, [I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v5, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, p2, :cond_1

    .line 15
    .line 16
    iget-object v6, p0, Lmd/c;->a:Lmd/a;

    .line 17
    .line 18
    invoke-virtual {v6}, Lmd/a;->d()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    add-int/2addr v7, v4

    .line 23
    invoke-virtual {v6, v7}, Lmd/a;->c(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v0, v6}, Lmd/b;->c(I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int/lit8 v7, p2, -0x1

    .line 32
    .line 33
    sub-int/2addr v7, v4

    .line 34
    aput v6, v1, v7

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    move v5, v3

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz v5, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    new-instance v0, Lmd/b;

    .line 46
    .line 47
    iget-object v4, p0, Lmd/c;->a:Lmd/a;

    .line 48
    .line 49
    invoke-direct {v0, v4, v1}, Lmd/b;-><init>(Lmd/a;[I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lmd/c;->a:Lmd/a;

    .line 53
    .line 54
    invoke-virtual {v1, p2, v2}, Lmd/a;->b(II)Lmd/b;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {p0, v1, v0, p2}, Lmd/c;->d(Lmd/b;Lmd/b;I)[Lmd/b;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    aget-object v0, p2, v3

    .line 63
    .line 64
    aget-object p2, p2, v2

    .line 65
    .line 66
    invoke-direct {p0, v0}, Lmd/c;->b(Lmd/b;)[I

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p0, p2, v0}, Lmd/c;->c(Lmd/b;[I)[I

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :goto_1
    array-length v1, v0

    .line 75
    if-ge v3, v1, :cond_4

    .line 76
    .line 77
    array-length v1, p1

    .line 78
    sub-int/2addr v1, v2

    .line 79
    iget-object v4, p0, Lmd/c;->a:Lmd/a;

    .line 80
    .line 81
    aget v5, v0, v3

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Lmd/a;->i(I)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    sub-int/2addr v1, v4

    .line 88
    if-ltz v1, :cond_3

    .line 89
    .line 90
    aget v4, p1, v1

    .line 91
    .line 92
    aget v5, p2, v3

    .line 93
    .line 94
    invoke-static {v4, v5}, Lmd/a;->a(II)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    aput v4, p1, v1

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 104
    .line 105
    const-string p2, "Bad error location"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_4
    array-length p1, v0

    .line 112
    return p1
.end method
