.class public abstract Luz/t;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:[Luz/y;

.field b:[Luz/l;

.field c:Luz/k;

.field d:[B

.field e:[I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Luz/k;

    invoke-direct {v0}, Luz/k;-><init>()V

    iput-object v0, p0, Luz/t;->c:Luz/k;

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Luz/t;->d:[B

    new-array v0, v0, [I

    iput-object v0, p0, Luz/t;->e:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luz/t;->h(I)V

    invoke-virtual {p0}, Luz/t;->d()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Luz/k;

    invoke-direct {v0}, Luz/k;-><init>()V

    iput-object v0, p0, Luz/t;->c:Luz/k;

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Luz/t;->d:[B

    new-array v0, v0, [I

    iput-object v0, p0, Luz/t;->e:[I

    invoke-virtual {p0, p1}, Luz/t;->h(I)V

    invoke-virtual {p0}, Luz/t;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Luz/t;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v0, p0, Luz/t;->f:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, v2, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Luz/t;->a:[Luz/y;

    .line 14
    .line 15
    iget-object v2, p0, Luz/t;->e:[I

    .line 16
    .line 17
    aget v2, v2, v3

    .line 18
    .line 19
    aget-object v0, v0, v2

    .line 20
    .line 21
    invoke-virtual {v0}, Luz/y;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "GB18030"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Luz/t;->a:[Luz/y;

    .line 34
    .line 35
    iget-object v2, p0, Luz/t;->e:[I

    .line 36
    .line 37
    aget v2, v2, v1

    .line 38
    .line 39
    aget-object v0, v0, v2

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0}, Luz/y;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Luz/t;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Luz/t;->h:Z

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v0, p0, Luz/t;->a:[Luz/y;

    .line 52
    .line 53
    iget-object v4, p0, Luz/t;->e:[I

    .line 54
    .line 55
    aget v4, v4, v1

    .line 56
    .line 57
    aget-object v0, v0, v4

    .line 58
    .line 59
    invoke-virtual {v0}, Luz/y;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Luz/t;->a:[Luz/y;

    .line 70
    .line 71
    iget-object v2, p0, Luz/t;->e:[I

    .line 72
    .line 73
    aget v2, v2, v3

    .line 74
    .line 75
    aget-object v0, v0, v2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :goto_1
    iget-boolean v0, p0, Luz/t;->i:Z

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0, v3, v1}, Luz/t;->f([BIZ)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public b([BI)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-lt v1, p2, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Luz/t;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Luz/t;->e([BI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean p1, p0, Luz/t;->h:Z

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    aget-byte v2, p1, v1

    .line 16
    .line 17
    move v3, v0

    .line 18
    :cond_2
    :goto_1
    iget v4, p0, Luz/t;->f:I

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-lt v3, v4, :cond_8

    .line 22
    .line 23
    if-gt v4, v5, :cond_4

    .line 24
    .line 25
    if-ne v5, v4, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Luz/t;->a:[Luz/y;

    .line 28
    .line 29
    iget-object p2, p0, Luz/t;->e:[I

    .line 30
    .line 31
    aget p2, p2, v0

    .line 32
    .line 33
    aget-object p1, p1, p2

    .line 34
    .line 35
    invoke-virtual {p1}, Luz/y;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Luz/t;->c(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iput-boolean v5, p0, Luz/t;->h:Z

    .line 43
    .line 44
    return v5

    .line 45
    :cond_4
    move v2, v0

    .line 46
    move v3, v2

    .line 47
    move v4, v3

    .line 48
    :goto_2
    iget v6, p0, Luz/t;->f:I

    .line 49
    .line 50
    if-lt v2, v6, :cond_6

    .line 51
    .line 52
    if-ne v5, v3, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Luz/t;->a:[Luz/y;

    .line 55
    .line 56
    iget-object p2, p0, Luz/t;->e:[I

    .line 57
    .line 58
    aget p2, p2, v4

    .line 59
    .line 60
    aget-object p1, p1, p2

    .line 61
    .line 62
    :goto_3
    invoke-virtual {p1}, Luz/y;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Luz/t;->c(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v5, p0, Luz/t;->h:Z

    .line 70
    .line 71
    return v5

    .line 72
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_6
    iget-object v6, p0, Luz/t;->a:[Luz/y;

    .line 76
    .line 77
    iget-object v7, p0, Luz/t;->e:[I

    .line 78
    .line 79
    aget v7, v7, v2

    .line 80
    .line 81
    aget-object v6, v6, v7

    .line 82
    .line 83
    invoke-virtual {v6}, Luz/y;->d()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_7

    .line 88
    .line 89
    iget-object v6, p0, Luz/t;->a:[Luz/y;

    .line 90
    .line 91
    iget-object v7, p0, Luz/t;->e:[I

    .line 92
    .line 93
    aget v7, v7, v2

    .line 94
    .line 95
    aget-object v6, v6, v7

    .line 96
    .line 97
    invoke-virtual {v6}, Luz/y;->d()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_7

    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    move v4, v2

    .line 106
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    iget-object v4, p0, Luz/t;->a:[Luz/y;

    .line 110
    .line 111
    iget-object v6, p0, Luz/t;->e:[I

    .line 112
    .line 113
    aget v6, v6, v3

    .line 114
    .line 115
    aget-object v4, v4, v6

    .line 116
    .line 117
    iget-object v6, p0, Luz/t;->d:[B

    .line 118
    .line 119
    aget-byte v6, v6, v3

    .line 120
    .line 121
    invoke-static {v4, v2, v6}, Luz/y;->c(Luz/y;BB)B

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    const/4 v6, 0x2

    .line 126
    if-ne v4, v6, :cond_9

    .line 127
    .line 128
    iget-object p1, p0, Luz/t;->a:[Luz/y;

    .line 129
    .line 130
    iget-object p2, p0, Luz/t;->e:[I

    .line 131
    .line 132
    aget p2, p2, v3

    .line 133
    .line 134
    aget-object p1, p1, p2

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_9
    if-ne v4, v5, :cond_a

    .line 138
    .line 139
    iget v4, p0, Luz/t;->f:I

    .line 140
    .line 141
    sub-int/2addr v4, v5

    .line 142
    iput v4, p0, Luz/t;->f:I

    .line 143
    .line 144
    if-ge v3, v4, :cond_2

    .line 145
    .line 146
    iget-object v5, p0, Luz/t;->e:[I

    .line 147
    .line 148
    aget v6, v5, v4

    .line 149
    .line 150
    aput v6, v5, v3

    .line 151
    .line 152
    iget-object v5, p0, Luz/t;->d:[B

    .line 153
    .line 154
    aget-byte v4, v5, v4

    .line 155
    .line 156
    aput-byte v4, v5, v3

    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_a
    iget-object v5, p0, Luz/t;->d:[B

    .line 161
    .line 162
    add-int/lit8 v6, v3, 0x1

    .line 163
    .line 164
    aput-byte v4, v5, v3

    .line 165
    .line 166
    move v3, v6

    .line 167
    goto/16 :goto_1
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Luz/t;->j:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Luz/t;->i:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Luz/t;->h:Z

    .line 7
    .line 8
    iget v1, p0, Luz/t;->g:I

    .line 9
    .line 10
    iput v1, p0, Luz/t;->f:I

    .line 11
    .line 12
    move v1, v0

    .line 13
    :goto_0
    iget v2, p0, Luz/t;->f:I

    .line 14
    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Luz/t;->c:Luz/k;

    .line 18
    .line 19
    invoke-virtual {v0}, Luz/k;->f()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v2, p0, Luz/t;->d:[B

    .line 24
    .line 25
    aput-byte v0, v2, v1

    .line 26
    .line 27
    iget-object v2, p0, Luz/t;->e:[I

    .line 28
    .line 29
    aput v1, v2, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0
.end method

.method public e([BI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Luz/t;->f([BIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f([BIZ)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget v4, p0, Luz/t;->f:I

    .line 6
    .line 7
    if-lt v1, v4, :cond_8

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v2, v1, :cond_0

    .line 11
    .line 12
    move v4, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move v4, v0

    .line 15
    :goto_1
    iput-boolean v4, p0, Luz/t;->i:Z

    .line 16
    .line 17
    if-eqz v4, :cond_7

    .line 18
    .line 19
    iget-object v4, p0, Luz/t;->c:Luz/k;

    .line 20
    .line 21
    invoke-virtual {v4, p1, p2}, Luz/k;->g([BI)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Luz/t;->i:Z

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Luz/t;->c:Luz/k;

    .line 30
    .line 31
    invoke-virtual {p1}, Luz/k;->e()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Luz/t;->c:Luz/k;

    .line 38
    .line 39
    invoke-virtual {p1}, Luz/k;->b()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_7

    .line 44
    .line 45
    :cond_2
    if-ne v2, v3, :cond_7

    .line 46
    .line 47
    iget-object p1, p0, Luz/t;->c:Luz/k;

    .line 48
    .line 49
    invoke-virtual {p1}, Luz/k;->a()V

    .line 50
    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    const/4 p2, 0x0

    .line 54
    move p3, v0

    .line 55
    :goto_2
    iget v2, p0, Luz/t;->f:I

    .line 56
    .line 57
    if-lt v0, v2, :cond_3

    .line 58
    .line 59
    if-ltz p1, :cond_7

    .line 60
    .line 61
    iget-object p2, p0, Luz/t;->a:[Luz/y;

    .line 62
    .line 63
    iget-object p3, p0, Luz/t;->e:[I

    .line 64
    .line 65
    aget p1, p3, p1

    .line 66
    .line 67
    aget-object p1, p2, p1

    .line 68
    .line 69
    invoke-virtual {p1}, Luz/y;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Luz/t;->c(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, p0, Luz/t;->h:Z

    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_3
    iget-object v2, p0, Luz/t;->b:[Luz/l;

    .line 80
    .line 81
    iget-object v3, p0, Luz/t;->e:[I

    .line 82
    .line 83
    aget v3, v3, v0

    .line 84
    .line 85
    aget-object v2, v2, v3

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    iget-object v2, p0, Luz/t;->a:[Luz/y;

    .line 90
    .line 91
    aget-object v2, v2, v3

    .line 92
    .line 93
    invoke-virtual {v2}, Luz/y;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "Big5"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    iget-object v2, p0, Luz/t;->c:Luz/k;

    .line 106
    .line 107
    iget-object v3, p0, Luz/t;->b:[Luz/l;

    .line 108
    .line 109
    iget-object v4, p0, Luz/t;->e:[I

    .line 110
    .line 111
    aget v4, v4, v0

    .line 112
    .line 113
    aget-object v3, v3, v4

    .line 114
    .line 115
    invoke-virtual {v3}, Luz/l;->a()[F

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v4, p0, Luz/t;->b:[Luz/l;

    .line 120
    .line 121
    iget-object v5, p0, Luz/t;->e:[I

    .line 122
    .line 123
    aget v5, v5, v0

    .line 124
    .line 125
    aget-object v4, v4, v5

    .line 126
    .line 127
    invoke-virtual {v4}, Luz/l;->b()F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget-object v5, p0, Luz/t;->b:[Luz/l;

    .line 132
    .line 133
    iget-object v6, p0, Luz/t;->e:[I

    .line 134
    .line 135
    aget v6, v6, v0

    .line 136
    .line 137
    aget-object v5, v5, v6

    .line 138
    .line 139
    invoke-virtual {v5}, Luz/l;->c()[F

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iget-object v6, p0, Luz/t;->b:[Luz/l;

    .line 144
    .line 145
    iget-object v7, p0, Luz/t;->e:[I

    .line 146
    .line 147
    aget v7, v7, v0

    .line 148
    .line 149
    aget-object v6, v6, v7

    .line 150
    .line 151
    invoke-virtual {v6}, Luz/l;->d()F

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v2, v3, v4, v5, v6}, Luz/k;->c([FF[FF)F

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/lit8 v3, p3, 0x1

    .line 160
    .line 161
    if-eqz p3, :cond_5

    .line 162
    .line 163
    cmpl-float p3, p2, v2

    .line 164
    .line 165
    if-lez p3, :cond_4

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_4
    :goto_3
    move p3, v3

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    :goto_4
    move p1, v0

    .line 171
    move p2, v2

    .line 172
    goto :goto_3

    .line 173
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    :goto_6
    return-void

    .line 177
    :cond_8
    iget-object v4, p0, Luz/t;->b:[Luz/l;

    .line 178
    .line 179
    iget-object v5, p0, Luz/t;->e:[I

    .line 180
    .line 181
    aget v5, v5, v1

    .line 182
    .line 183
    aget-object v4, v4, v5

    .line 184
    .line 185
    if-eqz v4, :cond_9

    .line 186
    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 188
    .line 189
    :cond_9
    iget-object v4, p0, Luz/t;->a:[Luz/y;

    .line 190
    .line 191
    aget-object v4, v4, v5

    .line 192
    .line 193
    invoke-virtual {v4}, Luz/y;->d()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-nez v4, :cond_a

    .line 198
    .line 199
    iget-object v4, p0, Luz/t;->a:[Luz/y;

    .line 200
    .line 201
    iget-object v5, p0, Luz/t;->e:[I

    .line 202
    .line 203
    aget v5, v5, v1

    .line 204
    .line 205
    aget-object v4, v4, v5

    .line 206
    .line 207
    invoke-virtual {v4}, Luz/y;->b()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const-string v5, "GB18030"

    .line 212
    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-nez v4, :cond_a

    .line 218
    .line 219
    add-int/lit8 v3, v3, 0x1

    .line 220
    .line 221
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 222
    .line 223
    goto/16 :goto_0
.end method

.method public g()[Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Luz/t;->f:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "nomatch"

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, Luz/t;->f:I

    .line 16
    .line 17
    if-lt v1, v2, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object v2, p0, Luz/t;->a:[Luz/y;

    .line 21
    .line 22
    iget-object v3, p0, Luz/t;->e:[I

    .line 23
    .line 24
    aget v3, v3, v1

    .line 25
    .line 26
    aget-object v2, v2, v3

    .line 27
    .line 28
    invoke-virtual {v2}, Luz/y;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0
.end method

.method protected h(I)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/16 v5, 0xb

    .line 6
    .line 7
    const/16 v6, 0xf

    .line 8
    .line 9
    const/16 v8, 0xa

    .line 10
    .line 11
    const/16 v9, 0x8

    .line 12
    .line 13
    const/4 v10, 0x7

    .line 14
    const/4 v11, 0x5

    .line 15
    const/4 v12, 0x3

    .line 16
    const/4 v13, 0x2

    .line 17
    const/4 v14, 0x1

    .line 18
    const/4 v15, 0x4

    .line 19
    const/4 v2, 0x6

    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move/from16 v1, v18

    .line 29
    .line 30
    :goto_0
    iput-object v3, v0, Luz/t;->a:[Luz/y;

    .line 31
    .line 32
    iput-object v3, v0, Luz/t;->b:[Luz/l;

    .line 33
    .line 34
    if-ne v1, v15, :cond_1

    .line 35
    .line 36
    new-instance v1, Luz/x;

    .line 37
    .line 38
    invoke-direct {v1}, Luz/x;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v4, Luz/f;

    .line 42
    .line 43
    invoke-direct {v4}, Luz/f;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v5, Luz/q;

    .line 47
    .line 48
    invoke-direct {v5}, Luz/q;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v6, Luz/m;

    .line 52
    .line 53
    invoke-direct {v6}, Luz/m;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v7, Luz/g;

    .line 57
    .line 58
    invoke-direct {v7}, Luz/g;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v8, Luz/v;

    .line 62
    .line 63
    invoke-direct {v8}, Luz/v;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v9, Luz/w;

    .line 67
    .line 68
    invoke-direct {v9}, Luz/w;-><init>()V

    .line 69
    .line 70
    .line 71
    new-array v3, v10, [Luz/y;

    .line 72
    .line 73
    aput-object v1, v3, v18

    .line 74
    .line 75
    aput-object v4, v3, v14

    .line 76
    .line 77
    aput-object v5, v3, v13

    .line 78
    .line 79
    aput-object v6, v3, v12

    .line 80
    .line 81
    aput-object v7, v3, v15

    .line 82
    .line 83
    aput-object v8, v3, v11

    .line 84
    .line 85
    aput-object v9, v3, v2

    .line 86
    .line 87
    iput-object v3, v0, Luz/t;->a:[Luz/y;

    .line 88
    .line 89
    new-instance v1, Luz/a;

    .line 90
    .line 91
    invoke-direct {v1}, Luz/a;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v3, Luz/d;

    .line 95
    .line 96
    invoke-direct {v3}, Luz/d;-><init>()V

    .line 97
    .line 98
    .line 99
    new-array v4, v10, [Luz/l;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    aput-object v5, v4, v18

    .line 103
    .line 104
    aput-object v1, v4, v14

    .line 105
    .line 106
    aput-object v5, v4, v13

    .line 107
    .line 108
    aput-object v3, v4, v12

    .line 109
    .line 110
    aput-object v5, v4, v15

    .line 111
    .line 112
    aput-object v5, v4, v11

    .line 113
    .line 114
    aput-object v5, v4, v2

    .line 115
    .line 116
    iput-object v4, v0, Luz/t;->b:[Luz/l;

    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_1
    if-ne v1, v11, :cond_2

    .line 121
    .line 122
    new-instance v1, Luz/x;

    .line 123
    .line 124
    invoke-direct {v1}, Luz/x;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v3, Luz/j;

    .line 128
    .line 129
    invoke-direct {v3}, Luz/j;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v4, Luz/s;

    .line 133
    .line 134
    invoke-direct {v4}, Luz/s;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v5, Luz/g;

    .line 138
    .line 139
    invoke-direct {v5}, Luz/g;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v6, Luz/v;

    .line 143
    .line 144
    invoke-direct {v6}, Luz/v;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v7, Luz/w;

    .line 148
    .line 149
    invoke-direct {v7}, Luz/w;-><init>()V

    .line 150
    .line 151
    .line 152
    new-array v2, v2, [Luz/y;

    .line 153
    .line 154
    aput-object v1, v2, v18

    .line 155
    .line 156
    aput-object v3, v2, v14

    .line 157
    .line 158
    aput-object v4, v2, v13

    .line 159
    .line 160
    aput-object v5, v2, v12

    .line 161
    .line 162
    aput-object v6, v2, v15

    .line 163
    .line 164
    aput-object v7, v2, v11

    .line 165
    .line 166
    iput-object v2, v0, Luz/t;->a:[Luz/y;

    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_2
    if-ne v1, v12, :cond_3

    .line 171
    .line 172
    new-instance v1, Luz/x;

    .line 173
    .line 174
    invoke-direct {v1}, Luz/x;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v3, Luz/o;

    .line 178
    .line 179
    invoke-direct {v3}, Luz/o;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v4, Luz/n;

    .line 183
    .line 184
    invoke-direct {v4}, Luz/n;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v5, Luz/q;

    .line 188
    .line 189
    invoke-direct {v5}, Luz/q;-><init>()V

    .line 190
    .line 191
    .line 192
    new-instance v6, Luz/p;

    .line 193
    .line 194
    invoke-direct {v6}, Luz/p;-><init>()V

    .line 195
    .line 196
    .line 197
    new-instance v7, Luz/g;

    .line 198
    .line 199
    invoke-direct {v7}, Luz/g;-><init>()V

    .line 200
    .line 201
    .line 202
    new-instance v8, Luz/v;

    .line 203
    .line 204
    invoke-direct {v8}, Luz/v;-><init>()V

    .line 205
    .line 206
    .line 207
    new-instance v16, Luz/w;

    .line 208
    .line 209
    invoke-direct/range {v16 .. v16}, Luz/w;-><init>()V

    .line 210
    .line 211
    .line 212
    new-array v9, v9, [Luz/y;

    .line 213
    .line 214
    aput-object v1, v9, v18

    .line 215
    .line 216
    aput-object v3, v9, v14

    .line 217
    .line 218
    aput-object v4, v9, v13

    .line 219
    .line 220
    aput-object v5, v9, v12

    .line 221
    .line 222
    aput-object v6, v9, v15

    .line 223
    .line 224
    aput-object v7, v9, v11

    .line 225
    .line 226
    aput-object v8, v9, v2

    .line 227
    .line 228
    aput-object v16, v9, v10

    .line 229
    .line 230
    iput-object v9, v0, Luz/t;->a:[Luz/y;

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_3
    if-ne v1, v14, :cond_4

    .line 235
    .line 236
    new-instance v1, Luz/x;

    .line 237
    .line 238
    invoke-direct {v1}, Luz/x;-><init>()V

    .line 239
    .line 240
    .line 241
    new-instance v3, Luz/u;

    .line 242
    .line 243
    invoke-direct {v3}, Luz/u;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v4, Luz/i;

    .line 247
    .line 248
    invoke-direct {v4}, Luz/i;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v5, Luz/r;

    .line 252
    .line 253
    invoke-direct {v5}, Luz/r;-><init>()V

    .line 254
    .line 255
    .line 256
    new-instance v6, Luz/g;

    .line 257
    .line 258
    invoke-direct {v6}, Luz/g;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance v7, Luz/v;

    .line 262
    .line 263
    invoke-direct {v7}, Luz/v;-><init>()V

    .line 264
    .line 265
    .line 266
    new-instance v8, Luz/w;

    .line 267
    .line 268
    invoke-direct {v8}, Luz/w;-><init>()V

    .line 269
    .line 270
    .line 271
    new-array v9, v10, [Luz/y;

    .line 272
    .line 273
    aput-object v1, v9, v18

    .line 274
    .line 275
    aput-object v3, v9, v14

    .line 276
    .line 277
    aput-object v4, v9, v13

    .line 278
    .line 279
    aput-object v5, v9, v12

    .line 280
    .line 281
    aput-object v6, v9, v15

    .line 282
    .line 283
    aput-object v7, v9, v11

    .line 284
    .line 285
    aput-object v8, v9, v2

    .line 286
    .line 287
    iput-object v9, v0, Luz/t;->a:[Luz/y;

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :cond_4
    if-ne v1, v13, :cond_5

    .line 292
    .line 293
    new-instance v1, Luz/x;

    .line 294
    .line 295
    invoke-direct {v1}, Luz/x;-><init>()V

    .line 296
    .line 297
    .line 298
    new-instance v3, Luz/o;

    .line 299
    .line 300
    invoke-direct {v3}, Luz/o;-><init>()V

    .line 301
    .line 302
    .line 303
    new-instance v4, Luz/n;

    .line 304
    .line 305
    invoke-direct {v4}, Luz/n;-><init>()V

    .line 306
    .line 307
    .line 308
    new-instance v5, Luz/f;

    .line 309
    .line 310
    invoke-direct {v5}, Luz/f;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v6, Luz/q;

    .line 314
    .line 315
    invoke-direct {v6}, Luz/q;-><init>()V

    .line 316
    .line 317
    .line 318
    new-instance v16, Luz/p;

    .line 319
    .line 320
    invoke-direct/range {v16 .. v16}, Luz/p;-><init>()V

    .line 321
    .line 322
    .line 323
    new-instance v17, Luz/m;

    .line 324
    .line 325
    invoke-direct/range {v17 .. v17}, Luz/m;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v20, Luz/g;

    .line 329
    .line 330
    invoke-direct/range {v20 .. v20}, Luz/g;-><init>()V

    .line 331
    .line 332
    .line 333
    new-instance v21, Luz/v;

    .line 334
    .line 335
    invoke-direct/range {v21 .. v21}, Luz/v;-><init>()V

    .line 336
    .line 337
    .line 338
    new-instance v22, Luz/w;

    .line 339
    .line 340
    invoke-direct/range {v22 .. v22}, Luz/w;-><init>()V

    .line 341
    .line 342
    .line 343
    new-array v7, v8, [Luz/y;

    .line 344
    .line 345
    aput-object v1, v7, v18

    .line 346
    .line 347
    aput-object v3, v7, v14

    .line 348
    .line 349
    aput-object v4, v7, v13

    .line 350
    .line 351
    aput-object v5, v7, v12

    .line 352
    .line 353
    aput-object v6, v7, v15

    .line 354
    .line 355
    aput-object v16, v7, v11

    .line 356
    .line 357
    aput-object v17, v7, v2

    .line 358
    .line 359
    aput-object v20, v7, v10

    .line 360
    .line 361
    aput-object v21, v7, v9

    .line 362
    .line 363
    const/16 v1, 0x9

    .line 364
    .line 365
    aput-object v22, v7, v1

    .line 366
    .line 367
    iput-object v7, v0, Luz/t;->a:[Luz/y;

    .line 368
    .line 369
    new-instance v1, Luz/e;

    .line 370
    .line 371
    invoke-direct {v1}, Luz/e;-><init>()V

    .line 372
    .line 373
    .line 374
    new-instance v3, Luz/a;

    .line 375
    .line 376
    invoke-direct {v3}, Luz/a;-><init>()V

    .line 377
    .line 378
    .line 379
    new-instance v4, Luz/d;

    .line 380
    .line 381
    invoke-direct {v4}, Luz/d;-><init>()V

    .line 382
    .line 383
    .line 384
    new-array v5, v8, [Luz/l;

    .line 385
    .line 386
    const/4 v6, 0x0

    .line 387
    aput-object v6, v5, v18

    .line 388
    .line 389
    aput-object v1, v5, v14

    .line 390
    .line 391
    aput-object v6, v5, v13

    .line 392
    .line 393
    aput-object v3, v5, v12

    .line 394
    .line 395
    aput-object v6, v5, v15

    .line 396
    .line 397
    aput-object v6, v5, v11

    .line 398
    .line 399
    aput-object v4, v5, v2

    .line 400
    .line 401
    aput-object v6, v5, v10

    .line 402
    .line 403
    aput-object v6, v5, v9

    .line 404
    .line 405
    const/16 v1, 0x9

    .line 406
    .line 407
    aput-object v6, v5, v1

    .line 408
    .line 409
    iput-object v5, v0, Luz/t;->b:[Luz/l;

    .line 410
    .line 411
    goto/16 :goto_1

    .line 412
    .line 413
    :cond_5
    if-nez v1, :cond_6

    .line 414
    .line 415
    new-instance v1, Luz/x;

    .line 416
    .line 417
    invoke-direct {v1}, Luz/x;-><init>()V

    .line 418
    .line 419
    .line 420
    new-instance v3, Luz/u;

    .line 421
    .line 422
    invoke-direct {v3}, Luz/u;-><init>()V

    .line 423
    .line 424
    .line 425
    new-instance v7, Luz/i;

    .line 426
    .line 427
    invoke-direct {v7}, Luz/i;-><init>()V

    .line 428
    .line 429
    .line 430
    new-instance v20, Luz/r;

    .line 431
    .line 432
    invoke-direct/range {v20 .. v20}, Luz/r;-><init>()V

    .line 433
    .line 434
    .line 435
    new-instance v21, Luz/j;

    .line 436
    .line 437
    invoke-direct/range {v21 .. v21}, Luz/j;-><init>()V

    .line 438
    .line 439
    .line 440
    new-instance v22, Luz/s;

    .line 441
    .line 442
    invoke-direct/range {v22 .. v22}, Luz/s;-><init>()V

    .line 443
    .line 444
    .line 445
    new-instance v23, Luz/f;

    .line 446
    .line 447
    invoke-direct/range {v23 .. v23}, Luz/f;-><init>()V

    .line 448
    .line 449
    .line 450
    new-instance v24, Luz/m;

    .line 451
    .line 452
    invoke-direct/range {v24 .. v24}, Luz/m;-><init>()V

    .line 453
    .line 454
    .line 455
    new-instance v25, Luz/o;

    .line 456
    .line 457
    invoke-direct/range {v25 .. v25}, Luz/o;-><init>()V

    .line 458
    .line 459
    .line 460
    new-instance v26, Luz/n;

    .line 461
    .line 462
    invoke-direct/range {v26 .. v26}, Luz/n;-><init>()V

    .line 463
    .line 464
    .line 465
    new-instance v27, Luz/q;

    .line 466
    .line 467
    invoke-direct/range {v27 .. v27}, Luz/q;-><init>()V

    .line 468
    .line 469
    .line 470
    new-instance v28, Luz/p;

    .line 471
    .line 472
    invoke-direct/range {v28 .. v28}, Luz/p;-><init>()V

    .line 473
    .line 474
    .line 475
    new-instance v29, Luz/g;

    .line 476
    .line 477
    invoke-direct/range {v29 .. v29}, Luz/g;-><init>()V

    .line 478
    .line 479
    .line 480
    new-instance v30, Luz/v;

    .line 481
    .line 482
    invoke-direct/range {v30 .. v30}, Luz/v;-><init>()V

    .line 483
    .line 484
    .line 485
    new-instance v31, Luz/w;

    .line 486
    .line 487
    invoke-direct/range {v31 .. v31}, Luz/w;-><init>()V

    .line 488
    .line 489
    .line 490
    new-array v4, v6, [Luz/y;

    .line 491
    .line 492
    aput-object v1, v4, v18

    .line 493
    .line 494
    aput-object v3, v4, v14

    .line 495
    .line 496
    aput-object v7, v4, v13

    .line 497
    .line 498
    aput-object v20, v4, v12

    .line 499
    .line 500
    aput-object v21, v4, v15

    .line 501
    .line 502
    aput-object v22, v4, v11

    .line 503
    .line 504
    aput-object v23, v4, v2

    .line 505
    .line 506
    aput-object v24, v4, v10

    .line 507
    .line 508
    aput-object v25, v4, v9

    .line 509
    .line 510
    const/16 v1, 0x9

    .line 511
    .line 512
    aput-object v26, v4, v1

    .line 513
    .line 514
    aput-object v27, v4, v8

    .line 515
    .line 516
    aput-object v28, v4, v5

    .line 517
    .line 518
    const/16 v1, 0xc

    .line 519
    .line 520
    aput-object v29, v4, v1

    .line 521
    .line 522
    const/16 v1, 0xd

    .line 523
    .line 524
    aput-object v30, v4, v1

    .line 525
    .line 526
    const/16 v1, 0xe

    .line 527
    .line 528
    aput-object v31, v4, v1

    .line 529
    .line 530
    iput-object v4, v0, Luz/t;->a:[Luz/y;

    .line 531
    .line 532
    new-instance v1, Luz/b;

    .line 533
    .line 534
    invoke-direct {v1}, Luz/b;-><init>()V

    .line 535
    .line 536
    .line 537
    new-instance v3, Luz/c;

    .line 538
    .line 539
    invoke-direct {v3}, Luz/c;-><init>()V

    .line 540
    .line 541
    .line 542
    new-instance v4, Luz/a;

    .line 543
    .line 544
    invoke-direct {v4}, Luz/a;-><init>()V

    .line 545
    .line 546
    .line 547
    new-instance v7, Luz/d;

    .line 548
    .line 549
    invoke-direct {v7}, Luz/d;-><init>()V

    .line 550
    .line 551
    .line 552
    new-instance v20, Luz/e;

    .line 553
    .line 554
    invoke-direct/range {v20 .. v20}, Luz/e;-><init>()V

    .line 555
    .line 556
    .line 557
    new-array v6, v6, [Luz/l;

    .line 558
    .line 559
    const/16 v19, 0x0

    .line 560
    .line 561
    aput-object v19, v6, v18

    .line 562
    .line 563
    aput-object v19, v6, v14

    .line 564
    .line 565
    aput-object v1, v6, v13

    .line 566
    .line 567
    aput-object v19, v6, v12

    .line 568
    .line 569
    aput-object v3, v6, v15

    .line 570
    .line 571
    aput-object v19, v6, v11

    .line 572
    .line 573
    aput-object v4, v6, v2

    .line 574
    .line 575
    aput-object v7, v6, v10

    .line 576
    .line 577
    aput-object v20, v6, v9

    .line 578
    .line 579
    const/16 v1, 0x9

    .line 580
    .line 581
    aput-object v19, v6, v1

    .line 582
    .line 583
    aput-object v19, v6, v8

    .line 584
    .line 585
    aput-object v19, v6, v5

    .line 586
    .line 587
    const/16 v1, 0xc

    .line 588
    .line 589
    aput-object v19, v6, v1

    .line 590
    .line 591
    const/16 v1, 0xd

    .line 592
    .line 593
    aput-object v19, v6, v1

    .line 594
    .line 595
    const/16 v1, 0xe

    .line 596
    .line 597
    aput-object v19, v6, v1

    .line 598
    .line 599
    iput-object v6, v0, Luz/t;->b:[Luz/l;

    .line 600
    .line 601
    :cond_6
    :goto_1
    iget-object v1, v0, Luz/t;->b:[Luz/l;

    .line 602
    .line 603
    if-eqz v1, :cond_7

    .line 604
    .line 605
    goto :goto_2

    .line 606
    :cond_7
    move/from16 v14, v18

    .line 607
    .line 608
    :goto_2
    iput-boolean v14, v0, Luz/t;->j:Z

    .line 609
    .line 610
    iget-object v1, v0, Luz/t;->a:[Luz/y;

    .line 611
    .line 612
    array-length v1, v1

    .line 613
    iput v1, v0, Luz/t;->g:I

    .line 614
    .line 615
    return-void
.end method
