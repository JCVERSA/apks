.class public Lvz/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:[B

.field private final b:[I

.field private final c:[Ljava/lang/String;

.field private final d:[Lvz/h;

.field private final e:[I

.field private final f:I

.field public final g:I


# direct methods
.method constructor <init>([BIZ)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvz/e;->a:[B

    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    add-int/lit8 p3, p2, 0x6

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lvz/e;->B(I)S

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x38

    .line 15
    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "Unsupported class file major version "

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3}, Lvz/e;->B(I)S

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 47
    .line 48
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    new-array v0, p3, [I

    .line 53
    .line 54
    iput-object v0, p0, Lvz/e;->b:[I

    .line 55
    .line 56
    new-array v0, p3, [Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lvz/e;->c:[Ljava/lang/String;

    .line 59
    .line 60
    add-int/lit8 p2, p2, 0xa

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x1

    .line 64
    move v2, v0

    .line 65
    move v3, v2

    .line 66
    move v4, v1

    .line 67
    :goto_1
    if-ge v4, p3, :cond_3

    .line 68
    .line 69
    iget-object v5, p0, Lvz/e;->b:[I

    .line 70
    .line 71
    add-int/lit8 v6, v4, 0x1

    .line 72
    .line 73
    add-int/lit8 v7, p2, 0x1

    .line 74
    .line 75
    aput v7, v5, v4

    .line 76
    .line 77
    aget-byte v5, p1, p2

    .line 78
    .line 79
    const/4 v8, 0x3

    .line 80
    const/4 v9, 0x5

    .line 81
    packed-switch v5, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :pswitch_1
    move v3, v1

    .line 91
    :goto_2
    :pswitch_2
    move v4, v6

    .line 92
    move v8, v9

    .line 93
    goto :goto_3

    .line 94
    :pswitch_3
    move v2, v1

    .line 95
    goto :goto_2

    .line 96
    :pswitch_4
    const/4 v8, 0x4

    .line 97
    :cond_2
    :pswitch_5
    move v4, v6

    .line 98
    goto :goto_3

    .line 99
    :pswitch_6
    add-int/lit8 v4, v4, 0x2

    .line 100
    .line 101
    const/16 v8, 0x9

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :pswitch_7
    invoke-virtual {p0, v7}, Lvz/e;->H(I)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    add-int/2addr v8, v4

    .line 109
    if-le v8, v0, :cond_2

    .line 110
    .line 111
    move v4, v6

    .line 112
    move v0, v8

    .line 113
    :goto_3
    add-int/2addr p2, v8

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iput v0, p0, Lvz/e;->f:I

    .line 116
    .line 117
    iput p2, p0, Lvz/e;->g:I

    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    new-array p2, p3, [Lvz/h;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    move-object p2, p1

    .line 126
    :goto_4
    iput-object p2, p0, Lvz/e;->d:[Lvz/h;

    .line 127
    .line 128
    or-int p2, v2, v3

    .line 129
    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    invoke-direct {p0, v0}, Lvz/e;->k(I)[I

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :cond_5
    iput-object p1, p0, Lvz/e;->e:[I

    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private A(Lvz/r;Lvz/i;IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvz/e;->a:[B

    .line 2
    .line 3
    add-int/lit8 v1, p3, 0x1

    .line 4
    .line 5
    aget-byte p3, v0, p3

    .line 6
    .line 7
    and-int/lit16 p3, p3, 0xff

    .line 8
    .line 9
    invoke-virtual {p1, p3, p4}, Lvz/r;->a(IZ)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p2, Lvz/i;->c:[C

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .line 24
    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    add-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    invoke-virtual {p1, v0, v2, p4}, Lvz/r;->z(ILjava/lang/String;Z)Lvz/a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-direct {p0, v2, v1, v4, p2}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    move v2, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private C(IZZLvz/i;)I
    .locals 11

    .line 1
    iget-object v6, p4, Lvz/i;->c:[C

    .line 2
    .line 3
    iget-object v7, p4, Lvz/i;->g:[Lvz/q;

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lvz/e;->a:[B

    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    aget-byte p1, p2, p1

    .line 14
    .line 15
    and-int/2addr p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p2, -0x1

    .line 18
    iput p2, p4, Lvz/i;->m:I

    .line 19
    .line 20
    move v1, p1

    .line 21
    move p1, v0

    .line 22
    :goto_0
    const/4 p2, 0x0

    .line 23
    iput p2, p4, Lvz/i;->p:I

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    const/16 v3, 0x40

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-ge p1, v3, :cond_1

    .line 30
    .line 31
    iput v2, p4, Lvz/i;->n:I

    .line 32
    .line 33
    iput p2, p4, Lvz/i;->r:I

    .line 34
    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :cond_1
    const/16 v3, 0x80

    .line 38
    .line 39
    const/4 v9, 0x4

    .line 40
    if-ge p1, v3, :cond_2

    .line 41
    .line 42
    add-int/lit8 p1, p1, -0x40

    .line 43
    .line 44
    iget-object v2, p4, Lvz/i;->s:[Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    move-object v0, p0

    .line 48
    move-object v4, v6

    .line 49
    move-object v5, v7

    .line 50
    invoke-direct/range {v0 .. v5}, Lvz/e;->K(I[Ljava/lang/Object;I[C[Lvz/q;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v9, p4, Lvz/i;->n:I

    .line 55
    .line 56
    iput v8, p4, Lvz/i;->r:I

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_2
    const/16 v3, 0xf7

    .line 61
    .line 62
    if-lt p1, v3, :cond_b

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    add-int/lit8 v4, v1, 0x2

    .line 69
    .line 70
    if-ne p1, v3, :cond_4

    .line 71
    .line 72
    iget-object v2, p4, Lvz/i;->s:[Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    move-object v0, p0

    .line 76
    move v1, v4

    .line 77
    move-object v4, v6

    .line 78
    move-object v5, v7

    .line 79
    invoke-direct/range {v0 .. v5}, Lvz/e;->K(I[Ljava/lang/Object;I[C[Lvz/q;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput v9, p4, Lvz/i;->n:I

    .line 84
    .line 85
    iput v8, p4, Lvz/i;->r:I

    .line 86
    .line 87
    :cond_3
    :goto_1
    move p1, v10

    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :cond_4
    const/16 v3, 0xf8

    .line 91
    .line 92
    const/4 v9, 0x2

    .line 93
    const/16 v5, 0xfb

    .line 94
    .line 95
    if-lt p1, v3, :cond_5

    .line 96
    .line 97
    if-ge p1, v5, :cond_5

    .line 98
    .line 99
    iput v9, p4, Lvz/i;->n:I

    .line 100
    .line 101
    rsub-int p1, p1, 0xfb

    .line 102
    .line 103
    iput p1, p4, Lvz/i;->p:I

    .line 104
    .line 105
    iget p3, p4, Lvz/i;->o:I

    .line 106
    .line 107
    sub-int/2addr p3, p1

    .line 108
    iput p3, p4, Lvz/i;->o:I

    .line 109
    .line 110
    iput p2, p4, Lvz/i;->r:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    if-ne p1, v5, :cond_6

    .line 114
    .line 115
    iput v2, p4, Lvz/i;->n:I

    .line 116
    .line 117
    iput p2, p4, Lvz/i;->r:I

    .line 118
    .line 119
    :goto_2
    move v1, v4

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    if-ge p1, v0, :cond_9

    .line 122
    .line 123
    if-eqz p3, :cond_7

    .line 124
    .line 125
    iget p3, p4, Lvz/i;->o:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    move p3, p2

    .line 129
    :goto_3
    add-int/lit16 p1, p1, -0xfb

    .line 130
    .line 131
    move v3, p3

    .line 132
    move v1, v4

    .line 133
    move p3, p1

    .line 134
    :goto_4
    if-lez p3, :cond_8

    .line 135
    .line 136
    iget-object v2, p4, Lvz/i;->q:[Ljava/lang/Object;

    .line 137
    .line 138
    add-int/lit8 v9, v3, 0x1

    .line 139
    .line 140
    move-object v0, p0

    .line 141
    move-object v4, v6

    .line 142
    move-object v5, v7

    .line 143
    invoke-direct/range {v0 .. v5}, Lvz/e;->K(I[Ljava/lang/Object;I[C[Lvz/q;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    add-int/lit8 p3, p3, -0x1

    .line 148
    .line 149
    move v3, v9

    .line 150
    goto :goto_4

    .line 151
    :cond_8
    iput v8, p4, Lvz/i;->n:I

    .line 152
    .line 153
    iput p1, p4, Lvz/i;->p:I

    .line 154
    .line 155
    iget p3, p4, Lvz/i;->o:I

    .line 156
    .line 157
    add-int/2addr p3, p1

    .line 158
    iput p3, p4, Lvz/i;->o:I

    .line 159
    .line 160
    iput p2, p4, Lvz/i;->r:I

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_9
    invoke-virtual {p0, v4}, Lvz/e;->H(I)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    add-int/lit8 v1, v1, 0x4

    .line 168
    .line 169
    iput p2, p4, Lvz/i;->n:I

    .line 170
    .line 171
    iput p1, p4, Lvz/i;->p:I

    .line 172
    .line 173
    iput p1, p4, Lvz/i;->o:I

    .line 174
    .line 175
    move p3, p2

    .line 176
    :goto_5
    if-ge p3, p1, :cond_a

    .line 177
    .line 178
    iget-object v2, p4, Lvz/i;->q:[Ljava/lang/Object;

    .line 179
    .line 180
    move-object v0, p0

    .line 181
    move v3, p3

    .line 182
    move-object v4, v6

    .line 183
    move-object v5, v7

    .line 184
    invoke-direct/range {v0 .. v5}, Lvz/e;->K(I[Ljava/lang/Object;I[C[Lvz/q;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/lit8 p3, p3, 0x1

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_a
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    add-int/2addr v1, v9

    .line 196
    iput p1, p4, Lvz/i;->r:I

    .line 197
    .line 198
    :goto_6
    if-ge p2, p1, :cond_3

    .line 199
    .line 200
    iget-object v2, p4, Lvz/i;->s:[Ljava/lang/Object;

    .line 201
    .line 202
    move-object v0, p0

    .line 203
    move v3, p2

    .line 204
    move-object v4, v6

    .line 205
    move-object v5, v7

    .line 206
    invoke-direct/range {v0 .. v5}, Lvz/e;->K(I[Ljava/lang/Object;I[C[Lvz/q;)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    add-int/lit8 p2, p2, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :goto_7
    iget p2, p4, Lvz/i;->m:I

    .line 214
    .line 215
    add-int/2addr p1, v8

    .line 216
    add-int/2addr p2, p1

    .line 217
    iput p2, p4, Lvz/i;->m:I

    .line 218
    .line 219
    invoke-direct {p0, p2, v7}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    .line 220
    .line 221
    .line 222
    return v1

    .line 223
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 226
    .line 227
    .line 228
    throw p1
.end method

.method private D(I[C)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/e;->b:[I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvz/e;->H(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private E(Lvz/i;I)I
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Lvz/e;->t(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x18

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/high16 v3, -0x1000000

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    packed-switch v1, :pswitch_data_1

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :pswitch_0
    const v1, -0xffff01

    .line 27
    .line 28
    .line 29
    and-int/2addr v0, v1

    .line 30
    add-int/lit8 p2, p2, 0x4

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :pswitch_1
    and-int/2addr v0, v3

    .line 34
    :goto_0
    add-int/lit8 p2, p2, 0x3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :pswitch_2
    and-int/2addr v0, v3

    .line 38
    add-int/lit8 v1, p2, 0x1

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 p2, p2, 0x3

    .line 45
    .line 46
    new-array v3, v1, [Lvz/q;

    .line 47
    .line 48
    iput-object v3, p1, Lvz/i;->j:[Lvz/q;

    .line 49
    .line 50
    new-array v3, v1, [Lvz/q;

    .line 51
    .line 52
    iput-object v3, p1, Lvz/i;->k:[Lvz/q;

    .line 53
    .line 54
    new-array v3, v1, [I

    .line 55
    .line 56
    iput-object v3, p1, Lvz/i;->l:[I

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_1
    if-ge v3, v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lvz/e;->H(I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    add-int/lit8 v5, p2, 0x2

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Lvz/e;->H(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    add-int/lit8 v6, p2, 0x4

    .line 72
    .line 73
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    add-int/lit8 p2, p2, 0x6

    .line 78
    .line 79
    iget-object v7, p1, Lvz/i;->j:[Lvz/q;

    .line 80
    .line 81
    iget-object v8, p1, Lvz/i;->g:[Lvz/q;

    .line 82
    .line 83
    invoke-direct {p0, v4, v8}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    aput-object v8, v7, v3

    .line 88
    .line 89
    iget-object v7, p1, Lvz/i;->k:[Lvz/q;

    .line 90
    .line 91
    add-int/2addr v4, v5

    .line 92
    iget-object v5, p1, Lvz/i;->g:[Lvz/q;

    .line 93
    .line 94
    invoke-direct {p0, v4, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    aput-object v4, v7, v3

    .line 99
    .line 100
    iget-object v4, p1, Lvz/i;->l:[I

    .line 101
    .line 102
    aput v6, v4, v3

    .line 103
    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_3
    and-int/2addr v0, v3

    .line 108
    add-int/2addr p2, v2

    .line 109
    goto :goto_2

    .line 110
    :pswitch_4
    and-int/lit16 v0, v0, -0x100

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    :pswitch_5
    const/high16 v1, -0x10000

    .line 114
    .line 115
    and-int/2addr v0, v1

    .line 116
    add-int/lit8 p2, p2, 0x2

    .line 117
    .line 118
    :cond_1
    :goto_2
    iput v0, p1, Lvz/i;->h:I

    .line 119
    .line 120
    invoke-virtual {p0, p2}, Lvz/e;->l(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    new-instance v1, Lvz/z;

    .line 129
    .line 130
    iget-object v3, p0, Lvz/e;->a:[B

    .line 131
    .line 132
    invoke-direct {v1, v3, p2}, Lvz/z;-><init>([BI)V

    .line 133
    .line 134
    .line 135
    :goto_3
    iput-object v1, p1, Lvz/i;->i:Lvz/z;

    .line 136
    .line 137
    add-int/2addr p2, v2

    .line 138
    mul-int/lit8 v0, v0, 0x2

    .line 139
    .line 140
    add-int/2addr p2, v0

    .line 141
    return p2

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private F(Lvz/r;Lvz/i;IZ)[I
    .locals 10

    .line 1
    iget-object v0, p2, Lvz/i;->c:[C

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    add-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    aput p3, v2, v3

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Lvz/e;->t(I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    ushr-int/lit8 v5, v4, 0x18

    .line 21
    .line 22
    const/16 v6, 0x17

    .line 23
    .line 24
    if-eq v5, v6, :cond_0

    .line 25
    .line 26
    packed-switch v5, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    packed-switch v5, :pswitch_data_1

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :pswitch_1
    add-int/lit8 v6, p3, 0x1

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    add-int/lit8 p3, p3, 0x3

    .line 48
    .line 49
    :goto_1
    add-int/lit8 v7, v6, -0x1

    .line 50
    .line 51
    if-lez v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    add-int/lit8 v8, p3, 0x2

    .line 58
    .line 59
    invoke-virtual {p0, v8}, Lvz/e;->H(I)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    add-int/lit8 p3, p3, 0x6

    .line 64
    .line 65
    iget-object v9, p2, Lvz/i;->g:[Lvz/q;

    .line 66
    .line 67
    invoke-direct {p0, v6, v9}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    .line 68
    .line 69
    .line 70
    add-int/2addr v6, v8

    .line 71
    iget-object v8, p2, Lvz/i;->g:[Lvz/q;

    .line 72
    .line 73
    invoke-direct {p0, v6, v8}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    .line 74
    .line 75
    .line 76
    move v6, v7

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :pswitch_2
    add-int/lit8 p3, p3, 0x3

    .line 79
    .line 80
    :cond_1
    :goto_2
    invoke-virtual {p0, p3}, Lvz/e;->l(I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const/16 v7, 0x42

    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    const/4 v9, 0x1

    .line 88
    if-ne v5, v7, :cond_3

    .line 89
    .line 90
    if-nez v6, :cond_2

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    new-instance v8, Lvz/z;

    .line 94
    .line 95
    iget-object v5, p0, Lvz/e;->a:[B

    .line 96
    .line 97
    invoke-direct {v8, v5, p3}, Lvz/z;-><init>([BI)V

    .line 98
    .line 99
    .line 100
    :goto_3
    mul-int/lit8 v6, v6, 0x2

    .line 101
    .line 102
    add-int/2addr v6, v9

    .line 103
    add-int/2addr p3, v6

    .line 104
    invoke-virtual {p0, p3, v0}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    add-int/lit8 p3, p3, 0x2

    .line 109
    .line 110
    and-int/lit16 v4, v4, -0x100

    .line 111
    .line 112
    invoke-virtual {p1, v4, v8, v5, p4}, Lvz/r;->B(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-direct {p0, v4, p3, v9, v0}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    goto :goto_4

    .line 121
    :cond_3
    mul-int/lit8 v6, v6, 0x2

    .line 122
    .line 123
    add-int/lit8 v6, v6, 0x3

    .line 124
    .line 125
    add-int/2addr p3, v6

    .line 126
    invoke-direct {p0, v8, p3, v9, v0}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    return-object v2

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private I(II[C)Ljava/lang/String;
    .locals 7

    .line 1
    add-int/2addr p2, p1

    .line 2
    iget-object v0, p0, Lvz/e;->a:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge p1, p2, :cond_2

    .line 7
    .line 8
    add-int/lit8 v3, p1, 0x1

    .line 9
    .line 10
    aget-byte v4, v0, p1

    .line 11
    .line 12
    and-int/lit16 v5, v4, 0x80

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    add-int/lit8 p1, v2, 0x1

    .line 17
    .line 18
    and-int/lit8 v4, v4, 0x7f

    .line 19
    .line 20
    int-to-char v4, v4

    .line 21
    aput-char v4, p3, v2

    .line 22
    .line 23
    move v2, p1

    .line 24
    move p1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    and-int/lit16 v5, v4, 0xe0

    .line 27
    .line 28
    const/16 v6, 0xc0

    .line 29
    .line 30
    if-ne v5, v6, :cond_1

    .line 31
    .line 32
    add-int/lit8 v5, v2, 0x1

    .line 33
    .line 34
    and-int/lit8 v4, v4, 0x1f

    .line 35
    .line 36
    shl-int/lit8 v4, v4, 0x6

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    aget-byte v3, v0, v3

    .line 41
    .line 42
    and-int/lit8 v3, v3, 0x3f

    .line 43
    .line 44
    add-int/2addr v4, v3

    .line 45
    int-to-char v3, v4

    .line 46
    aput-char v3, p3, v2

    .line 47
    .line 48
    :goto_1
    move v2, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 51
    .line 52
    and-int/lit8 v4, v4, 0xf

    .line 53
    .line 54
    shl-int/lit8 v4, v4, 0xc

    .line 55
    .line 56
    add-int/lit8 v6, p1, 0x2

    .line 57
    .line 58
    aget-byte v3, v0, v3

    .line 59
    .line 60
    and-int/lit8 v3, v3, 0x3f

    .line 61
    .line 62
    shl-int/lit8 v3, v3, 0x6

    .line 63
    .line 64
    add-int/2addr v4, v3

    .line 65
    add-int/lit8 p1, p1, 0x3

    .line 66
    .line 67
    aget-byte v3, v0, v6

    .line 68
    .line 69
    and-int/lit8 v3, v3, 0x3f

    .line 70
    .line 71
    add-int/2addr v4, v3

    .line 72
    int-to-char v3, v4

    .line 73
    aput-char v3, p3, v2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p1, p3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 79
    .line 80
    .line 81
    return-object p1
.end method

.method private K(I[Ljava/lang/Object;I[C[Lvz/q;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lvz/e;->a:[B

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    aget-byte v0, v0, p1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    invoke-direct {p0, p4, p5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    aput-object p4, p2, p3

    .line 27
    .line 28
    :goto_0
    add-int/lit8 v1, p1, 0x3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_1
    invoke-virtual {p0, v1, p4}, Lvz/e;->m(I[C)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    aput-object p4, p2, p3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_2
    sget-object p1, Lvz/v;->g:Ljava/lang/Integer;

    .line 39
    .line 40
    aput-object p1, p2, p3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_3
    sget-object p1, Lvz/v;->f:Ljava/lang/Integer;

    .line 44
    .line 45
    aput-object p1, p2, p3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_4
    sget-object p1, Lvz/v;->e:Ljava/lang/Integer;

    .line 49
    .line 50
    aput-object p1, p2, p3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_5
    sget-object p1, Lvz/v;->d:Ljava/lang/Integer;

    .line 54
    .line 55
    aput-object p1, p2, p3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_6
    sget-object p1, Lvz/v;->c:Ljava/lang/Integer;

    .line 59
    .line 60
    aput-object p1, p2, p3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_7
    sget-object p1, Lvz/v;->b:Ljava/lang/Integer;

    .line 64
    .line 65
    aput-object p1, p2, p3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_8
    sget-object p1, Lvz/v;->a:Ljava/lang/Integer;

    .line 69
    .line 70
    aput-object p1, p2, p3

    .line 71
    .line 72
    :goto_1
    return v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lvz/i;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lvz/i;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lvz/i;->q:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p1, Lvz/i;->d:I

    .line 6
    .line 7
    and-int/lit8 v2, v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    const-string v2, "<init>"

    .line 14
    .line 15
    iget-object v5, p1, Lvz/i;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object v2, Lvz/v;->g:Ljava/lang/Integer;

    .line 24
    .line 25
    aput-object v2, v1, v4

    .line 26
    .line 27
    :goto_0
    move v4, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v2, p0, Lvz/e;->g:I

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x2

    .line 32
    .line 33
    iget-object v5, p1, Lvz/i;->c:[C

    .line 34
    .line 35
    invoke-virtual {p0, v2, v5}, Lvz/e;->m(I[C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    aput-object v2, v1, v4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    move v2, v3

    .line 43
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/16 v7, 0x46

    .line 50
    .line 51
    if-eq v6, v7, :cond_9

    .line 52
    .line 53
    const/16 v7, 0x3b

    .line 54
    .line 55
    const/16 v8, 0x4c

    .line 56
    .line 57
    if-eq v6, v8, :cond_7

    .line 58
    .line 59
    const/16 v9, 0x53

    .line 60
    .line 61
    if-eq v6, v9, :cond_6

    .line 62
    .line 63
    const/16 v9, 0x49

    .line 64
    .line 65
    if-eq v6, v9, :cond_6

    .line 66
    .line 67
    const/16 v9, 0x4a

    .line 68
    .line 69
    if-eq v6, v9, :cond_5

    .line 70
    .line 71
    const/16 v9, 0x5a

    .line 72
    .line 73
    if-eq v6, v9, :cond_6

    .line 74
    .line 75
    const/16 v9, 0x5b

    .line 76
    .line 77
    if-eq v6, v9, :cond_2

    .line 78
    .line 79
    packed-switch v6, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    iput v4, p1, Lvz/i;->o:I

    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    add-int/lit8 v2, v4, 0x1

    .line 86
    .line 87
    sget-object v6, Lvz/v;->d:Ljava/lang/Integer;

    .line 88
    .line 89
    aput-object v6, v1, v4

    .line 90
    .line 91
    :goto_3
    move v4, v2

    .line 92
    move v2, v5

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-ne v6, v9, :cond_3

    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-ne v6, v8, :cond_4

    .line 108
    .line 109
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eq v6, v7, :cond_4

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_4
    add-int/lit8 v6, v4, 0x1

    .line 119
    .line 120
    add-int/2addr v5, v3

    .line 121
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    aput-object v2, v1, v4

    .line 126
    .line 127
    move v2, v5

    .line 128
    move v4, v6

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    add-int/lit8 v2, v4, 0x1

    .line 131
    .line 132
    sget-object v6, Lvz/v;->e:Ljava/lang/Integer;

    .line 133
    .line 134
    aput-object v6, v1, v4

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 138
    .line 139
    sget-object v6, Lvz/v;->b:Ljava/lang/Integer;

    .line 140
    .line 141
    aput-object v6, v1, v4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    move v2, v5

    .line 145
    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eq v6, v7, :cond_8

    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_8
    add-int/lit8 v6, v4, 0x1

    .line 155
    .line 156
    add-int/lit8 v7, v2, 0x1

    .line 157
    .line 158
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    aput-object v2, v1, v4

    .line 163
    .line 164
    move v4, v6

    .line 165
    move v2, v7

    .line 166
    goto :goto_2

    .line 167
    :cond_9
    add-int/lit8 v2, v4, 0x1

    .line 168
    .line 169
    sget-object v6, Lvz/v;->c:Ljava/lang/Integer;

    .line 170
    .line 171
    aput-object v6, v1, v4

    .line 172
    .line 173
    goto :goto_3

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(I[Lvz/q;)V
    .locals 1

    .line 1
    aget-object v0, p2, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lvz/e;->u(I[Lvz/q;)Lvz/q;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-short p2, p1, Lvz/q;->a:S

    .line 10
    .line 11
    or-int/lit8 p2, p2, 0x1

    .line 12
    .line 13
    int-to-short p2, p2

    .line 14
    iput-short p2, p1, Lvz/q;->a:S

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private d(I[Lvz/q;)Lvz/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lvz/e;->u(I[Lvz/q;)Lvz/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-short p2, p1, Lvz/q;->a:S

    .line 6
    .line 7
    and-int/lit8 p2, p2, -0x2

    .line 8
    .line 9
    int-to-short p2, p2

    .line 10
    iput-short p2, p1, Lvz/q;->a:S

    .line 11
    .line 12
    return-object p1
.end method

.method private i([II)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-ge p2, v0, :cond_1

    .line 5
    .line 6
    aget v0, p1, p2

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lvz/e;->l(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x43

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    aget p1, p1, p2

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lvz/e;->H(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method private j([Lvz/c;Ljava/lang/String;II[CI[Lvz/q;)Lvz/c;
    .locals 11

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p2

    .line 3
    array-length v2, v0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v3, v2, :cond_1

    .line 6
    .line 7
    aget-object v4, v0, v3

    .line 8
    .line 9
    iget-object v5, v4, Lvz/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    move-object v5, p0

    .line 18
    move v6, p3

    .line 19
    move v7, p4

    .line 20
    move-object/from16 v8, p5

    .line 21
    .line 22
    move/from16 v9, p6

    .line 23
    .line 24
    move-object/from16 v10, p7

    .line 25
    .line 26
    invoke-virtual/range {v4 .. v10}, Lvz/c;->g(Lvz/e;II[CI[Lvz/q;)Lvz/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v4, Lvz/c;

    .line 35
    .line 36
    invoke-direct {v4, p2}, Lvz/c;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v9, -0x1

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v5, p0

    .line 43
    move v6, p3

    .line 44
    move v7, p4

    .line 45
    invoke-virtual/range {v4 .. v10}, Lvz/c;->g(Lvz/e;II[CI[Lvz/q;)Lvz/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method private k(I)[I
    .locals 6

    .line 1
    new-array p1, p1, [C

    .line 2
    .line 3
    invoke-virtual {p0}, Lvz/e;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x2

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    if-lez v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v3, v0, 0x2

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Lvz/e;->t(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/lit8 v4, v0, 0x6

    .line 26
    .line 27
    const-string v5, "BootstrapMethods"

    .line 28
    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lvz/e;->H(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    new-array v1, p1, [I

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x8

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_1
    if-ge v2, p1, :cond_0

    .line 45
    .line 46
    aput v0, v1, v2

    .line 47
    .line 48
    add-int/lit8 v3, v0, 0x2

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lvz/e;->H(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    mul-int/lit8 v3, v3, 0x2

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x4

    .line 57
    .line 58
    add-int/2addr v0, v3

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    return-object v1

    .line 63
    :cond_1
    add-int v0, v4, v3

    .line 64
    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    return-object p1
.end method

.method private n(Lvz/r;Lvz/i;I)V
    .locals 38

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 1
    iget-object v12, v8, Lvz/e;->a:[B

    .line 2
    iget-object v13, v10, Lvz/i;->c:[C

    .line 3
    invoke-virtual {v8, v11}, Lvz/e;->H(I)I

    move-result v14

    add-int/lit8 v0, v11, 0x2

    .line 4
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v15

    add-int/lit8 v0, v11, 0x4

    .line 5
    invoke-virtual {v8, v0}, Lvz/e;->t(I)I

    move-result v7

    add-int/lit8 v16, v11, 0x8

    add-int v6, v16, v7

    add-int/lit8 v0, v7, 0x1

    .line 6
    new-array v5, v0, [Lvz/q;

    iput-object v5, v10, Lvz/i;->g:[Lvz/q;

    move/from16 v0, v16

    :cond_0
    :goto_0
    const/16 v4, 0x84

    const/16 v3, 0x8

    if-ge v0, v6, :cond_3

    sub-int v1, v0, v16

    .line 7
    aget-byte v2, v12, v0

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    add-int/lit8 v2, v0, 0x1

    .line 9
    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    :goto_1
    :pswitch_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :pswitch_2
    add-int/lit8 v2, v0, 0x1

    .line 10
    invoke-virtual {v8, v2}, Lvz/e;->t(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    :pswitch_3
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    :pswitch_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :pswitch_5
    add-int/lit8 v1, v0, 0x1

    .line 11
    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v4, :cond_2

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :pswitch_6
    and-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 13
    invoke-virtual {v8, v0}, Lvz/e;->t(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    add-int/lit8 v2, v0, 0x4

    .line 14
    invoke-virtual {v8, v2}, Lvz/e;->t(I)I

    move-result v2

    add-int/2addr v0, v3

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v2, v0, 0x4

    .line 15
    invoke-virtual {v8, v2}, Lvz/e;->t(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    add-int/lit8 v0, v0, 0x8

    move v2, v3

    goto :goto_2

    :pswitch_7
    and-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 16
    invoke-virtual {v8, v0}, Lvz/e;->t(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    add-int/lit8 v2, v0, 0x8

    .line 17
    invoke-virtual {v8, v2}, Lvz/e;->t(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0xc

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 18
    invoke-virtual {v8, v0}, Lvz/e;->t(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v8, v2, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    add-int/lit8 v0, v0, 0x4

    move v2, v3

    goto :goto_3

    :pswitch_8
    add-int/lit8 v2, v0, 0x1

    .line 19
    invoke-virtual {v8, v2}, Lvz/e;->B(I)S

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v8, v1, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    goto/16 :goto_1

    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 20
    :cond_3
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    :goto_4
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4

    .line 21
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    invoke-direct {v8, v1, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    move-result-object v1

    add-int/lit8 v3, v0, 0x2

    .line 22
    invoke-virtual {v8, v3}, Lvz/e;->H(I)I

    move-result v3

    invoke-direct {v8, v3, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    move-result-object v3

    add-int/lit8 v4, v0, 0x4

    .line 23
    invoke-virtual {v8, v4}, Lvz/e;->H(I)I

    move-result v4

    invoke-direct {v8, v4, v5}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    move-result-object v4

    move/from16 v19, v2

    .line 24
    iget-object v2, v8, Lvz/e;->b:[I

    move/from16 v20, v6

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v6

    aget v2, v2, v6

    invoke-virtual {v8, v2, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x8

    .line 25
    invoke-virtual {v9, v1, v3, v4, v2}, Lvz/r;->C(Lvz/q;Lvz/q;Lvz/q;Ljava/lang/String;)V

    move/from16 v1, v19

    move/from16 v6, v20

    const/16 v3, 0x8

    const/16 v4, 0x84

    goto :goto_4

    :cond_4
    move/from16 v20, v6

    .line 26
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_5
    add-int/lit8 v26, v1, -0x1

    if-lez v1, :cond_10

    .line 27
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v0, 0x2

    .line 28
    invoke-virtual {v8, v6}, Lvz/e;->t(I)I

    move-result v28

    add-int/lit8 v6, v0, 0x6

    .line 29
    const-string v4, "LocalVariableTable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 30
    iget v1, v10, Lvz/i;->b:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 31
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_6
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_5

    .line 32
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    .line 33
    invoke-direct {v8, v1, v5}, Lvz/e;->c(I[Lvz/q;)V

    move-object/from16 v30, v2

    add-int/lit8 v2, v0, 0x2

    .line 34
    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 35
    invoke-direct {v8, v1, v5}, Lvz/e;->c(I[Lvz/q;)V

    add-int/lit8 v0, v0, 0xa

    move v1, v4

    move-object/from16 v2, v30

    goto :goto_6

    :cond_5
    move-object/from16 v30, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v24, v18

    :goto_7
    move/from16 v34, v7

    move/from16 v33, v20

    :goto_8
    const/16 v9, 0x8

    goto/16 :goto_c

    :cond_6
    move-object/from16 v30, v2

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_8
    move-object/from16 v30, v2

    .line 36
    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v25, v18

    :goto_9
    move/from16 v34, v7

    move/from16 v33, v20

    move-object/from16 v2, v30

    goto :goto_8

    .line 37
    :cond_9
    const-string v2, "LineNumberTable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 38
    iget v1, v10, Lvz/i;->b:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    .line 39
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    :goto_a
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    .line 40
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v4, v0, 0x2

    .line 41
    invoke-virtual {v8, v4}, Lvz/e;->H(I)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    .line 42
    invoke-direct {v8, v1, v5}, Lvz/e;->c(I[Lvz/q;)V

    .line 43
    aget-object v1, v5, v1

    invoke-virtual {v1, v4}, Lvz/q;->c(I)V

    move v1, v2

    goto :goto_a

    .line 44
    :cond_a
    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    .line 45
    invoke-direct {v8, v9, v10, v6, v2}, Lvz/e;->F(Lvz/r;Lvz/i;IZ)[I

    move-result-object v0

    move-object v2, v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto :goto_7

    :cond_b
    const/4 v2, 0x1

    .line 46
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 47
    invoke-direct {v8, v9, v10, v6, v4}, Lvz/e;->F(Lvz/r;Lvz/i;IZ)[I

    move-result-object v0

    move-object/from16 v21, v0

    :cond_c
    :goto_b
    move-object/from16 v17, v5

    move/from16 v18, v6

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    .line 48
    const-string v2, "StackMapTable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 49
    iget v1, v10, Lvz/i;->b:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_c

    add-int/lit8 v0, v0, 0x8

    add-int v1, v6, v28

    move/from16 v19, v0

    move/from16 v22, v1

    goto :goto_b

    .line 50
    :cond_e
    const-string v2, "StackMap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 51
    iget v1, v10, Lvz/i;->b:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_c

    add-int/lit8 v0, v0, 0x8

    add-int v1, v6, v28

    move/from16 v19, v0

    move/from16 v22, v1

    move v3, v4

    goto :goto_b

    .line 52
    :cond_f
    iget-object v2, v10, Lvz/i;->a:[Lvz/c;

    move-object/from16 v0, p0

    move-object/from16 v29, v1

    move-object v1, v2

    move-object/from16 v11, v30

    move-object/from16 v2, v29

    move/from16 v31, v3

    const/16 v9, 0x8

    move v3, v6

    move/from16 v4, v28

    move-object/from16 v17, v5

    move-object v5, v13

    move/from16 v18, v6

    move/from16 v33, v20

    move/from16 v6, p3

    move/from16 v34, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lvz/e;->j([Lvz/c;Ljava/lang/String;II[CI[Lvz/q;)Lvz/c;

    move-result-object v0

    move-object/from16 v7, v23

    .line 53
    iput-object v7, v0, Lvz/c;->c:Lvz/c;

    move-object/from16 v23, v0

    move-object v2, v11

    move/from16 v3, v31

    :goto_c
    add-int v0, v18, v28

    move-object/from16 v9, p1

    move/from16 v11, p3

    move-object/from16 v5, v17

    move/from16 v1, v26

    move/from16 v20, v33

    move/from16 v7, v34

    goto/16 :goto_5

    :cond_10
    move-object v11, v2

    move/from16 v31, v3

    move-object/from16 v17, v5

    move/from16 v34, v7

    move/from16 v33, v20

    move-object/from16 v7, v23

    const/16 v9, 0x8

    .line 54
    iget v0, v10, Lvz/i;->b:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_11

    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    const/4 v6, 0x0

    :goto_d
    const/4 v5, -0x1

    if-eqz v19, :cond_15

    .line 55
    iput v5, v10, Lvz/i;->m:I

    const/4 v4, 0x0

    .line 56
    iput v4, v10, Lvz/i;->n:I

    .line 57
    iput v4, v10, Lvz/i;->o:I

    .line 58
    iput v4, v10, Lvz/i;->p:I

    .line 59
    new-array v0, v15, [Ljava/lang/Object;

    iput-object v0, v10, Lvz/i;->q:[Ljava/lang/Object;

    .line 60
    iput v4, v10, Lvz/i;->r:I

    .line 61
    new-array v0, v14, [Ljava/lang/Object;

    iput-object v0, v10, Lvz/i;->s:[Ljava/lang/Object;

    if-eqz v6, :cond_12

    .line 62
    invoke-direct {v8, v10}, Lvz/e;->b(Lvz/i;)V

    :cond_12
    move/from16 v0, v19

    :goto_e
    add-int/lit8 v1, v22, -0x2

    if-ge v0, v1, :cond_15

    .line 63
    aget-byte v1, v12, v0

    if-ne v1, v9, :cond_14

    add-int/lit8 v1, v0, 0x1

    .line 64
    invoke-virtual {v8, v1}, Lvz/e;->H(I)I

    move-result v1

    if-ltz v1, :cond_14

    move/from16 v3, v34

    if-ge v1, v3, :cond_13

    add-int v2, v16, v1

    .line 65
    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_13

    move-object/from16 v4, v17

    .line 66
    invoke-direct {v8, v1, v4}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    goto :goto_f

    :cond_13
    move-object/from16 v4, v17

    goto :goto_f

    :cond_14
    move-object/from16 v4, v17

    move/from16 v3, v34

    :goto_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v34, v3

    move-object/from16 v17, v4

    const/4 v4, 0x0

    goto :goto_e

    :cond_15
    move-object/from16 v4, v17

    move/from16 v3, v34

    if-eqz v6, :cond_16

    .line 67
    iget v0, v10, Lvz/i;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v1, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move v2, v15

    move/from16 v9, v22

    move/from16 v22, v3

    move-object/from16 v3, v20

    move-object/from16 v35, v4

    move-object/from16 v20, v7

    const/4 v7, 0x0

    move/from16 v4, v17

    move-object/from16 v5, v18

    .line 68
    invoke-virtual/range {v0 .. v5}, Lvz/r;->h(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_10

    :cond_16
    move-object/from16 v35, v4

    move-object/from16 v20, v7

    move/from16 v9, v22

    const/4 v7, 0x0

    move/from16 v22, v3

    .line 69
    :goto_10
    invoke-direct {v8, v11, v7}, Lvz/e;->i([II)I

    move-result v0

    move-object/from16 v5, v21

    .line 70
    invoke-direct {v8, v5, v7}, Lvz/e;->i([II)I

    move-result v1

    .line 71
    iget v2, v10, Lvz/i;->b:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_17

    const/16 v4, 0x21

    move/from16 v17, v4

    goto :goto_11

    :cond_17
    move/from16 v17, v7

    :goto_11
    move/from16 v18, v0

    move v4, v7

    move/from16 v21, v4

    move/from16 v26, v21

    move/from16 v3, v16

    move/from16 v0, v19

    move/from16 v19, v1

    :goto_12
    move/from16 v2, v33

    if-ge v3, v2, :cond_32

    sub-int v1, v3, v16

    move/from16 p3, v0

    move-object/from16 v7, v35

    .line 72
    aget-object v0, v7, v1

    move/from16 v33, v2

    if-eqz v0, :cond_19

    .line 73
    iget v2, v10, Lvz/i;->b:I

    and-int/lit8 v2, v2, 0x2

    move/from16 v23, v14

    if-nez v2, :cond_18

    const/4 v2, 0x1

    :goto_13
    const/16 v27, 0x8

    move-object/from16 v14, p1

    goto :goto_14

    :cond_18
    const/4 v2, 0x0

    goto :goto_13

    :goto_14
    invoke-virtual {v0, v14, v2}, Lvz/q;->a(Lvz/r;Z)V

    goto :goto_15

    :cond_19
    move/from16 v23, v14

    const/16 v27, 0x8

    move-object/from16 v14, p1

    :goto_15
    move v0, v4

    move/from16 v4, p3

    :goto_16
    if-eqz v4, :cond_20

    .line 74
    iget v2, v10, Lvz/i;->m:I

    move/from16 v28, v15

    const/4 v15, -0x1

    if-eq v2, v1, :cond_1b

    if-ne v2, v15, :cond_1a

    goto :goto_18

    :cond_1a
    move v15, v3

    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move v11, v1

    :goto_17
    move/from16 v37, v33

    move-object/from16 v33, v13

    move/from16 v13, v31

    move/from16 v31, v37

    goto/16 :goto_1d

    :cond_1b
    :goto_18
    if-eq v2, v15, :cond_1e

    move/from16 v2, v31

    if-eqz v2, :cond_1c

    if-eqz v6, :cond_1d

    :cond_1c
    move v15, v3

    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move/from16 v31, v33

    move v11, v1

    move-object/from16 v33, v13

    move v13, v2

    goto :goto_19

    .line 75
    :cond_1d
    iget v0, v10, Lvz/i;->n:I

    iget v15, v10, Lvz/i;->p:I

    move/from16 v29, v3

    iget-object v3, v10, Lvz/i;->q:[Ljava/lang/Object;

    move/from16 p3, v4

    iget v4, v10, Lvz/i;->r:I

    move-object/from16 v30, v5

    iget-object v5, v10, Lvz/i;->s:[Ljava/lang/Object;

    move/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v34, v11

    move v11, v1

    move/from16 v1, v31

    move/from16 v31, v33

    move-object/from16 v33, v13

    move v13, v2

    move v2, v15

    move/from16 v15, v29

    move/from16 v14, p3

    move-object/from16 v36, v30

    invoke-virtual/range {v0 .. v5}, Lvz/r;->h(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1a

    .line 76
    :goto_19
    iget v2, v10, Lvz/i;->o:I

    iget-object v3, v10, Lvz/i;->q:[Ljava/lang/Object;

    iget v4, v10, Lvz/i;->r:I

    iget-object v5, v10, Lvz/i;->s:[Ljava/lang/Object;

    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lvz/r;->h(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_1a
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1e
    move v15, v3

    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move v11, v1

    move/from16 v37, v33

    move-object/from16 v33, v13

    move/from16 v13, v31

    move/from16 v31, v37

    :goto_1b
    if-ge v14, v9, :cond_1f

    .line 77
    invoke-direct {v8, v14, v13, v6, v10}, Lvz/e;->C(IZZLvz/i;)I

    move-result v4

    move-object/from16 v14, p1

    move v1, v11

    move v3, v15

    move/from16 v15, v28

    move-object/from16 v11, v34

    move-object/from16 v5, v36

    :goto_1c
    move/from16 v37, v31

    move/from16 v31, v13

    move-object/from16 v13, v33

    move/from16 v33, v37

    goto/16 :goto_16

    :cond_1f
    move-object/from16 v14, p1

    move v1, v11

    move v3, v15

    move/from16 v15, v28

    move-object/from16 v11, v34

    move-object/from16 v5, v36

    const/4 v4, 0x0

    goto :goto_1c

    :cond_20
    move v14, v4

    move-object/from16 v36, v5

    move-object/from16 v34, v11

    move/from16 v28, v15

    move v11, v1

    move v15, v3

    goto/16 :goto_17

    :goto_1d
    if-eqz v0, :cond_22

    .line 78
    iget v0, v10, Lvz/i;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, Lvz/r;->h(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_21
    const/16 v29, 0x0

    goto :goto_1e

    :cond_22
    move/from16 v29, v0

    .line 80
    :goto_1e
    aget-byte v0, v12, v15

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0xc8

    packed-switch v5, :pswitch_data_3

    .line 81
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    add-int/lit8 v3, v15, 0x1

    .line 82
    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v1

    add-int/2addr v1, v11

    aget-object v1, v7, v1

    move/from16 v30, v14

    move-object/from16 v14, p1

    invoke-virtual {v14, v0, v1}, Lvz/r;->n(ILvz/q;)V

    add-int/lit8 v3, v15, 0x5

    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v13, v33

    const/4 v4, 0x1

    :goto_1f
    const/16 v32, 0x84

    move/from16 v33, v9

    goto/16 :goto_31

    :pswitch_c
    move/from16 v30, v14

    move-object/from16 v14, p1

    const/16 v1, 0xda

    if-ge v5, v1, :cond_23

    add-int/lit8 v5, v5, -0x31

    goto :goto_20

    :cond_23
    add-int/lit8 v5, v5, -0x14

    :goto_20
    add-int/lit8 v3, v15, 0x1

    .line 83
    invoke-virtual {v8, v3}, Lvz/e;->H(I)I

    move-result v1

    add-int/2addr v1, v11

    aget-object v1, v7, v1

    const/16 v2, 0xa7

    if-eq v5, v2, :cond_26

    const/16 v3, 0xa8

    if-ne v5, v3, :cond_24

    goto :goto_22

    :cond_24
    if-ge v5, v2, :cond_25

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    xor-int/lit8 v3, v5, 0x1

    sub-int/2addr v3, v2

    goto :goto_21

    :cond_25
    xor-int/lit8 v3, v5, 0x1

    :goto_21
    add-int/lit8 v2, v11, 0x3

    .line 84
    invoke-direct {v8, v2, v7}, Lvz/e;->d(I[Lvz/q;)Lvz/q;

    move-result-object v2

    .line 85
    invoke-virtual {v14, v3, v2}, Lvz/r;->n(ILvz/q;)V

    .line 86
    invoke-virtual {v14, v0, v1}, Lvz/r;->n(ILvz/q;)V

    const/4 v2, 0x1

    goto :goto_23

    :cond_26
    :goto_22
    add-int/lit8 v5, v5, 0x21

    .line 87
    invoke-virtual {v14, v5, v1}, Lvz/r;->n(ILvz/q;)V

    move/from16 v2, v29

    :goto_23
    add-int/lit8 v3, v15, 0x3

    move v4, v2

    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    :goto_24
    move-object/from16 v13, v33

    goto :goto_1f

    :pswitch_d
    move/from16 v30, v14

    move-object/from16 v14, p1

    sub-int v5, v5, v17

    add-int/lit8 v3, v15, 0x1

    .line 88
    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    invoke-virtual {v14, v5, v0}, Lvz/r;->n(ILvz/q;)V

    add-int/lit8 v3, v15, 0x5

    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v4, v29

    goto :goto_24

    :pswitch_e
    move/from16 v30, v14

    move-object/from16 v14, p1

    add-int/lit8 v3, v15, 0x1

    move-object/from16 v4, v33

    .line 89
    invoke-virtual {v8, v3, v4}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v15, 0x3

    aget-byte v1, v12, v3

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v14, v0, v1}, Lvz/r;->x(Ljava/lang/String;I)V

    add-int/lit8 v3, v15, 0x4

    move/from16 p3, v6

    move/from16 v33, v9

    :goto_25
    move/from16 v35, v13

    move/from16 v0, v18

    move/from16 v1, v21

    const/16 v32, 0x84

    move-object v13, v4

    :goto_26
    move/from16 v4, v29

    goto/16 :goto_31

    :pswitch_f
    move/from16 v30, v14

    move-object/from16 v4, v33

    move-object/from16 v14, p1

    add-int/lit8 v3, v15, 0x1

    .line 90
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x84

    if-ne v0, v3, :cond_27

    add-int/lit8 v0, v15, 0x2

    .line 91
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v1, v15, 0x4

    invoke-virtual {v8, v1}, Lvz/e;->B(I)S

    move-result v1

    invoke-virtual {v14, v0, v1}, Lvz/r;->i(II)V

    add-int/lit8 v0, v15, 0x6

    :goto_27
    move/from16 v32, v3

    move/from16 p3, v6

    move/from16 v33, v9

    move/from16 v35, v13

    move/from16 v1, v21

    move v3, v0

    move-object v13, v4

    move/from16 v0, v18

    goto :goto_26

    :cond_27
    add-int/lit8 v1, v15, 0x2

    .line 92
    invoke-virtual {v8, v1}, Lvz/e;->H(I)I

    move-result v1

    invoke-virtual {v14, v0, v1}, Lvz/r;->F(II)V

    add-int/lit8 v0, v15, 0x4

    goto :goto_27

    :pswitch_10
    move/from16 v30, v14

    move-object/from16 v4, v33

    const/16 v3, 0x84

    move-object/from16 v14, p1

    add-int/lit8 v0, v15, 0x1

    .line 93
    invoke-virtual {v8, v0, v4}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v0}, Lvz/r;->E(ILjava/lang/String;)V

    add-int/lit8 v0, v15, 0x3

    goto :goto_27

    :pswitch_11
    move/from16 v30, v14

    move-object/from16 v4, v33

    const/16 v3, 0x84

    move-object/from16 v14, p1

    .line 94
    iget-object v0, v8, Lvz/e;->b:[I

    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v8, v1}, Lvz/e;->H(I)I

    move-result v1

    aget v0, v0, v1

    .line 95
    iget-object v1, v8, Lvz/e;->b:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    aget v1, v1, v2

    .line 96
    invoke-virtual {v8, v1, v4}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    .line 97
    invoke-virtual {v8, v1, v4}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v5, v8, Lvz/e;->e:[I

    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v0

    aget v0, v5, v0

    .line 99
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v5

    invoke-virtual {v8, v5, v4}, Lvz/e;->o(I[C)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvz/o;

    add-int/lit8 v3, v0, 0x2

    .line 100
    invoke-virtual {v8, v3}, Lvz/e;->H(I)I

    move-result v3

    move/from16 p3, v6

    new-array v6, v3, [Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x4

    move/from16 v33, v9

    const/4 v9, 0x0

    :goto_28
    if-ge v9, v3, :cond_28

    move/from16 v35, v3

    .line 101
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v3

    invoke-virtual {v8, v3, v4}, Lvz/e;->o(I[C)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v9

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v35

    goto :goto_28

    .line 102
    :cond_28
    invoke-virtual {v14, v2, v1, v5, v6}, Lvz/r;->m(Ljava/lang/String;Ljava/lang/String;Lvz/o;[Ljava/lang/Object;)V

    add-int/lit8 v3, v15, 0x5

    goto/16 :goto_25

    :pswitch_12
    move/from16 p3, v6

    move/from16 v30, v14

    move-object/from16 v4, v33

    move-object/from16 v14, p1

    move/from16 v33, v9

    .line 103
    iget-object v0, v8, Lvz/e;->b:[I

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v8, v3}, Lvz/e;->H(I)I

    move-result v1

    aget v0, v0, v1

    .line 104
    iget-object v1, v8, Lvz/e;->b:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    aget v1, v1, v2

    .line 105
    invoke-virtual {v8, v0, v4}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v8, v1, v4}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    .line 107
    invoke-virtual {v8, v1, v4}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xb6

    if-ge v5, v1, :cond_29

    .line 108
    invoke-virtual {v14, v5, v2, v3, v6}, Lvz/r;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    move/from16 v35, v13

    const/16 v32, 0x84

    move-object v13, v4

    goto :goto_2a

    :cond_29
    add-int/lit8 v0, v0, -0x1

    .line 109
    aget-byte v0, v12, v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2a

    const/4 v9, 0x1

    goto :goto_29

    :cond_2a
    const/4 v9, 0x0

    :goto_29
    move-object/from16 v0, p1

    move v1, v5

    const/16 v32, 0x84

    move/from16 v35, v13

    move-object v13, v4

    move-object v4, v6

    move v6, v5

    move v5, v9

    .line 110
    invoke-virtual/range {v0 .. v5}, Lvz/r;->w(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2a
    const/16 v0, 0xb9

    if-ne v6, v0, :cond_2b

    add-int/lit8 v3, v15, 0x5

    :goto_2b
    move/from16 v0, v18

    move/from16 v1, v21

    goto/16 :goto_26

    :cond_2b
    :goto_2c
    add-int/lit8 v3, v15, 0x3

    goto :goto_2b

    :pswitch_13
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    and-int/lit8 v0, v11, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int v3, v15, v0

    .line 111
    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    add-int/lit8 v1, v3, 0x4

    .line 112
    invoke-virtual {v8, v1}, Lvz/e;->t(I)I

    move-result v1

    add-int/lit8 v3, v3, 0x8

    .line 113
    new-array v2, v1, [I

    .line 114
    new-array v4, v1, [Lvz/q;

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v1, :cond_2c

    .line 115
    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v6, v3, 0x4

    .line 116
    invoke-virtual {v8, v6}, Lvz/e;->t(I)I

    move-result v6

    add-int/2addr v6, v11

    aget-object v6, v7, v6

    aput-object v6, v4, v5

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 117
    :cond_2c
    invoke-virtual {v14, v0, v2, v4}, Lvz/r;->t(Lvz/q;[I[Lvz/q;)V

    goto :goto_2b

    :pswitch_14
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    and-int/lit8 v0, v11, 0x3

    rsub-int/lit8 v0, v0, 0x4

    add-int v3, v15, v0

    .line 118
    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    add-int/lit8 v1, v3, 0x4

    .line 119
    invoke-virtual {v8, v1}, Lvz/e;->t(I)I

    move-result v1

    add-int/lit8 v2, v3, 0x8

    .line 120
    invoke-virtual {v8, v2}, Lvz/e;->t(I)I

    move-result v2

    add-int/lit8 v3, v3, 0xc

    sub-int v4, v2, v1

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 121
    new-array v5, v4, [Lvz/q;

    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v4, :cond_2d

    .line 122
    invoke-virtual {v8, v3}, Lvz/e;->t(I)I

    move-result v9

    add-int/2addr v9, v11

    aget-object v9, v7, v9

    aput-object v9, v5, v6

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 123
    :cond_2d
    invoke-virtual {v14, v1, v2, v0, v5}, Lvz/r;->A(IILvz/q;[Lvz/q;)V

    goto/16 :goto_2b

    :pswitch_15
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 124
    invoke-virtual {v8, v3}, Lvz/e;->B(I)S

    move-result v0

    add-int v1, v11, v0

    aget-object v0, v7, v1

    invoke-virtual {v14, v6, v0}, Lvz/r;->n(ILvz/q;)V

    goto/16 :goto_2c

    :pswitch_16
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 125
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v15, 0x2

    aget-byte v1, v12, v3

    invoke-virtual {v14, v0, v1}, Lvz/r;->i(II)V

    goto/16 :goto_2c

    :pswitch_17
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v5, v6, -0x3b

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x36

    and-int/lit8 v1, v5, 0x3

    .line 126
    invoke-virtual {v14, v0, v1}, Lvz/r;->F(II)V

    :goto_2f
    add-int/lit8 v3, v15, 0x1

    goto/16 :goto_2b

    :pswitch_18
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v5, v6, -0x1a

    shr-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v5, 0x3

    .line 127
    invoke-virtual {v14, v0, v1}, Lvz/r;->F(II)V

    goto :goto_2f

    :pswitch_19
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 128
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v14, v6, v0}, Lvz/r;->F(II)V

    :goto_30
    add-int/lit8 v3, v15, 0x2

    goto/16 :goto_2b

    :pswitch_1a
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 129
    invoke-virtual {v8, v3}, Lvz/e;->H(I)I

    move-result v0

    invoke-virtual {v8, v0, v13}, Lvz/e;->o(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Lvz/r;->p(Ljava/lang/Object;)V

    goto/16 :goto_2c

    :pswitch_1b
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 130
    aget-byte v0, v12, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v8, v0, v13}, Lvz/e;->o(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Lvz/r;->p(Ljava/lang/Object;)V

    goto :goto_30

    :pswitch_1c
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 131
    invoke-virtual {v8, v3}, Lvz/e;->B(I)S

    move-result v0

    invoke-virtual {v14, v6, v0}, Lvz/r;->l(II)V

    goto/16 :goto_2c

    :pswitch_1d
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    add-int/lit8 v3, v15, 0x1

    .line 132
    aget-byte v0, v12, v3

    invoke-virtual {v14, v6, v0}, Lvz/r;->l(II)V

    goto :goto_30

    :pswitch_1e
    move/from16 p3, v6

    move/from16 v35, v13

    move/from16 v30, v14

    move-object/from16 v13, v33

    const/16 v32, 0x84

    move-object/from16 v14, p1

    move v6, v5

    move/from16 v33, v9

    .line 133
    invoke-virtual {v14, v6}, Lvz/r;->j(I)V

    goto/16 :goto_2f

    :goto_31
    move-object/from16 v9, v34

    if-eqz v34, :cond_2f

    .line 134
    array-length v2, v9

    if-ge v1, v2, :cond_2f

    if-gt v0, v11, :cond_2f

    if-ne v0, v11, :cond_2e

    .line 135
    aget v0, v9, v1

    invoke-direct {v8, v10, v0}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 136
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 137
    iget v5, v10, Lvz/i;->h:I

    iget-object v6, v10, Lvz/i;->i:Lvz/z;

    const/4 v15, 0x1

    invoke-virtual {v14, v5, v6, v2, v15}, Lvz/r;->k(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    move-result-object v2

    invoke-direct {v8, v2, v0, v15, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 138
    invoke-direct {v8, v9, v1}, Lvz/e;->i([II)I

    move-result v0

    move-object/from16 v34, v9

    goto :goto_31

    :cond_2f
    move/from16 v2, v19

    move/from16 v5, v26

    move-object/from16 v15, v36

    :goto_32
    if-eqz v15, :cond_31

    .line 139
    array-length v6, v15

    if-ge v5, v6, :cond_31

    if-gt v2, v11, :cond_31

    if-ne v2, v11, :cond_30

    .line 140
    aget v2, v15, v5

    invoke-direct {v8, v10, v2}, Lvz/e;->E(Lvz/i;I)I

    move-result v2

    .line 141
    invoke-virtual {v8, v2, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v2, 0x2

    move/from16 v18, v0

    .line 142
    iget v0, v10, Lvz/i;->h:I

    move/from16 v19, v1

    iget-object v1, v10, Lvz/i;->i:Lvz/z;

    move/from16 v21, v11

    const/4 v11, 0x0

    invoke-virtual {v14, v0, v1, v6, v11}, Lvz/r;->k(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v8, v0, v2, v1, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    goto :goto_33

    :cond_30
    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v21, v11

    const/4 v11, 0x0

    :goto_33
    add-int/lit8 v5, v5, 0x1

    .line 143
    invoke-direct {v8, v15, v5}, Lvz/e;->i([II)I

    move-result v2

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v11, v21

    goto :goto_32

    :cond_31
    move/from16 v18, v0

    move/from16 v19, v1

    const/4 v11, 0x0

    move/from16 v6, p3

    move/from16 v26, v5

    move-object v5, v15

    move/from16 v21, v19

    move/from16 v14, v23

    move/from16 v15, v28

    move/from16 v0, v30

    move/from16 v19, v2

    move/from16 v37, v35

    move-object/from16 v35, v7

    move v7, v11

    move-object v11, v9

    move/from16 v9, v33

    move/from16 v33, v31

    move/from16 v31, v37

    goto/16 :goto_12

    :cond_32
    move-object v9, v11

    move/from16 v23, v14

    move/from16 v28, v15

    move-object/from16 v14, p1

    move-object v15, v5

    move v11, v7

    move-object/from16 v7, v35

    .line 144
    aget-object v0, v7, v22

    if-eqz v0, :cond_33

    .line 145
    invoke-virtual {v14, v0}, Lvz/r;->o(Lvz/q;)V

    :cond_33
    move/from16 v4, v24

    if-eqz v4, :cond_38

    .line 146
    iget v0, v10, Lvz/i;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_38

    move/from16 v0, v25

    if-eqz v0, :cond_35

    .line 147
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v6, v1, [I

    add-int/lit8 v25, v0, 0x2

    move/from16 v0, v25

    :goto_34
    if-lez v1, :cond_34

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v3, v0, 0x6

    .line 148
    aput v3, v6, v2

    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v3, v0, 0x8

    .line 149
    invoke-virtual {v8, v3}, Lvz/e;->H(I)I

    move-result v3

    aput v3, v6, v2

    add-int/lit8 v1, v1, -0x3

    .line 150
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v0, v0, 0xa

    goto :goto_34

    :cond_34
    move-object v12, v6

    goto :goto_35

    :cond_35
    const/4 v12, 0x0

    .line 151
    :goto_35
    invoke-virtual {v8, v4}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v24, v4, 0x2

    move/from16 v1, v24

    :goto_36
    add-int/lit8 v16, v0, -0x1

    if-lez v0, :cond_38

    .line 152
    invoke-virtual {v8, v1}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x2

    .line 153
    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    .line 154
    invoke-virtual {v8, v3, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x6

    .line 155
    invoke-virtual {v8, v4, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x8

    .line 156
    invoke-virtual {v8, v5}, Lvz/e;->H(I)I

    move-result v6

    add-int/lit8 v17, v1, 0xa

    if-eqz v12, :cond_37

    move v1, v11

    .line 157
    :goto_37
    array-length v5, v12

    if-ge v1, v5, :cond_37

    .line 158
    aget v5, v12, v1

    if-ne v5, v0, :cond_36

    add-int/lit8 v5, v1, 0x1

    aget v5, v12, v5

    if-ne v5, v6, :cond_36

    add-int/lit8 v1, v1, 0x2

    .line 159
    aget v1, v12, v1

    invoke-virtual {v8, v1, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_38

    :cond_36
    add-int/lit8 v1, v1, 0x3

    goto :goto_37

    :cond_37
    const/4 v5, 0x0

    .line 160
    :goto_38
    aget-object v18, v7, v0

    add-int/2addr v0, v2

    aget-object v19, v7, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-virtual/range {v0 .. v6}, Lvz/r;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvz/q;Lvz/q;I)V

    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_36

    :cond_38
    const/16 v12, 0x41

    const/16 v7, 0x40

    if-eqz v9, :cond_3b

    .line 161
    array-length v6, v9

    move v5, v11

    :goto_39
    if-ge v5, v6, :cond_3b

    aget v0, v9, v5

    .line 162
    invoke-virtual {v8, v0}, Lvz/e;->l(I)I

    move-result v1

    if-eq v1, v7, :cond_3a

    if-ne v1, v12, :cond_39

    goto :goto_3a

    :cond_39
    move/from16 v18, v5

    move/from16 v19, v6

    move v12, v7

    move/from16 v16, v11

    goto :goto_3b

    .line 163
    :cond_3a
    :goto_3a
    invoke-direct {v8, v10, v0}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 164
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v4, v0, 0x2

    .line 165
    iget v1, v10, Lvz/i;->h:I

    iget-object v2, v10, Lvz/i;->i:Lvz/z;

    iget-object v3, v10, Lvz/i;->j:[Lvz/q;

    iget-object v0, v10, Lvz/i;->k:[Lvz/q;

    iget-object v7, v10, Lvz/i;->l:[I

    const/16 v17, 0x1

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move v11, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object v5, v7

    move/from16 v19, v6

    move-object/from16 v6, v16

    const/16 v12, 0x40

    const/16 v16, 0x0

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvz/r;->s(ILvz/z;[Lvz/q;[Lvz/q;[ILjava/lang/String;Z)Lvz/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v8, v0, v11, v1, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    :goto_3b
    add-int/lit8 v5, v18, 0x1

    move v7, v12

    move/from16 v11, v16

    move/from16 v6, v19

    const/16 v12, 0x41

    goto :goto_39

    :cond_3b
    move v12, v7

    move/from16 v16, v11

    if-eqz v15, :cond_3e

    .line 166
    array-length v9, v15

    move/from16 v11, v16

    :goto_3c
    if-ge v11, v9, :cond_3e

    aget v0, v15, v11

    .line 167
    invoke-virtual {v8, v0}, Lvz/e;->l(I)I

    move-result v1

    const/16 v7, 0x41

    if-eq v1, v12, :cond_3d

    if-ne v1, v7, :cond_3c

    goto :goto_3d

    :cond_3c
    move/from16 v17, v7

    const/4 v1, 0x1

    goto :goto_3e

    .line 168
    :cond_3d
    :goto_3d
    invoke-direct {v8, v10, v0}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 169
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v0, 0x2

    .line 170
    iget v1, v10, Lvz/i;->h:I

    iget-object v2, v10, Lvz/i;->i:Lvz/z;

    iget-object v3, v10, Lvz/i;->j:[Lvz/q;

    iget-object v4, v10, Lvz/i;->k:[Lvz/q;

    iget-object v0, v10, Lvz/i;->l:[I

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v12, v5

    move-object/from16 v5, v17

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lvz/r;->s(ILvz/z;[Lvz/q;[Lvz/q;[ILjava/lang/String;Z)Lvz/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v8, v0, v12, v1, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    :goto_3e
    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0x40

    goto :goto_3c

    :cond_3e
    move-object/from16 v0, v20

    :goto_3f
    if-eqz v0, :cond_3f

    .line 171
    iget-object v1, v0, Lvz/c;->c:Lvz/c;

    const/4 v2, 0x0

    .line 172
    iput-object v2, v0, Lvz/c;->c:Lvz/c;

    .line 173
    invoke-virtual {v14, v0}, Lvz/r;->d(Lvz/c;)V

    move-object v0, v1

    goto :goto_3f

    :cond_3f
    move/from16 v0, v23

    move/from16 v1, v28

    .line 174
    invoke-virtual {v14, v0, v1}, Lvz/r;->u(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_16
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_1d
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_10
        :pswitch_10
        :pswitch_1e
        :pswitch_1e
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private p(I[C)Lvz/h;
    .locals 8

    .line 1
    iget-object v0, p0, Lvz/e;->d:[Lvz/h;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lvz/e;->b:[I

    .line 9
    .line 10
    aget v1, v0, p1

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x2

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lvz/e;->H(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aget v0, v0, v2

    .line 19
    .line 20
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    add-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v3, p0, Lvz/e;->e:[I

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    aget v1, v3, v1

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0, v3, p2}, Lvz/e;->o(I[C)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lvz/o;

    .line 47
    .line 48
    add-int/lit8 v4, v1, 0x2

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lvz/e;->H(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    new-array v5, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x4

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    :goto_0
    if-ge v6, v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {p0, v7, p2}, Lvz/e;->o(I[C)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    aput-object v7, v5, v6

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x2

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lvz/e;->d:[Lvz/h;

    .line 77
    .line 78
    new-instance v1, Lvz/h;

    .line 79
    .line 80
    invoke-direct {v1, v2, v0, v3, v5}, Lvz/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lvz/o;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    aput-object v1, p2, p1

    .line 84
    .line 85
    return-object v1
.end method

.method private q(Lvz/a;ILjava/lang/String;[C)I
    .locals 10

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    const/16 v1, 0x5b

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-nez p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lvz/e;->a:[B

    .line 12
    .line 13
    aget-byte p1, p1, p2

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    if-eq p1, v2, :cond_2

    .line 19
    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x3

    .line 25
    .line 26
    return p2

    .line 27
    :cond_0
    add-int/lit8 p2, p2, 0x5

    .line 28
    .line 29
    return p2

    .line 30
    :cond_1
    add-int/2addr p2, v4

    .line 31
    invoke-direct {p0, p3, p2, v3, p4}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 37
    .line 38
    invoke-direct {p0, p3, p2, v4, p4}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_3
    iget-object v5, p0, Lvz/e;->a:[B

    .line 44
    .line 45
    add-int/lit8 v6, p2, 0x1

    .line 46
    .line 47
    aget-byte v5, v5, p2

    .line 48
    .line 49
    and-int/lit16 v5, v5, 0xff

    .line 50
    .line 51
    if-eq v5, v2, :cond_1b

    .line 52
    .line 53
    const/16 v2, 0x46

    .line 54
    .line 55
    if-eq v5, v2, :cond_1a

    .line 56
    .line 57
    const/16 v7, 0x53

    .line 58
    .line 59
    if-eq v5, v7, :cond_19

    .line 60
    .line 61
    const/16 v8, 0x63

    .line 62
    .line 63
    if-eq v5, v8, :cond_18

    .line 64
    .line 65
    if-eq v5, v0, :cond_17

    .line 66
    .line 67
    const/16 v0, 0x73

    .line 68
    .line 69
    if-eq v5, v0, :cond_16

    .line 70
    .line 71
    const/16 v0, 0x49

    .line 72
    .line 73
    if-eq v5, v0, :cond_1a

    .line 74
    .line 75
    const/16 v8, 0x4a

    .line 76
    .line 77
    if-eq v5, v8, :cond_1a

    .line 78
    .line 79
    const/16 v9, 0x5a

    .line 80
    .line 81
    if-eq v5, v9, :cond_14

    .line 82
    .line 83
    if-eq v5, v1, :cond_4

    .line 84
    .line 85
    packed-switch v5, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :pswitch_0
    iget-object p4, p0, Lvz/e;->b:[I

    .line 95
    .line 96
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    aget p4, p4, v0

    .line 101
    .line 102
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    int-to-char p4, p4

    .line 107
    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    add-int/lit8 p2, p2, 0x3

    .line 115
    .line 116
    goto/16 :goto_c

    .line 117
    .line 118
    :pswitch_1
    iget-object p4, p0, Lvz/e;->b:[I

    .line 119
    .line 120
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    aget p4, p4, v0

    .line 125
    .line 126
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 127
    .line 128
    .line 129
    move-result p4

    .line 130
    int-to-byte p4, p4

    .line 131
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/lit8 v5, p2, 0x3

    .line 144
    .line 145
    if-nez v1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p1, p3}, Lvz/a;->c(Ljava/lang/String;)Lvz/a;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    add-int/2addr p2, v4

    .line 152
    invoke-direct {p0, p1, p2, v3, p4}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    return p1

    .line 157
    :cond_5
    iget-object v6, p0, Lvz/e;->a:[B

    .line 158
    .line 159
    aget-byte v6, v6, v5

    .line 160
    .line 161
    and-int/lit16 v6, v6, 0xff

    .line 162
    .line 163
    if-eq v6, v2, :cond_12

    .line 164
    .line 165
    if-eq v6, v7, :cond_10

    .line 166
    .line 167
    if-eq v6, v9, :cond_d

    .line 168
    .line 169
    if-eq v6, v0, :cond_b

    .line 170
    .line 171
    if-eq v6, v8, :cond_9

    .line 172
    .line 173
    packed-switch v6, :pswitch_data_1

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p3}, Lvz/a;->c(Ljava/lang/String;)Lvz/a;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    add-int/2addr p2, v4

    .line 181
    invoke-direct {p0, p1, p2, v3, p4}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    move p2, p1

    .line 186
    goto/16 :goto_c

    .line 187
    .line 188
    :pswitch_2
    new-array p2, v1, [D

    .line 189
    .line 190
    :goto_1
    if-ge v3, v1, :cond_6

    .line 191
    .line 192
    iget-object p4, p0, Lvz/e;->b:[I

    .line 193
    .line 194
    add-int/lit8 v0, v5, 0x1

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    aget p4, p4, v0

    .line 201
    .line 202
    invoke-virtual {p0, p4}, Lvz/e;->v(I)J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 207
    .line 208
    .line 209
    move-result-wide v6

    .line 210
    aput-wide v6, p2, v3

    .line 211
    .line 212
    add-int/lit8 v5, v5, 0x3

    .line 213
    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_6
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :goto_2
    move p2, v5

    .line 221
    goto/16 :goto_c

    .line 222
    .line 223
    :pswitch_3
    new-array p2, v1, [C

    .line 224
    .line 225
    :goto_3
    if-ge v3, v1, :cond_7

    .line 226
    .line 227
    iget-object p4, p0, Lvz/e;->b:[I

    .line 228
    .line 229
    add-int/lit8 v0, v5, 0x1

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    aget p4, p4, v0

    .line 236
    .line 237
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 238
    .line 239
    .line 240
    move-result p4

    .line 241
    int-to-char p4, p4

    .line 242
    aput-char p4, p2, v3

    .line 243
    .line 244
    add-int/lit8 v5, v5, 0x3

    .line 245
    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :pswitch_4
    new-array p2, v1, [B

    .line 254
    .line 255
    :goto_4
    if-ge v3, v1, :cond_8

    .line 256
    .line 257
    iget-object p4, p0, Lvz/e;->b:[I

    .line 258
    .line 259
    add-int/lit8 v0, v5, 0x1

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    aget p4, p4, v0

    .line 266
    .line 267
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 268
    .line 269
    .line 270
    move-result p4

    .line 271
    int-to-byte p4, p4

    .line 272
    aput-byte p4, p2, v3

    .line 273
    .line 274
    add-int/lit8 v5, v5, 0x3

    .line 275
    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_8
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_9
    new-array p2, v1, [J

    .line 284
    .line 285
    :goto_5
    if-ge v3, v1, :cond_a

    .line 286
    .line 287
    iget-object p4, p0, Lvz/e;->b:[I

    .line 288
    .line 289
    add-int/lit8 v0, v5, 0x1

    .line 290
    .line 291
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    aget p4, p4, v0

    .line 296
    .line 297
    invoke-virtual {p0, p4}, Lvz/e;->v(I)J

    .line 298
    .line 299
    .line 300
    move-result-wide v6

    .line 301
    aput-wide v6, p2, v3

    .line 302
    .line 303
    add-int/lit8 v5, v5, 0x3

    .line 304
    .line 305
    add-int/lit8 v3, v3, 0x1

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_a
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_b
    new-array p2, v1, [I

    .line 313
    .line 314
    :goto_6
    if-ge v3, v1, :cond_c

    .line 315
    .line 316
    iget-object p4, p0, Lvz/e;->b:[I

    .line 317
    .line 318
    add-int/lit8 v0, v5, 0x1

    .line 319
    .line 320
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    aget p4, p4, v0

    .line 325
    .line 326
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 327
    .line 328
    .line 329
    move-result p4

    .line 330
    aput p4, p2, v3

    .line 331
    .line 332
    add-int/lit8 v5, v5, 0x3

    .line 333
    .line 334
    add-int/lit8 v3, v3, 0x1

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_c
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_d
    new-array p2, v1, [Z

    .line 342
    .line 343
    move p4, v3

    .line 344
    :goto_7
    if-ge p4, v1, :cond_f

    .line 345
    .line 346
    iget-object v0, p0, Lvz/e;->b:[I

    .line 347
    .line 348
    add-int/lit8 v2, v5, 0x1

    .line 349
    .line 350
    invoke-virtual {p0, v2}, Lvz/e;->H(I)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    aget v0, v0, v2

    .line 355
    .line 356
    invoke-virtual {p0, v0}, Lvz/e;->t(I)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_e

    .line 361
    .line 362
    move v0, v4

    .line 363
    goto :goto_8

    .line 364
    :cond_e
    move v0, v3

    .line 365
    :goto_8
    aput-boolean v0, p2, p4

    .line 366
    .line 367
    add-int/lit8 v5, v5, 0x3

    .line 368
    .line 369
    add-int/lit8 p4, p4, 0x1

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_f
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :cond_10
    new-array p2, v1, [S

    .line 378
    .line 379
    :goto_9
    if-ge v3, v1, :cond_11

    .line 380
    .line 381
    iget-object p4, p0, Lvz/e;->b:[I

    .line 382
    .line 383
    add-int/lit8 v0, v5, 0x1

    .line 384
    .line 385
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    aget p4, p4, v0

    .line 390
    .line 391
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 392
    .line 393
    .line 394
    move-result p4

    .line 395
    int-to-short p4, p4

    .line 396
    aput-short p4, p2, v3

    .line 397
    .line 398
    add-int/lit8 v5, v5, 0x3

    .line 399
    .line 400
    add-int/lit8 v3, v3, 0x1

    .line 401
    .line 402
    goto :goto_9

    .line 403
    :cond_11
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_2

    .line 407
    .line 408
    :cond_12
    new-array p2, v1, [F

    .line 409
    .line 410
    :goto_a
    if-ge v3, v1, :cond_13

    .line 411
    .line 412
    iget-object p4, p0, Lvz/e;->b:[I

    .line 413
    .line 414
    add-int/lit8 v0, v5, 0x1

    .line 415
    .line 416
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    aget p4, p4, v0

    .line 421
    .line 422
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 423
    .line 424
    .line 425
    move-result p4

    .line 426
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 427
    .line 428
    .line 429
    move-result p4

    .line 430
    aput p4, p2, v3

    .line 431
    .line 432
    add-int/lit8 v5, v5, 0x3

    .line 433
    .line 434
    add-int/lit8 v3, v3, 0x1

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_13
    invoke-virtual {p1, p3, p2}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_2

    .line 441
    .line 442
    :cond_14
    iget-object p4, p0, Lvz/e;->b:[I

    .line 443
    .line 444
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    aget p4, p4, v0

    .line 449
    .line 450
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 451
    .line 452
    .line 453
    move-result p4

    .line 454
    if-nez p4, :cond_15

    .line 455
    .line 456
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 457
    .line 458
    goto :goto_b

    .line 459
    :cond_15
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 460
    .line 461
    :goto_b
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_16
    invoke-virtual {p0, v6, p4}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p4

    .line 470
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_0

    .line 474
    .line 475
    :cond_17
    invoke-virtual {p0, v6, p4}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    add-int/lit8 v1, p2, 0x3

    .line 480
    .line 481
    invoke-virtual {p0, v1, p4}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p4

    .line 485
    invoke-virtual {p1, p3, v0, p4}, Lvz/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    add-int/lit8 p2, p2, 0x5

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_18
    invoke-virtual {p0, v6, p4}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p4

    .line 495
    invoke-static {p4}, Lvz/y;->n(Ljava/lang/String;)Lvz/y;

    .line 496
    .line 497
    .line 498
    move-result-object p4

    .line 499
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_0

    .line 503
    .line 504
    :cond_19
    iget-object p4, p0, Lvz/e;->b:[I

    .line 505
    .line 506
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    aget p4, p4, v0

    .line 511
    .line 512
    invoke-virtual {p0, p4}, Lvz/e;->t(I)I

    .line 513
    .line 514
    .line 515
    move-result p4

    .line 516
    int-to-short p4, p4

    .line 517
    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 518
    .line 519
    .line 520
    move-result-object p4

    .line 521
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_0

    .line 525
    .line 526
    :cond_1a
    :pswitch_5
    invoke-virtual {p0, v6}, Lvz/e;->H(I)I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    invoke-virtual {p0, v0, p4}, Lvz/e;->o(I[C)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object p4

    .line 534
    invoke-virtual {p1, p3, p4}, Lvz/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_0

    .line 538
    .line 539
    :cond_1b
    invoke-virtual {p0, v6, p4}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {p1, p3, v0}, Lvz/a;->b(Ljava/lang/String;Ljava/lang/String;)Lvz/a;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    add-int/lit8 p2, p2, 0x3

    .line 548
    .line 549
    invoke-direct {p0, p1, p2, v4, p4}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 550
    .line 551
    .line 552
    move-result p2

    .line 553
    :goto_c
    return p2

    .line 554
    nop

    .line 555
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private r(Lvz/a;IZ[C)I
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lvz/e;->H(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 p2, p2, 0x2

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    :goto_0
    add-int/lit8 p3, v0, -0x1

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p2, p4}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    add-int/lit8 p2, p2, 0x2

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, v0, p4}, Lvz/e;->q(Lvz/a;ILjava/lang/String;[C)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    move v0, p3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :goto_1
    add-int/lit8 p3, v0, -0x1

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0, p4}, Lvz/e;->q(Lvz/a;ILjava/lang/String;[C)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    move v0, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lvz/a;->d()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return p2
.end method

.method private s(Lvz/f;Lvz/i;I)I
    .locals 27

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    iget-object v10, v9, Lvz/i;->c:[C

    .line 8
    .line 9
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v2, v0, 0x2

    .line 14
    .line 15
    invoke-virtual {v8, v2, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v13

    .line 19
    add-int/lit8 v2, v0, 0x4

    .line 20
    .line 21
    invoke-virtual {v8, v2, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v14

    .line 25
    add-int/lit8 v2, v0, 0x6

    .line 26
    .line 27
    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    const/4 v15, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    move v11, v1

    .line 36
    move v4, v12

    .line 37
    move v5, v4

    .line 38
    move v6, v5

    .line 39
    move v7, v6

    .line 40
    move-object v3, v15

    .line 41
    move-object/from16 v16, v3

    .line 42
    .line 43
    move-object/from16 v17, v16

    .line 44
    .line 45
    :goto_0
    add-int/lit8 v18, v2, -0x1

    .line 46
    .line 47
    if-lez v2, :cond_9

    .line 48
    .line 49
    invoke-virtual {v8, v0, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    add-int/lit8 v1, v0, 0x2

    .line 54
    .line 55
    invoke-virtual {v8, v1}, Lvz/e;->t(I)I

    .line 56
    .line 57
    .line 58
    move-result v19

    .line 59
    add-int/lit8 v1, v0, 0x6

    .line 60
    .line 61
    const-string v0, "ConstantValue"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v8, v1}, Lvz/e;->H(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    move-object/from16 v17, v15

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v8, v0, v10}, Lvz/e;->o(I[C)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object/from16 v17, v0

    .line 83
    .line 84
    :goto_1
    move/from16 v23, v1

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_1
    const-string v0, "Signature"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v8, v1, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v16

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const-string v0, "Deprecated"

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    const/high16 v0, 0x20000

    .line 110
    .line 111
    or-int/2addr v0, v11

    .line 112
    :goto_2
    move v11, v0

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string v0, "Synthetic"

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    or-int/lit16 v0, v11, 0x1000

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    const-string v0, "RuntimeVisibleAnnotations"

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    move v7, v1

    .line 134
    move/from16 v23, v7

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_5
    const-string v0, "RuntimeVisibleTypeAnnotations"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    move v5, v1

    .line 147
    move/from16 v23, v5

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    const-string v0, "RuntimeInvisibleAnnotations"

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    move v6, v1

    .line 159
    move/from16 v23, v6

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    move v4, v1

    .line 171
    move/from16 v23, v4

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    iget-object v0, v9, Lvz/i;->a:[Lvz/c;

    .line 175
    .line 176
    const/16 v20, -0x1

    .line 177
    .line 178
    const/16 v21, 0x0

    .line 179
    .line 180
    move-object/from16 v22, v0

    .line 181
    .line 182
    move-object/from16 v0, p0

    .line 183
    .line 184
    move/from16 v23, v1

    .line 185
    .line 186
    move-object/from16 v1, v22

    .line 187
    .line 188
    move-object/from16 v24, v3

    .line 189
    .line 190
    move/from16 v3, v23

    .line 191
    .line 192
    move/from16 v25, v4

    .line 193
    .line 194
    move/from16 v4, v19

    .line 195
    .line 196
    move/from16 v26, v5

    .line 197
    .line 198
    move-object v5, v10

    .line 199
    move v9, v6

    .line 200
    move/from16 v6, v20

    .line 201
    .line 202
    move/from16 p3, v9

    .line 203
    .line 204
    move v9, v7

    .line 205
    move-object/from16 v7, v21

    .line 206
    .line 207
    invoke-direct/range {v0 .. v7}, Lvz/e;->j([Lvz/c;Ljava/lang/String;II[CI[Lvz/q;)Lvz/c;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    move-object/from16 v1, v24

    .line 212
    .line 213
    iput-object v1, v3, Lvz/c;->c:Lvz/c;

    .line 214
    .line 215
    move/from16 v6, p3

    .line 216
    .line 217
    move v7, v9

    .line 218
    move/from16 v4, v25

    .line 219
    .line 220
    move/from16 v5, v26

    .line 221
    .line 222
    :goto_3
    add-int v0, v23, v19

    .line 223
    .line 224
    move-object/from16 v9, p2

    .line 225
    .line 226
    move/from16 v2, v18

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_9
    move-object v1, v3

    .line 231
    move/from16 v25, v4

    .line 232
    .line 233
    move/from16 v26, v5

    .line 234
    .line 235
    move/from16 p3, v6

    .line 236
    .line 237
    move v9, v7

    .line 238
    move v2, v11

    .line 239
    move-object/from16 v11, p1

    .line 240
    .line 241
    move v3, v12

    .line 242
    move v12, v2

    .line 243
    move-object v2, v15

    .line 244
    move-object/from16 v15, v16

    .line 245
    .line 246
    move-object/from16 v16, v17

    .line 247
    .line 248
    invoke-virtual/range {v11 .. v16}, Lvz/f;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lvz/l;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-nez v4, :cond_a

    .line 253
    .line 254
    return v0

    .line 255
    :cond_a
    const/4 v5, 0x1

    .line 256
    if-eqz v9, :cond_b

    .line 257
    .line 258
    invoke-virtual {v8, v9}, Lvz/e;->H(I)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    add-int/lit8 v7, v9, 0x2

    .line 263
    .line 264
    :goto_4
    add-int/lit8 v9, v6, -0x1

    .line 265
    .line 266
    if-lez v6, :cond_b

    .line 267
    .line 268
    invoke-virtual {v8, v7, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    add-int/lit8 v7, v7, 0x2

    .line 273
    .line 274
    invoke-virtual {v4, v6, v5}, Lvz/l;->a(Ljava/lang/String;Z)Lvz/a;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-direct {v8, v6, v7, v5, v10}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    move v6, v9

    .line 283
    goto :goto_4

    .line 284
    :cond_b
    if-eqz p3, :cond_c

    .line 285
    .line 286
    move/from16 v12, p3

    .line 287
    .line 288
    invoke-virtual {v8, v12}, Lvz/e;->H(I)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    add-int/lit8 v7, v12, 0x2

    .line 293
    .line 294
    :goto_5
    add-int/lit8 v9, v6, -0x1

    .line 295
    .line 296
    if-lez v6, :cond_c

    .line 297
    .line 298
    invoke-virtual {v8, v7, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    add-int/lit8 v7, v7, 0x2

    .line 303
    .line 304
    invoke-virtual {v4, v6, v3}, Lvz/l;->a(Ljava/lang/String;Z)Lvz/a;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-direct {v8, v6, v7, v5, v10}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    move v6, v9

    .line 313
    goto :goto_5

    .line 314
    :cond_c
    move/from16 v12, v26

    .line 315
    .line 316
    if-eqz v12, :cond_d

    .line 317
    .line 318
    invoke-virtual {v8, v12}, Lvz/e;->H(I)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    add-int/lit8 v7, v12, 0x2

    .line 323
    .line 324
    :goto_6
    add-int/lit8 v9, v6, -0x1

    .line 325
    .line 326
    if-lez v6, :cond_d

    .line 327
    .line 328
    move-object/from16 v6, p2

    .line 329
    .line 330
    invoke-direct {v8, v6, v7}, Lvz/e;->E(Lvz/i;I)I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    invoke-virtual {v8, v7, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    add-int/lit8 v7, v7, 0x2

    .line 339
    .line 340
    iget v12, v6, Lvz/i;->h:I

    .line 341
    .line 342
    iget-object v13, v6, Lvz/i;->i:Lvz/z;

    .line 343
    .line 344
    invoke-virtual {v4, v12, v13, v11, v5}, Lvz/l;->d(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    invoke-direct {v8, v11, v7, v5, v10}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    move v6, v9

    .line 353
    goto :goto_6

    .line 354
    :cond_d
    move-object/from16 v6, p2

    .line 355
    .line 356
    move/from16 v12, v25

    .line 357
    .line 358
    if-eqz v12, :cond_e

    .line 359
    .line 360
    invoke-virtual {v8, v12}, Lvz/e;->H(I)I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    add-int/lit8 v9, v12, 0x2

    .line 365
    .line 366
    :goto_7
    add-int/lit8 v11, v7, -0x1

    .line 367
    .line 368
    if-lez v7, :cond_e

    .line 369
    .line 370
    invoke-direct {v8, v6, v9}, Lvz/e;->E(Lvz/i;I)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    invoke-virtual {v8, v7, v10}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    add-int/lit8 v7, v7, 0x2

    .line 379
    .line 380
    iget v12, v6, Lvz/i;->h:I

    .line 381
    .line 382
    iget-object v13, v6, Lvz/i;->i:Lvz/z;

    .line 383
    .line 384
    invoke-virtual {v4, v12, v13, v9, v3}, Lvz/l;->d(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-direct {v8, v9, v7, v5, v10}, Lvz/e;->r(Lvz/a;IZ[C)I

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    move v7, v11

    .line 393
    goto :goto_7

    .line 394
    :cond_e
    :goto_8
    move-object v3, v1

    .line 395
    if-eqz v3, :cond_f

    .line 396
    .line 397
    iget-object v1, v3, Lvz/c;->c:Lvz/c;

    .line 398
    .line 399
    iput-object v2, v3, Lvz/c;->c:Lvz/c;

    .line 400
    .line 401
    invoke-virtual {v4, v3}, Lvz/l;->b(Lvz/c;)V

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_f
    invoke-virtual {v4}, Lvz/l;->c()V

    .line 406
    .line 407
    .line 408
    return v0
.end method

.method private w(Lvz/f;Lvz/i;I)I
    .locals 34

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v8, p3

    .line 1
    iget-object v11, v10, Lvz/i;->c:[C

    .line 2
    invoke-virtual {v9, v8}, Lvz/e;->H(I)I

    move-result v0

    iput v0, v10, Lvz/i;->d:I

    add-int/lit8 v0, v8, 0x2

    .line 3
    invoke-virtual {v9, v0, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lvz/i;->e:Ljava/lang/String;

    add-int/lit8 v12, v8, 0x4

    .line 4
    invoke-virtual {v9, v12, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lvz/i;->f:Ljava/lang/String;

    add-int/lit8 v0, v8, 0x6

    .line 5
    invoke-virtual {v9, v0}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v1, v8, 0x8

    move v15, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    add-int/lit8 v22, v0, -0x1

    const/high16 v23, 0x20000

    if-lez v0, :cond_f

    .line 6
    invoke-virtual {v9, v15, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v14, v15, 0x2

    .line 7
    invoke-virtual {v9, v14}, Lvz/e;->t(I)I

    move-result v14

    move/from16 v25, v7

    add-int/lit8 v7, v15, 0x6

    move/from16 v26, v1

    .line 8
    const-string v1, "Code"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget v0, v10, Lvz/i;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move/from16 v21, v7

    move/from16 v24, v21

    :goto_1
    move/from16 v7, v25

    move/from16 v1, v26

    goto/16 :goto_6

    :cond_0
    move/from16 v27, v2

    goto :goto_5

    .line 10
    :cond_1
    const-string v1, "Exceptions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v9, v7}, Lvz/e;->H(I)I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    add-int/lit8 v15, v15, 0x8

    move/from16 v27, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 12
    invoke-virtual {v9, v15, v11}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v18, v1

    move/from16 v17, v7

    move/from16 v24, v17

    :goto_3
    move/from16 v7, v25

    move/from16 v1, v26

    :goto_4
    move/from16 v2, v27

    goto/16 :goto_6

    :cond_3
    move/from16 v27, v2

    .line 13
    const-string v1, "Signature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v9, v7}, Lvz/e;->H(I)I

    move-result v0

    move/from16 v24, v7

    move/from16 v1, v26

    move/from16 v2, v27

    move v7, v0

    goto/16 :goto_6

    .line 15
    :cond_4
    const-string v1, "Deprecated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    iget v0, v10, Lvz/i;->d:I

    or-int v0, v0, v23

    iput v0, v10, Lvz/i;->d:I

    :goto_5
    move/from16 v24, v7

    goto :goto_3

    .line 17
    :cond_5
    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v7

    move/from16 v24, v4

    goto :goto_3

    .line 18
    :cond_6
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v7

    move/from16 v24, v2

    goto :goto_1

    .line 19
    :cond_7
    const-string v1, "AnnotationDefault"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v6, v7

    move/from16 v24, v6

    goto :goto_3

    .line 20
    :cond_8
    const-string v1, "Synthetic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    iget v0, v10, Lvz/i;->d:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v10, Lvz/i;->d:I

    move/from16 v24, v7

    move/from16 v7, v25

    move/from16 v1, v26

    move/from16 v2, v27

    const/16 v16, 0x1

    goto/16 :goto_6

    .line 22
    :cond_9
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v3, v7

    move/from16 v24, v3

    goto :goto_3

    .line 23
    :cond_a
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v7

    move/from16 v24, v1

    move/from16 v7, v25

    goto/16 :goto_4

    .line 24
    :cond_b
    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v19, v7

    move/from16 v24, v19

    goto/16 :goto_3

    .line 25
    :cond_c
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v20, v7

    move/from16 v24, v20

    goto/16 :goto_3

    .line 26
    :cond_d
    const-string v1, "MethodParameters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v5, v7

    move/from16 v24, v5

    goto/16 :goto_3

    .line 27
    :cond_e
    iget-object v1, v10, Lvz/i;->a:[Lvz/c;

    const/4 v15, -0x1

    const/16 v23, 0x0

    move-object v2, v0

    move-object/from16 v0, p0

    move/from16 v28, v26

    move/from16 v29, v27

    move/from16 v30, v3

    move v3, v7

    move/from16 v31, v4

    move v4, v14

    move/from16 v32, v5

    move-object v5, v11

    move/from16 v33, v6

    move v6, v15

    move/from16 v24, v7

    move/from16 v15, v25

    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lvz/e;->j([Lvz/c;Ljava/lang/String;II[CI[Lvz/q;)Lvz/c;

    move-result-object v0

    .line 28
    iput-object v13, v0, Lvz/c;->c:Lvz/c;

    move-object v13, v0

    move v7, v15

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    :goto_6
    add-int v15, v24, v14

    move/from16 v0, v22

    goto/16 :goto_0

    :cond_f
    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    .line 29
    iget v2, v10, Lvz/i;->d:I

    iget-object v3, v10, Lvz/i;->e:Ljava/lang/String;

    iget-object v4, v10, Lvz/i;->f:Ljava/lang/String;

    if-nez v7, :cond_10

    const/4 v5, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual {v9, v7, v11}, Lvz/e;->J(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_7
    move-object/from16 v1, p1

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lvz/f;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lvz/r;

    move-result-object v14

    if-nez v14, :cond_11

    return v15

    .line 30
    :cond_11
    instance-of v0, v14, Lvz/s;

    if-eqz v0, :cond_13

    .line 31
    move-object v0, v14

    check-cast v0, Lvz/s;

    sub-int v3, v15, v8

    .line 32
    iget v1, v10, Lvz/i;->d:I

    and-int v1, v1, v23

    if-eqz v1, :cond_12

    const/4 v5, 0x1

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v9, v12}, Lvz/e;->H(I)I

    move-result v6

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v4, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lvz/s;->H(Lvz/e;IIZZIII)Z

    move-result v0

    if-eqz v0, :cond_13

    return v15

    :cond_13
    move/from16 v5, v32

    if-eqz v5, :cond_14

    .line 33
    invoke-virtual {v9, v5}, Lvz/e;->l(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v5, v1

    :goto_9
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_14

    .line 34
    invoke-virtual {v9, v5, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v5, 0x2

    invoke-virtual {v9, v2}, Lvz/e;->H(I)I

    move-result v2

    invoke-virtual {v14, v0, v2}, Lvz/r;->y(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x4

    move v0, v1

    goto :goto_9

    :cond_14
    move/from16 v6, v33

    if-eqz v6, :cond_15

    .line 35
    invoke-virtual {v14}, Lvz/r;->c()Lvz/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-direct {v9, v0, v6, v1, v11}, Lvz/e;->q(Lvz/a;ILjava/lang/String;[C)I

    if-eqz v0, :cond_15

    .line 37
    invoke-virtual {v0}, Lvz/a;->d()V

    :cond_15
    move/from16 v4, v31

    if-eqz v4, :cond_16

    .line 38
    invoke-virtual {v9, v4}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v4, v4, 0x2

    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_16

    .line 39
    invoke-virtual {v9, v4, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x2

    const/4 v2, 0x1

    .line 40
    invoke-virtual {v14, v0, v2}, Lvz/r;->b(Ljava/lang/String;Z)Lvz/a;

    move-result-object v0

    invoke-direct {v9, v0, v4, v2, v11}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v4

    move v0, v1

    goto :goto_a

    :cond_16
    move/from16 v3, v30

    if-eqz v3, :cond_17

    .line 41
    invoke-virtual {v9, v3}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    :goto_b
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_17

    .line 42
    invoke-virtual {v9, v3, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x2

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v14, v0, v2}, Lvz/r;->b(Ljava/lang/String;Z)Lvz/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v3, v2, v11}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v3

    move v0, v1

    goto :goto_b

    :cond_17
    move/from16 v2, v29

    if-eqz v2, :cond_18

    .line 44
    invoke-virtual {v9, v2}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x2

    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_18

    .line 45
    invoke-direct {v9, v10, v2}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 46
    invoke-virtual {v9, v0, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    .line 47
    iget v3, v10, Lvz/i;->h:I

    iget-object v4, v10, Lvz/i;->i:Lvz/z;

    const/4 v5, 0x1

    invoke-virtual {v14, v3, v4, v2, v5}, Lvz/r;->D(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    move-result-object v2

    invoke-direct {v9, v2, v0, v5, v11}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v2

    move v0, v1

    goto :goto_c

    :cond_18
    move/from16 v1, v28

    if-eqz v1, :cond_19

    .line 48
    invoke-virtual {v9, v1}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_19

    .line 49
    invoke-direct {v9, v10, v1}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 50
    invoke-virtual {v9, v0, v11}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 51
    iget v3, v10, Lvz/i;->h:I

    iget-object v4, v10, Lvz/i;->i:Lvz/z;

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v4, v1, v5}, Lvz/r;->D(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v9, v1, v0, v3, v11}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_d

    :cond_19
    const/4 v3, 0x1

    const/4 v5, 0x0

    move/from16 v0, v19

    if-eqz v0, :cond_1a

    .line 52
    invoke-direct {v9, v14, v10, v0, v3}, Lvz/e;->A(Lvz/r;Lvz/i;IZ)V

    :cond_1a
    move/from16 v0, v20

    if-eqz v0, :cond_1b

    .line 53
    invoke-direct {v9, v14, v10, v0, v5}, Lvz/e;->A(Lvz/r;Lvz/i;IZ)V

    :cond_1b
    :goto_e
    if-eqz v13, :cond_1c

    .line 54
    iget-object v0, v13, Lvz/c;->c:Lvz/c;

    const/4 v1, 0x0

    .line 55
    iput-object v1, v13, Lvz/c;->c:Lvz/c;

    .line 56
    invoke-virtual {v14, v13}, Lvz/r;->d(Lvz/c;)V

    move-object v13, v0

    goto :goto_e

    :cond_1c
    move/from16 v13, v21

    if-eqz v13, :cond_1d

    .line 57
    invoke-virtual {v14}, Lvz/r;->e()V

    .line 58
    invoke-direct {v9, v14, v10, v13}, Lvz/e;->n(Lvz/r;Lvz/i;I)V

    .line 59
    :cond_1d
    invoke-virtual {v14}, Lvz/r;->f()V

    return v15
.end method

.method private y(Lvz/f;Lvz/i;IILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p2, p2, Lvz/i;->c:[C

    .line 2
    .line 3
    invoke-virtual {p0, p3, p2}, Lvz/e;->x(I[C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    add-int/lit8 v1, p3, 0x2

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v2, p3, 0x4

    .line 14
    .line 15
    invoke-virtual {p0, v2, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v3, p3, 0x6

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Lvz/f;->h(Ljava/lang/String;ILjava/lang/String;)Lvz/t;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    if-eqz p5, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, p5}, Lvz/t;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz p4, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p4}, Lvz/e;->H(I)I

    .line 36
    .line 37
    .line 38
    move-result p5

    .line 39
    add-int/lit8 p4, p4, 0x2

    .line 40
    .line 41
    :goto_0
    add-int/lit8 v0, p5, -0x1

    .line 42
    .line 43
    if-lez p5, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p4, p2}, Lvz/e;->z(I[C)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    invoke-virtual {p1, p5}, Lvz/t;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 p4, p4, 0x2

    .line 53
    .line 54
    move p5, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, v3}, Lvz/e;->H(I)I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    add-int/lit8 p3, p3, 0x8

    .line 61
    .line 62
    :goto_1
    add-int/lit8 p5, p4, -0x1

    .line 63
    .line 64
    if-lez p4, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p3, p2}, Lvz/e;->x(I[C)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    add-int/lit8 v0, p3, 0x2

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v1, p3, 0x4

    .line 77
    .line 78
    invoke-virtual {p0, v1, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    add-int/lit8 p3, p3, 0x6

    .line 83
    .line 84
    invoke-virtual {p1, p4, v0, v1}, Lvz/t;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move p4, p5

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    add-int/lit8 p3, p3, 0x2

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p5, p4, -0x1

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    const/4 v1, 0x0

    .line 99
    if-lez p4, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0, p3, p2}, Lvz/e;->z(I[C)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    add-int/lit8 v2, p3, 0x2

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lvz/e;->H(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    add-int/lit8 v3, p3, 0x4

    .line 112
    .line 113
    invoke-virtual {p0, v3}, Lvz/e;->H(I)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/lit8 p3, p3, 0x6

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    new-array v0, v3, [Ljava/lang/String;

    .line 122
    .line 123
    :goto_3
    if-ge v1, v3, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0, p3, p2}, Lvz/e;->x(I[C)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    aput-object v4, v0, v1

    .line 130
    .line 131
    add-int/lit8 p3, p3, 0x2

    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    invoke-virtual {p1, p4, v2, v0}, Lvz/t;->b(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move p4, p5

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 142
    .line 143
    .line 144
    move-result p4

    .line 145
    add-int/lit8 p3, p3, 0x2

    .line 146
    .line 147
    :goto_4
    add-int/lit8 p5, p4, -0x1

    .line 148
    .line 149
    if-lez p4, :cond_8

    .line 150
    .line 151
    invoke-virtual {p0, p3, p2}, Lvz/e;->z(I[C)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    add-int/lit8 v2, p3, 0x2

    .line 156
    .line 157
    invoke-virtual {p0, v2}, Lvz/e;->H(I)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    add-int/lit8 v3, p3, 0x4

    .line 162
    .line 163
    invoke-virtual {p0, v3}, Lvz/e;->H(I)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    add-int/lit8 p3, p3, 0x6

    .line 168
    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    new-array v4, v3, [Ljava/lang/String;

    .line 172
    .line 173
    move v5, v1

    .line 174
    :goto_5
    if-ge v5, v3, :cond_7

    .line 175
    .line 176
    invoke-virtual {p0, p3, p2}, Lvz/e;->x(I[C)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    aput-object v6, v4, v5

    .line 181
    .line 182
    add-int/lit8 p3, p3, 0x2

    .line 183
    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object v4, v0

    .line 188
    :cond_7
    invoke-virtual {p1, p4, v2, v4}, Lvz/t;->d(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move p4, p5

    .line 192
    goto :goto_4

    .line 193
    :cond_8
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 194
    .line 195
    .line 196
    move-result p4

    .line 197
    add-int/lit8 p3, p3, 0x2

    .line 198
    .line 199
    :goto_6
    add-int/lit8 p5, p4, -0x1

    .line 200
    .line 201
    if-lez p4, :cond_9

    .line 202
    .line 203
    invoke-virtual {p0, p3, p2}, Lvz/e;->m(I[C)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p4

    .line 207
    invoke-virtual {p1, p4}, Lvz/t;->h(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 p3, p3, 0x2

    .line 211
    .line 212
    move p4, p5

    .line 213
    goto :goto_6

    .line 214
    :cond_9
    invoke-virtual {p0, p3}, Lvz/e;->H(I)I

    .line 215
    .line 216
    .line 217
    move-result p4

    .line 218
    add-int/lit8 p3, p3, 0x2

    .line 219
    .line 220
    :goto_7
    add-int/lit8 p5, p4, -0x1

    .line 221
    .line 222
    if-lez p4, :cond_b

    .line 223
    .line 224
    invoke-virtual {p0, p3, p2}, Lvz/e;->m(I[C)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p4

    .line 228
    add-int/lit8 v0, p3, 0x2

    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    add-int/lit8 p3, p3, 0x4

    .line 235
    .line 236
    new-array v2, v0, [Ljava/lang/String;

    .line 237
    .line 238
    move v3, v1

    .line 239
    :goto_8
    if-ge v3, v0, :cond_a

    .line 240
    .line 241
    invoke-virtual {p0, p3, p2}, Lvz/e;->m(I[C)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    aput-object v4, v2, v3

    .line 246
    .line 247
    add-int/lit8 p3, p3, 0x2

    .line 248
    .line 249
    add-int/lit8 v3, v3, 0x1

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_a
    invoke-virtual {p1, p4, v2}, Lvz/t;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    move p4, p5

    .line 256
    goto :goto_7

    .line 257
    :cond_b
    invoke-virtual {p1}, Lvz/t;->a()V

    .line 258
    .line 259
    .line 260
    return-void
.end method


# virtual methods
.method public B(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lvz/e;->a:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-byte p1, v0, p1

    .line 12
    .line 13
    and-int/lit16 p1, p1, 0xff

    .line 14
    .line 15
    or-int/2addr p1, v1

    .line 16
    int-to-short p1, p1

    .line 17
    return p1
.end method

.method public G(I[C)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lvz/e;->H(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v0, p2}, Lvz/e;->J(I[C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public H(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lvz/e;->a:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-byte p1, v0, p1

    .line 12
    .line 13
    and-int/lit16 p1, p1, 0xff

    .line 14
    .line 15
    or-int/2addr p1, v1

    .line 16
    return p1
.end method

.method final J(I[C)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lvz/e;->c:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    iget-object v1, p0, Lvz/e;->b:[I

    .line 9
    .line 10
    aget v1, v1, p1

    .line 11
    .line 12
    add-int/lit8 v2, v1, 0x2

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {p0, v2, v1, p2}, Lvz/e;->I(II[C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    aput-object p2, v0, p1

    .line 23
    .line 24
    return-object p2
.end method

.method public a(Lvz/f;[Lvz/c;I)V
    .locals 39

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    .line 1
    new-instance v11, Lvz/i;

    invoke-direct {v11}, Lvz/i;-><init>()V

    move-object/from16 v12, p2

    .line 2
    iput-object v12, v11, Lvz/i;->a:[Lvz/c;

    .line 3
    iput v10, v11, Lvz/i;->b:I

    .line 4
    iget v0, v8, Lvz/e;->f:I

    new-array v13, v0, [C

    iput-object v13, v11, Lvz/i;->c:[C

    .line 5
    iget v0, v8, Lvz/e;->g:I

    .line 6
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 7
    invoke-virtual {v8, v2, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v2, v0, 0x4

    .line 8
    invoke-virtual {v8, v2, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v0, 0x6

    .line 9
    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    add-int/lit8 v0, v0, 0x8

    move v5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 10
    invoke-virtual {v8, v5, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lvz/e;->e()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    .line 12
    invoke-virtual {v8, v2}, Lvz/e;->H(I)I

    move-result v2

    move v3, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_1
    if-lez v16, :cond_12

    .line 13
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v0, 0x2

    .line 14
    invoke-virtual {v8, v6}, Lvz/e;->t(I)I

    move-result v6

    add-int/lit8 v0, v0, 0x6

    move-object/from16 v32, v1

    .line 15
    const-string v1, "SourceFile"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v35, v0

    move-object v2, v1

    :goto_2
    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v1, v32

    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 17
    :cond_1
    const-string v1, "InnerClasses"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v29, v0

    move/from16 v35, v29

    goto :goto_2

    .line 18
    :cond_2
    const-string v1, "EnclosingMethod"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v22, v0

    move/from16 v35, v22

    goto :goto_2

    .line 19
    :cond_3
    const-string v1, "NestHost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v8, v0, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v35, v0

    move-object/from16 v21, v1

    goto :goto_2

    .line 21
    :cond_4
    const-string v1, "NestMembers"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v27, v0

    move/from16 v35, v27

    goto :goto_2

    .line 22
    :cond_5
    const-string v1, "Signature"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v18

    :goto_4
    move/from16 v35, v0

    goto :goto_2

    .line 24
    :cond_6
    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v23, v0

    move/from16 v35, v23

    goto :goto_2

    .line 25
    :cond_7
    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v25, v0

    move/from16 v35, v25

    goto :goto_2

    .line 26
    :cond_8
    const-string v1, "Deprecated"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v1, 0x20000

    or-int/2addr v3, v1

    goto :goto_4

    .line 27
    :cond_9
    const-string v1, "Synthetic"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v3, v3, 0x1000

    goto :goto_4

    .line 28
    :cond_a
    const-string v1, "SourceDebugExtension"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 29
    new-array v1, v6, [C

    invoke-direct {v8, v0, v6, v1}, Lvz/e;->I(II[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v35, v0

    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    goto/16 :goto_3

    .line 30
    :cond_b
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v24, v0

    move/from16 v35, v24

    goto/16 :goto_2

    .line 31
    :cond_c
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v26, v0

    move/from16 v35, v26

    goto/16 :goto_2

    .line 32
    :cond_d
    const-string v1, "Module"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move/from16 v17, v0

    move/from16 v35, v17

    goto/16 :goto_2

    .line 33
    :cond_e
    const-string v1, "ModuleMainClass"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 34
    invoke-virtual {v8, v0, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 35
    :cond_f
    const-string v1, "ModulePackages"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v19, v0

    move/from16 v35, v19

    goto/16 :goto_2

    .line 36
    :cond_10
    const-string v1, "BootstrapMethods"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v33, -0x1

    const/16 v34, 0x0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v36, v32

    move-object/from16 v1, p2

    move-object/from16 v37, v2

    move-object v2, v4

    move/from16 v32, v3

    move/from16 v3, v35

    move v4, v6

    move/from16 v38, v5

    move-object v5, v13

    move/from16 v30, v6

    const/4 v12, 0x0

    move/from16 v6, v33

    move-object/from16 v31, v7

    move-object/from16 v7, v34

    .line 37
    invoke-direct/range {v0 .. v7}, Lvz/e;->j([Lvz/c;Ljava/lang/String;II[CI[Lvz/q;)Lvz/c;

    move-result-object v0

    move-object/from16 v7, v28

    .line 38
    iput-object v7, v0, Lvz/c;->c:Lvz/c;

    move-object/from16 v28, v0

    move/from16 v3, v32

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    goto :goto_5

    :cond_11
    move/from16 v35, v0

    move-object/from16 v37, v2

    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v36, v32

    const/4 v12, 0x0

    move/from16 v32, v3

    move-object/from16 v1, v36

    :goto_5
    add-int v0, v35, v30

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v12, p2

    move-object/from16 v7, v31

    move/from16 v5, v38

    goto/16 :goto_1

    :cond_12
    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move/from16 v32, v3

    move/from16 v38, v5

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    const/4 v12, 0x0

    .line 39
    iget-object v0, v8, Lvz/e;->b:[I

    const/4 v6, 0x1

    aget v0, v0, v6

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v8, v0}, Lvz/e;->t(I)I

    move-result v1

    move-object/from16 v0, p1

    move/from16 v2, v32

    move-object v3, v14

    move-object/from16 v4, v18

    move-object v5, v15

    move v14, v6

    move-object/from16 v6, v31

    invoke-virtual/range {v0 .. v6}, Lvz/f;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_14

    move-object/from16 v2, v37

    move-object/from16 v1, v36

    if-nez v2, :cond_13

    if-eqz v1, :cond_14

    .line 40
    :cond_13
    invoke-virtual {v9, v2, v1}, Lvz/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move/from16 v3, v17

    move/from16 v4, v19

    move-object/from16 v5, v20

    .line 41
    invoke-direct/range {v0 .. v5}, Lvz/e;->y(Lvz/f;Lvz/i;IILjava/lang/String;)V

    :cond_15
    move-object/from16 v4, v21

    if-eqz v4, :cond_16

    .line 42
    invoke-virtual {v9, v4}, Lvz/f;->i(Ljava/lang/String;)V

    :cond_16
    move/from16 v6, v22

    if-eqz v6, :cond_19

    .line 43
    invoke-virtual {v8, v6, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v6, 0x2

    .line 44
    invoke-virtual {v8, v1}, Lvz/e;->H(I)I

    move-result v1

    if-nez v1, :cond_17

    const/4 v4, 0x0

    goto :goto_6

    .line 45
    :cond_17
    iget-object v2, v8, Lvz/e;->b:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    :goto_6
    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_7

    .line 46
    :cond_18
    iget-object v2, v8, Lvz/e;->b:[I

    aget v1, v2, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v8, v1, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    .line 47
    :goto_7
    invoke-virtual {v9, v0, v4, v1}, Lvz/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    move/from16 v6, v23

    if-eqz v6, :cond_1a

    .line 48
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v23, v6, 0x2

    move/from16 v1, v23

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1a

    .line 49
    invoke-virtual {v8, v1, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    .line 50
    invoke-virtual {v9, v0, v14}, Lvz/f;->b(Ljava/lang/String;Z)Lvz/a;

    move-result-object v0

    invoke-direct {v8, v0, v1, v14, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_8

    :cond_1a
    move/from16 v6, v24

    if-eqz v6, :cond_1b

    .line 51
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v24, v6, 0x2

    move/from16 v1, v24

    :goto_9
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1b

    .line 52
    invoke-virtual {v8, v1, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    .line 53
    invoke-virtual {v9, v0, v12}, Lvz/f;->b(Ljava/lang/String;Z)Lvz/a;

    move-result-object v0

    invoke-direct {v8, v0, v1, v14, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_9

    :cond_1b
    move/from16 v6, v25

    if-eqz v6, :cond_1c

    .line 54
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v25, v6, 0x2

    move/from16 v1, v25

    :goto_a
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1c

    .line 55
    invoke-direct {v8, v11, v1}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 56
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 57
    iget v3, v11, Lvz/i;->h:I

    iget-object v4, v11, Lvz/i;->i:Lvz/z;

    invoke-virtual {v9, v3, v4, v1, v14}, Lvz/f;->m(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    move-result-object v1

    invoke-direct {v8, v1, v0, v14, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_a

    :cond_1c
    move/from16 v6, v26

    if-eqz v6, :cond_1d

    .line 58
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v26, v6, 0x2

    move/from16 v1, v26

    :goto_b
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1d

    .line 59
    invoke-direct {v8, v11, v1}, Lvz/e;->E(Lvz/i;I)I

    move-result v0

    .line 60
    invoke-virtual {v8, v0, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 61
    iget v3, v11, Lvz/i;->h:I

    iget-object v4, v11, Lvz/i;->i:Lvz/z;

    invoke-virtual {v9, v3, v4, v1, v12}, Lvz/f;->m(ILvz/z;Ljava/lang/String;Z)Lvz/a;

    move-result-object v1

    invoke-direct {v8, v1, v0, v14, v13}, Lvz/e;->r(Lvz/a;IZ[C)I

    move-result v1

    move v0, v2

    goto :goto_b

    :cond_1d
    :goto_c
    if-eqz v7, :cond_1e

    .line 62
    iget-object v0, v7, Lvz/c;->c:Lvz/c;

    const/4 v1, 0x0

    .line 63
    iput-object v1, v7, Lvz/c;->c:Lvz/c;

    .line 64
    invoke-virtual {v9, v7}, Lvz/f;->c(Lvz/c;)V

    move-object v7, v0

    goto :goto_c

    :cond_1e
    move/from16 v6, v27

    if-eqz v6, :cond_1f

    .line 65
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v27, v6, 0x2

    move/from16 v1, v27

    :goto_d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1f

    .line 66
    invoke-virtual {v8, v1, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lvz/f;->j(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    move v0, v2

    goto :goto_d

    :cond_1f
    move/from16 v6, v29

    if-eqz v6, :cond_20

    .line 67
    invoke-virtual {v8, v6}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v29, v6, 0x2

    move/from16 v1, v29

    :goto_e
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_20

    .line 68
    invoke-virtual {v8, v1, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v8, v3, v13}, Lvz/e;->m(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v8, v4, v13}, Lvz/e;->G(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v8, v5}, Lvz/e;->H(I)I

    move-result v5

    invoke-virtual {v9, v0, v3, v4, v5}, Lvz/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x8

    move v0, v2

    goto :goto_e

    :cond_20
    move/from16 v0, v38

    .line 69
    invoke-virtual {v8, v0}, Lvz/e;->H(I)I

    move-result v1

    add-int/lit8 v5, v0, 0x2

    :goto_f
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_21

    .line 70
    invoke-direct {v8, v9, v11, v5}, Lvz/e;->s(Lvz/f;Lvz/i;I)I

    move-result v5

    move v1, v0

    goto :goto_f

    .line 71
    :cond_21
    invoke-virtual {v8, v5}, Lvz/e;->H(I)I

    move-result v0

    add-int/lit8 v5, v5, 0x2

    :goto_10
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_22

    .line 72
    invoke-direct {v8, v9, v11, v5}, Lvz/e;->w(Lvz/f;Lvz/i;I)I

    move-result v5

    move v0, v1

    goto :goto_10

    .line 73
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lvz/f;->d()V

    return-void
.end method

.method final e()I
    .locals 4

    .line 1
    iget v0, p0, Lvz/e;->g:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x6

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, v1, 0x6

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v1, v1, 0x8

    .line 31
    .line 32
    :goto_1
    add-int/lit8 v3, v0, -0x1

    .line 33
    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    add-int/lit8 v0, v1, 0x2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lvz/e;->t(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v0, v0, 0x6

    .line 43
    .line 44
    add-int/2addr v1, v0

    .line 45
    move v0, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, v1}, Lvz/e;->H(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    :goto_2
    add-int/lit8 v2, v0, -0x1

    .line 56
    .line 57
    if-lez v0, :cond_3

    .line 58
    .line 59
    add-int/lit8 v0, v1, 0x6

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/lit8 v1, v1, 0x8

    .line 66
    .line 67
    :goto_3
    add-int/lit8 v3, v0, -0x1

    .line 68
    .line 69
    if-lez v0, :cond_2

    .line 70
    .line 71
    add-int/lit8 v0, v1, 0x2

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lvz/e;->t(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/lit8 v0, v0, 0x6

    .line 78
    .line 79
    add-int/2addr v1, v0

    .line 80
    move v0, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    move v0, v2

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    add-int/lit8 v1, v1, 0x2

    .line 85
    .line 86
    return v1
.end method

.method public f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/e;->b:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/e;->b:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lvz/e;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public l(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/e;->a:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    and-int/lit16 p1, p1, 0xff

    .line 6
    .line 7
    return p1
.end method

.method public m(I[C)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvz/e;->D(I[C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(I[C)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lvz/e;->b:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lvz/e;->a:[B

    .line 6
    .line 7
    add-int/lit8 v2, v0, -0x1

    .line 8
    .line 9
    aget-byte v1, v1, v2

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch v1, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lvz/e;->p(I[C)Lvz/h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_1
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lvz/y;->j(Ljava/lang/String;)Lvz/y;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :pswitch_2
    invoke-virtual {p0, v0}, Lvz/e;->l(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object p1, p0, Lvz/e;->b:[I

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    add-int/2addr v0, v2

    .line 45
    invoke-virtual {p0, v0}, Lvz/e;->H(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    aget p1, p1, v0

    .line 50
    .line 51
    iget-object v0, p0, Lvz/e;->b:[I

    .line 52
    .line 53
    add-int/lit8 v3, p1, 0x2

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Lvz/e;->H(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    aget v0, v0, v3

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lvz/e;->m(I[C)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    add-int/lit8 v0, v0, 0x2

    .line 70
    .line 71
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v0, p0, Lvz/e;->a:[B

    .line 76
    .line 77
    sub-int/2addr p1, v2

    .line 78
    aget-byte p1, v0, p1

    .line 79
    .line 80
    const/16 v0, 0xb

    .line 81
    .line 82
    if-ne p1, v0, :cond_0

    .line 83
    .line 84
    move v5, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/4 p1, 0x0

    .line 87
    move v5, p1

    .line 88
    :goto_0
    new-instance p1, Lvz/o;

    .line 89
    .line 90
    move-object v0, p1

    .line 91
    move-object v2, v3

    .line 92
    move-object v3, v4

    .line 93
    move-object v4, p2

    .line 94
    invoke-direct/range {v0 .. v5}, Lvz/o;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_3
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :pswitch_4
    invoke-virtual {p0, v0, p2}, Lvz/e;->G(I[C)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lvz/y;->k(Ljava/lang/String;)Lvz/y;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :pswitch_5
    invoke-virtual {p0, v0}, Lvz/e;->v(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide p1

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 117
    .line 118
    .line 119
    move-result-wide p1

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    return-object p1

    .line 125
    :pswitch_6
    invoke-virtual {p0, v0}, Lvz/e;->v(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide p1

    .line 129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :pswitch_7
    invoke-virtual {p0, v0}, Lvz/e;->t(I)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :pswitch_8
    invoke-virtual {p0, v0}, Lvz/e;->t(I)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lvz/e;->a:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x18

    .line 8
    .line 9
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    aget-byte v2, v0, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x10

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    add-int/lit8 v2, p1, 0x2

    .line 19
    .line 20
    aget-byte v2, v0, v2

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    add-int/lit8 p1, p1, 0x3

    .line 28
    .line 29
    aget-byte p1, v0, p1

    .line 30
    .line 31
    and-int/lit16 p1, p1, 0xff

    .line 32
    .line 33
    or-int/2addr p1, v1

    .line 34
    return p1
.end method

.method protected u(I[Lvz/q;)Lvz/q;
    .locals 1

    .line 1
    aget-object v0, p2, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lvz/q;

    .line 6
    .line 7
    invoke-direct {v0}, Lvz/q;-><init>()V

    .line 8
    .line 9
    .line 10
    aput-object v0, p2, p1

    .line 11
    .line 12
    :cond_0
    aget-object p1, p2, p1

    .line 13
    .line 14
    return-object p1
.end method

.method public v(I)J
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lvz/e;->t(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    add-int/lit8 p1, p1, 0x4

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lvz/e;->t(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-long v2, p1

    .line 13
    const-wide v4, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    and-long/2addr v2, v4

    .line 19
    const/16 p1, 0x20

    .line 20
    .line 21
    shl-long/2addr v0, p1

    .line 22
    or-long/2addr v0, v2

    .line 23
    return-wide v0
.end method

.method public x(I[C)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvz/e;->D(I[C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z(I[C)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvz/e;->D(I[C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
