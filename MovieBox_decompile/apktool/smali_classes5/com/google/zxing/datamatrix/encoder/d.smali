.class final Lcom/google/zxing/datamatrix/encoder/d;
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

.method private static b(CLjava/lang/StringBuilder;)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x3f

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x40

    .line 14
    .line 15
    if-lt p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x5e

    .line 18
    .line 19
    if-gt p0, v1, :cond_1

    .line 20
    .line 21
    sub-int/2addr p0, v0

    .line 22
    int-to-char p0, p0

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/g;->e(C)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private static c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x2

    .line 13
    if-lt v0, v3, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, v1

    .line 22
    :goto_0
    const/4 v5, 0x3

    .line 23
    if-lt v0, v5, :cond_1

    .line 24
    .line 25
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v6, v1

    .line 31
    :goto_1
    const/4 v7, 0x4

    .line 32
    if-lt v0, v7, :cond_2

    .line 33
    .line 34
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :cond_2
    shl-int/lit8 p0, v2, 0x12

    .line 39
    .line 40
    shl-int/lit8 v2, v4, 0xc

    .line 41
    .line 42
    add-int/2addr p0, v2

    .line 43
    shl-int/lit8 v2, v6, 0x6

    .line 44
    .line 45
    add-int/2addr p0, v2

    .line 46
    add-int/2addr p0, v1

    .line 47
    shr-int/lit8 v1, p0, 0x10

    .line 48
    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 50
    .line 51
    int-to-char v1, v1

    .line 52
    shr-int/lit8 v2, p0, 0x8

    .line 53
    .line 54
    and-int/lit16 v2, v2, 0xff

    .line 55
    .line 56
    int-to-char v2, v2

    .line 57
    and-int/lit16 p0, p0, 0xff

    .line 58
    .line 59
    int-to-char p0, p0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    if-lt v0, v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_3
    if-lt v0, v5, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "StringBuilder must not be empty"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method private static e(Lcom/google/zxing/datamatrix/encoder/f;Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_2

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->p()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->g()Lpd/d;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lpd/d;->a()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sub-int/2addr v4, v5

    .line 32
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->f()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-le v5, v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    add-int/2addr v4, v3

    .line 43
    invoke-virtual {p0, v4}, Lcom/google/zxing/datamatrix/encoder/f;->q(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->g()Lpd/d;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lpd/d;->a()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 55
    .line 56
    .line 57
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sub-int/2addr v4, v6

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    :goto_0
    if-gt v5, v4, :cond_2

    .line 63
    .line 64
    if-gt v4, v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    const/4 v4, 0x4

    .line 71
    if-gt v1, v4, :cond_6

    .line 72
    .line 73
    sub-int/2addr v1, v3

    .line 74
    :try_start_2
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/d;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->i()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    if-gt v1, v2, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v3, v0

    .line 88
    :goto_1
    if-gt v1, v2, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    add-int/2addr v2, v1

    .line 95
    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/f;->q(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->g()Lpd/d;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lpd/d;->a()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    sub-int/2addr v2, v4

    .line 111
    const/4 v4, 0x3

    .line 112
    if-lt v2, v4, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->a()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/2addr v2, v3

    .line 123
    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/f;->q(I)V

    .line 124
    .line 125
    .line 126
    move v3, v0

    .line 127
    :cond_4
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/f;->k()V

    .line 130
    .line 131
    .line 132
    iget p1, p0, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 133
    .line 134
    sub-int/2addr p1, v1

    .line 135
    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/encoder/f;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    const-string v1, "Count must not exceed 4"

    .line 148
    .line 149
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 154
    .line 155
    .line 156
    throw p1
.end method


# virtual methods
.method public a(Lcom/google/zxing/datamatrix/encoder/f;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->c()C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/d;->b(CLjava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x4

    .line 30
    if-lt v1, v2, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/d;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/f;->s(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/f;->d()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/f;->d:I

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/d;->d()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/g;->n(Ljava/lang/CharSequence;II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/d;->d()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eq v2, v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/f;->o(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    const/16 v1, 0x1f

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/d;->e(Lcom/google/zxing/datamatrix/encoder/f;Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method
