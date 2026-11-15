.class final Lcom/google/zxing/pdf417/decoder/g;
.super Lcom/google/zxing/pdf417/decoder/f;
.source "source.java"


# instance fields
.field private final c:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/f;-><init>(Lcom/google/zxing/pdf417/decoder/c;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 5
    .line 6
    return-void
.end method

.method private h(Lcom/google/zxing/pdf417/decoder/a;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->a()Lcom/google/zxing/pdf417/decoder/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->h()Lcom/google/zxing/k;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->i()Lcom/google/zxing/k;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    iget-boolean v2, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->b()Lcom/google/zxing/k;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/c;->c()Lcom/google/zxing/k;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_1
    invoke-virtual {v1}, Lcom/google/zxing/k;->d()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    float-to-int v1, v1

    .line 36
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0}, Lcom/google/zxing/k;->d()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x1

    .line 54
    const/4 v4, -0x1

    .line 55
    const/4 v5, 0x0

    .line 56
    move v6, v3

    .line 57
    :goto_2
    if-ge v1, v0, :cond_6

    .line 58
    .line 59
    aget-object v7, v2, v1

    .line 60
    .line 61
    if-nez v7, :cond_2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->j()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    sub-int/2addr v8, v4

    .line 72
    if-nez v8, :cond_3

    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    if-ne v8, v3, :cond_4

    .line 78
    .line 79
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    :goto_3
    move v5, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-lt v8, v9, :cond_5

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    aput-object v7, v2, v1

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    goto :goto_3

    .line 108
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    return-void
.end method

.method private l([Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/a;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_8

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    rem-int/lit8 v2, v2, 0x1e

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-le v1, v3, :cond_1

    .line 26
    .line 27
    aput-object v4, p1, v0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-boolean v3, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    :cond_2
    rem-int/lit8 v1, v1, 0x3

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    if-eq v1, v3, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq v1, v3, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->a()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eq v2, v1, :cond_7

    .line 54
    .line 55
    aput-object v4, p1, v0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    div-int/lit8 v1, v2, 0x3

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->b()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v1, v3, :cond_5

    .line 65
    .line 66
    rem-int/lit8 v2, v2, 0x3

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->d()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eq v2, v1, :cond_7

    .line 73
    .line 74
    :cond_5
    aput-object v4, p1, v0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    mul-int/lit8 v2, v2, 0x3

    .line 78
    .line 79
    add-int/2addr v2, v3

    .line 80
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/a;->e()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eq v2, v1, :cond_7

    .line 85
    .line 86
    aput-object v4, p1, v0

    .line 87
    .line 88
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_8
    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/d;->j()V

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method g(Lcom/google/zxing/pdf417/decoder/a;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/g;->m()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/pdf417/decoder/g;->l([Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->a()Lcom/google/zxing/pdf417/decoder/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->h()Lcom/google/zxing/k;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->i()Lcom/google/zxing/k;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    iget-boolean v3, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->b()Lcom/google/zxing/k;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/c;->c()Lcom/google/zxing/k;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_1
    invoke-virtual {v2}, Lcom/google/zxing/k;->d()F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    float-to-int v2, v2

    .line 46
    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1}, Lcom/google/zxing/k;->d()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    float-to-int v1, v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/f;->e(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x1

    .line 61
    const/4 v5, -0x1

    .line 62
    move v6, v3

    .line 63
    move v7, v4

    .line 64
    :goto_2
    if-ge v2, v1, :cond_c

    .line 65
    .line 66
    aget-object v8, v0, v2

    .line 67
    .line 68
    if-nez v8, :cond_2

    .line 69
    .line 70
    goto :goto_8

    .line 71
    :cond_2
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    sub-int/2addr v9, v5

    .line 76
    if-nez v9, :cond_3

    .line 77
    .line 78
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_3
    if-ne v9, v4, :cond_4

    .line 82
    .line 83
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    :goto_3
    move v6, v4

    .line 92
    goto :goto_8

    .line 93
    :cond_4
    const/4 v10, 0x0

    .line 94
    if-ltz v9, :cond_b

    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-ge v11, v12, :cond_b

    .line 105
    .line 106
    if-le v9, v2, :cond_5

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_5
    const/4 v11, 0x2

    .line 110
    if-le v7, v11, :cond_6

    .line 111
    .line 112
    add-int/lit8 v11, v7, -0x2

    .line 113
    .line 114
    mul-int/2addr v9, v11

    .line 115
    :cond_6
    if-lt v9, v2, :cond_7

    .line 116
    .line 117
    move v11, v4

    .line 118
    goto :goto_4

    .line 119
    :cond_7
    move v11, v3

    .line 120
    :goto_4
    move v12, v4

    .line 121
    :goto_5
    if-gt v12, v9, :cond_9

    .line 122
    .line 123
    if-nez v11, :cond_9

    .line 124
    .line 125
    sub-int v11, v2, v12

    .line 126
    .line 127
    aget-object v11, v0, v11

    .line 128
    .line 129
    if-eqz v11, :cond_8

    .line 130
    .line 131
    move v11, v4

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    move v11, v3

    .line 134
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_9
    if-eqz v11, :cond_a

    .line 138
    .line 139
    aput-object v10, v0, v2

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_a
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    goto :goto_3

    .line 147
    :cond_b
    :goto_7
    aput-object v10, v0, v2

    .line 148
    .line 149
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_c
    return-void
.end method

.method i()Lcom/google/zxing/pdf417/decoder/a;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/zxing/pdf417/decoder/b;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/zxing/pdf417/decoder/b;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/google/zxing/pdf417/decoder/b;

    .line 16
    .line 17
    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lcom/google/zxing/pdf417/decoder/b;

    .line 21
    .line 22
    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/b;-><init>()V

    .line 23
    .line 24
    .line 25
    array-length v5, v0

    .line 26
    const/4 v6, 0x0

    .line 27
    move v7, v6

    .line 28
    :goto_0
    const/4 v8, 0x1

    .line 29
    const/4 v9, 0x3

    .line 30
    if-ge v7, v5, :cond_5

    .line 31
    .line 32
    aget-object v10, v0, v7

    .line 33
    .line 34
    if-nez v10, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/d;->j()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/d;->e()I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    rem-int/lit8 v11, v11, 0x1e

    .line 45
    .line 46
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 51
    .line 52
    if-nez v12, :cond_1

    .line 53
    .line 54
    add-int/lit8 v10, v10, 0x2

    .line 55
    .line 56
    :cond_1
    rem-int/2addr v10, v9

    .line 57
    if-eqz v10, :cond_4

    .line 58
    .line 59
    if-eq v10, v8, :cond_3

    .line 60
    .line 61
    const/4 v8, 0x2

    .line 62
    if-eq v10, v8, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 66
    .line 67
    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/b;->b(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    div-int/lit8 v8, v11, 0x3

    .line 72
    .line 73
    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/b;->b(I)V

    .line 74
    .line 75
    .line 76
    rem-int/lit8 v11, v11, 0x3

    .line 77
    .line 78
    invoke-virtual {v3, v11}, Lcom/google/zxing/pdf417/decoder/b;->b(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    mul-int/lit8 v11, v11, 0x3

    .line 83
    .line 84
    add-int/2addr v11, v8

    .line 85
    invoke-virtual {v2, v11}, Lcom/google/zxing/pdf417/decoder/b;->b(I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    array-length v5, v5

    .line 96
    if-eqz v5, :cond_7

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    array-length v5, v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    array-length v5, v5

    .line 110
    if-eqz v5, :cond_7

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    array-length v5, v5

    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    aget v5, v5, v6

    .line 124
    .line 125
    if-lt v5, v8, :cond_7

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    aget v5, v5, v6

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    aget v7, v7, v6

    .line 138
    .line 139
    add-int/2addr v5, v7

    .line 140
    if-lt v5, v9, :cond_7

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    aget v5, v5, v6

    .line 147
    .line 148
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    aget v7, v7, v6

    .line 153
    .line 154
    add-int/2addr v5, v7

    .line 155
    const/16 v7, 0x5a

    .line 156
    .line 157
    if-le v5, v7, :cond_6

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    new-instance v5, Lcom/google/zxing/pdf417/decoder/a;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    aget v1, v1, v6

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    aget v2, v2, v6

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    aget v3, v3, v6

    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/b;->a()[I

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    aget v4, v4, v6

    .line 185
    .line 186
    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/zxing/pdf417/decoder/a;-><init>(IIII)V

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, v0, v5}, Lcom/google/zxing/pdf417/decoder/g;->l([Lcom/google/zxing/pdf417/decoder/d;Lcom/google/zxing/pdf417/decoder/a;)V

    .line 190
    .line 191
    .line 192
    return-object v5

    .line 193
    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 194
    return-object v0
.end method

.method j()[I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/g;->i()Lcom/google/zxing/pdf417/decoder/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/g;->h(Lcom/google/zxing/pdf417/decoder/a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/a;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-array v1, v0, [I

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/f;->d()[Lcom/google/zxing/pdf417/decoder/d;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    array-length v3, v2

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_3

    .line 25
    .line 26
    aget-object v5, v2, v4

    .line 27
    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/d;->c()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-lt v5, v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    aget v6, v1, v5

    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    aput v6, v1, v5

    .line 42
    .line 43
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-object v1
.end method

.method k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "IsLeft: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/g;->c:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/f;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
