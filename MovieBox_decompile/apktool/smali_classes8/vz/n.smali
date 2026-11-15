.class Lvz/n;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Lvz/q;

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:S

.field private g:S

.field private h:I

.field private i:[I


# direct methods
.method constructor <init>(Lvz/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvz/n;->a:Lvz/q;

    .line 5
    .line 6
    return-void
.end method

.method private b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvz/n;->i:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lvz/n;->i:[I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lvz/n;->i:[I

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    iget v1, p0, Lvz/n;->h:I

    .line 14
    .line 15
    if-lt v1, v0, :cond_1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    mul-int/lit8 v2, v0, 0x2

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-array v1, v1, [I

    .line 26
    .line 27
    iget-object v2, p0, Lvz/n;->i:[I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lvz/n;->i:[I

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lvz/n;->i:[I

    .line 36
    .line 37
    iget v1, p0, Lvz/n;->h:I

    .line 38
    .line 39
    add-int/lit8 v2, v1, 0x1

    .line 40
    .line 41
    iput v2, p0, Lvz/n;->h:I

    .line 42
    .line 43
    aput p1, v0, v1

    .line 44
    .line 45
    return-void
.end method

.method static e(Lvz/x;Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/high16 p1, 0x1000000

    .line 12
    .line 13
    or-int/2addr p0, p1

    .line 14
    return p0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Lvz/y;->k(Ljava/lang/String;)Lvz/y;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lvz/y;->e()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p0, p1, v0}, Lvz/n;->f(Lvz/x;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    check-cast p1, Lvz/q;

    .line 36
    .line 37
    iget p1, p1, Lvz/q;->d:I

    .line 38
    .line 39
    const-string v0, ""

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Lvz/x;->K(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const/high16 p1, 0x3000000

    .line 46
    .line 47
    or-int/2addr p0, p1

    .line 48
    return p0
.end method

.method private static f(Lvz/x;Ljava/lang/String;I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const v3, 0x1000002

    .line 10
    .line 11
    .line 12
    const/16 v4, 0x46

    .line 13
    .line 14
    if-eq v2, v4, :cond_c

    .line 15
    .line 16
    const/high16 v5, 0x2000000

    .line 17
    .line 18
    const/16 v6, 0x4c

    .line 19
    .line 20
    if-eq v2, v6, :cond_b

    .line 21
    .line 22
    const v7, 0x1000001

    .line 23
    .line 24
    .line 25
    const/16 v8, 0x53

    .line 26
    .line 27
    if-eq v2, v8, :cond_a

    .line 28
    .line 29
    const/16 v9, 0x56

    .line 30
    .line 31
    if-eq v2, v9, :cond_9

    .line 32
    .line 33
    const/16 v9, 0x49

    .line 34
    .line 35
    if-eq v2, v9, :cond_a

    .line 36
    .line 37
    const v10, 0x1000004

    .line 38
    .line 39
    .line 40
    const/16 v11, 0x4a

    .line 41
    .line 42
    if-eq v2, v11, :cond_8

    .line 43
    .line 44
    const/16 v12, 0x5a

    .line 45
    .line 46
    if-eq v2, v12, :cond_a

    .line 47
    .line 48
    const v13, 0x1000003

    .line 49
    .line 50
    .line 51
    const/16 v14, 0x5b

    .line 52
    .line 53
    if-eq v2, v14, :cond_0

    .line 54
    .line 55
    packed-switch v2, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :pswitch_0
    return v13

    .line 65
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    if-ne v15, v14, :cond_1

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    if-eq v14, v4, :cond_7

    .line 81
    .line 82
    if-eq v14, v6, :cond_6

    .line 83
    .line 84
    if-eq v14, v8, :cond_5

    .line 85
    .line 86
    if-eq v14, v12, :cond_4

    .line 87
    .line 88
    if-eq v14, v9, :cond_3

    .line 89
    .line 90
    if-eq v14, v11, :cond_2

    .line 91
    .line 92
    packed-switch v14, :pswitch_data_1

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :pswitch_1
    move v3, v13

    .line 102
    goto :goto_1

    .line 103
    :pswitch_2
    const v3, 0x100000b

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_3
    const v3, 0x100000a

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v3, v10

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    move v3, v7

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const v3, 0x1000009

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const v3, 0x100000c

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    add-int/lit8 v4, v4, -0x1

    .line 130
    .line 131
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    or-int v3, v0, v5

    .line 140
    .line 141
    :cond_7
    :goto_1
    sub-int v2, v2, p2

    .line 142
    .line 143
    shl-int/lit8 v0, v2, 0x1c

    .line 144
    .line 145
    or-int/2addr v0, v3

    .line 146
    return v0

    .line 147
    :cond_8
    return v10

    .line 148
    :cond_9
    const/4 v0, 0x0

    .line 149
    return v0

    .line 150
    :cond_a
    :pswitch_4
    return v7

    .line 151
    :cond_b
    add-int/lit8 v2, p2, 0x1

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    add-int/lit8 v3, v3, -0x1

    .line 158
    .line 159
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    or-int/2addr v0, v5

    .line 168
    return v0

    .line 169
    :cond_c
    return v3

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static g(Lvz/x;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/high16 v0, 0x2000000

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    or-int/2addr p0, v0

    .line 8
    return p0
.end method

.method private h(Lvz/x;I)I
    .locals 8

    .line 1
    const v0, 0x1000006

    .line 2
    .line 3
    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    const/high16 v1, -0x1000000

    .line 7
    .line 8
    and-int/2addr v1, p2

    .line 9
    const/high16 v2, 0x3000000

    .line 10
    .line 11
    if-ne v1, v2, :cond_5

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lvz/n;->h:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_5

    .line 17
    .line 18
    iget-object v2, p0, Lvz/n;->i:[I

    .line 19
    .line 20
    aget v2, v2, v1

    .line 21
    .line 22
    const/high16 v3, -0x10000000

    .line 23
    .line 24
    and-int/2addr v3, v2

    .line 25
    const/high16 v4, 0xf000000

    .line 26
    .line 27
    and-int/2addr v4, v2

    .line 28
    const v5, 0xfffff

    .line 29
    .line 30
    .line 31
    and-int v6, v2, v5

    .line 32
    .line 33
    const/high16 v7, 0x4000000

    .line 34
    .line 35
    if-ne v4, v7, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lvz/n;->b:[I

    .line 38
    .line 39
    aget v2, v2, v6

    .line 40
    .line 41
    :goto_1
    add-int/2addr v2, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/high16 v7, 0x5000000

    .line 44
    .line 45
    if-ne v4, v7, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lvz/n;->c:[I

    .line 48
    .line 49
    array-length v4, v2

    .line 50
    sub-int/2addr v4, v6

    .line 51
    aget v2, v2, v4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_2
    if-ne p2, v2, :cond_4

    .line 55
    .line 56
    const/high16 v1, 0x2000000

    .line 57
    .line 58
    if-ne p2, v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lvz/x;->O()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lvz/x;->I(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    :goto_3
    or-int/2addr p1, v1

    .line 69
    return p1

    .line 70
    :cond_3
    and-int/2addr p2, v5

    .line 71
    invoke-virtual {p1, p2}, Lvz/x;->T(I)Lvz/w;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object p2, p2, Lvz/w;->e:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lvz/x;->I(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    return p2
.end method

.method private j(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lvz/n;->d:[I

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    if-lt p1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget v2, v0, p1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    or-int v2, p1, v1

    .line 16
    .line 17
    aput v2, v0, p1

    .line 18
    .line 19
    :cond_1
    return v2

    .line 20
    :cond_2
    :goto_0
    or-int/2addr p1, v1

    .line 21
    return p1
.end method

.method private static k(Lvz/x;I[II)Z
    .locals 11

    .line 1
    aget v0, p2, p3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const v2, 0xfffffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v2, p1

    .line 11
    const v3, 0x1000005

    .line 12
    .line 13
    .line 14
    if-ne v2, v3, :cond_2

    .line 15
    .line 16
    if-ne v0, v3, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    move p1, v3

    .line 20
    :cond_2
    const/4 v2, 0x1

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    aput p1, p2, p3

    .line 24
    .line 25
    return v2

    .line 26
    :cond_3
    const/high16 v4, -0x10000000

    .line 27
    .line 28
    and-int v5, v0, v4

    .line 29
    .line 30
    const/high16 v6, 0x1000000

    .line 31
    .line 32
    const/high16 v7, 0xf000000

    .line 33
    .line 34
    const/high16 v8, 0x2000000

    .line 35
    .line 36
    if-nez v5, :cond_7

    .line 37
    .line 38
    and-int v9, v0, v7

    .line 39
    .line 40
    if-ne v9, v8, :cond_4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    if-ne v0, v3, :cond_e

    .line 44
    .line 45
    and-int p0, p1, v4

    .line 46
    .line 47
    if-nez p0, :cond_6

    .line 48
    .line 49
    and-int p0, p1, v7

    .line 50
    .line 51
    if-ne p0, v8, :cond_5

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    move p1, v6

    .line 55
    :cond_6
    :goto_0
    move v6, p1

    .line 56
    goto :goto_3

    .line 57
    :cond_7
    :goto_1
    if-ne p1, v3, :cond_8

    .line 58
    .line 59
    return v1

    .line 60
    :cond_8
    const/high16 v3, -0x1000000

    .line 61
    .line 62
    and-int v9, p1, v3

    .line 63
    .line 64
    and-int/2addr v3, v0

    .line 65
    const-string v10, "java/lang/Object"

    .line 66
    .line 67
    if-ne v9, v3, :cond_a

    .line 68
    .line 69
    and-int v3, v0, v7

    .line 70
    .line 71
    if-ne v3, v8, :cond_9

    .line 72
    .line 73
    and-int v3, p1, v4

    .line 74
    .line 75
    or-int/2addr v3, v8

    .line 76
    const v4, 0xfffff

    .line 77
    .line 78
    .line 79
    and-int/2addr p1, v4

    .line 80
    and-int/2addr v4, v0

    .line 81
    invoke-virtual {p0, p1, v4}, Lvz/x;->H(II)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    or-int v6, v3, p0

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_9
    and-int/2addr p1, v4

    .line 89
    add-int/2addr p1, v4

    .line 90
    or-int/2addr p1, v8

    .line 91
    invoke-virtual {p0, v10}, Lvz/x;->I(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    :goto_2
    or-int v6, p1, p0

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_a
    and-int v3, p1, v4

    .line 99
    .line 100
    if-nez v3, :cond_b

    .line 101
    .line 102
    and-int v9, p1, v7

    .line 103
    .line 104
    if-ne v9, v8, :cond_e

    .line 105
    .line 106
    :cond_b
    if-eqz v3, :cond_c

    .line 107
    .line 108
    and-int/2addr p1, v7

    .line 109
    if-eq p1, v8, :cond_c

    .line 110
    .line 111
    add-int/2addr v3, v4

    .line 112
    :cond_c
    if-eqz v5, :cond_d

    .line 113
    .line 114
    and-int p1, v0, v7

    .line 115
    .line 116
    if-eq p1, v8, :cond_d

    .line 117
    .line 118
    add-int/2addr v5, v4

    .line 119
    :cond_d
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    or-int/2addr p1, v8

    .line 124
    invoke-virtual {p0, v10}, Lvz/x;->I(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    goto :goto_2

    .line 129
    :cond_e
    :goto_3
    if-eq v6, v0, :cond_f

    .line 130
    .line 131
    aput v6, p2, p3

    .line 132
    .line 133
    return v2

    .line 134
    :cond_f
    return v1
.end method

.method private m()I
    .locals 2

    .line 1
    iget-short v0, p0, Lvz/n;->g:S

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lvz/n;->e:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    int-to-short v0, v0

    .line 10
    iput-short v0, p0, Lvz/n;->g:S

    .line 11
    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-short v0, p0, Lvz/n;->f:S

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    int-to-short v0, v0

    .line 20
    iput-short v0, p0, Lvz/n;->f:S

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    const/high16 v1, 0x5000000

    .line 24
    .line 25
    or-int/2addr v0, v1

    .line 26
    return v0
.end method

.method private n(I)V
    .locals 2

    .line 1
    iget-short v0, p0, Lvz/n;->g:S

    .line 2
    .line 3
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    int-to-short p1, v0

    .line 7
    iput-short p1, p0, Lvz/n;->g:S

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-short v1, p0, Lvz/n;->f:S

    .line 11
    .line 12
    sub-int/2addr p1, v0

    .line 13
    sub-int/2addr v1, p1

    .line 14
    int-to-short p1, v1

    .line 15
    iput-short p1, p0, Lvz/n;->f:S

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-short p1, p0, Lvz/n;->g:S

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lvz/y;->c(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    shr-int/2addr p1, v3

    .line 17
    sub-int/2addr p1, v2

    .line 18
    invoke-direct {p0, p1}, Lvz/n;->n(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/16 p1, 0x4a

    .line 23
    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    const/16 p1, 0x44

    .line 27
    .line 28
    if-ne v0, p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0, v2}, Lvz/n;->n(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lvz/n;->n(I)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method private p(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvz/n;->e:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lvz/n;->e:[I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lvz/n;->e:[I

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    iget-short v1, p0, Lvz/n;->g:S

    .line 15
    .line 16
    if-lt v1, v0, :cond_1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    mul-int/lit8 v2, v0, 0x2

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [I

    .line 27
    .line 28
    iget-object v2, p0, Lvz/n;->e:[I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lvz/n;->e:[I

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lvz/n;->e:[I

    .line 37
    .line 38
    iget-short v1, p0, Lvz/n;->g:S

    .line 39
    .line 40
    add-int/lit8 v2, v1, 0x1

    .line 41
    .line 42
    int-to-short v2, v2

    .line 43
    iput-short v2, p0, Lvz/n;->g:S

    .line 44
    .line 45
    aput p1, v0, v1

    .line 46
    .line 47
    iget-short p1, p0, Lvz/n;->f:S

    .line 48
    .line 49
    add-int/2addr p1, v2

    .line 50
    int-to-short p1, p1

    .line 51
    iget-object v0, p0, Lvz/n;->a:Lvz/q;

    .line 52
    .line 53
    iget-short v1, v0, Lvz/q;->h:S

    .line 54
    .line 55
    if-le p1, v1, :cond_2

    .line 56
    .line 57
    iput-short p1, v0, Lvz/q;->h:S

    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method private q(Lvz/x;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x28

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x29

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    :cond_0
    invoke-static {p1, p2, v0}, Lvz/n;->f(Lvz/x;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lvz/n;->p(I)V

    .line 25
    .line 26
    .line 27
    const p2, 0x1000004

    .line 28
    .line 29
    .line 30
    if-eq p1, p2, :cond_1

    .line 31
    .line 32
    const p2, 0x1000003

    .line 33
    .line 34
    .line 35
    if-ne p1, p2, :cond_2

    .line 36
    .line 37
    :cond_1
    const/high16 p1, 0x1000000

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lvz/n;->p(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method static r(Lvz/x;ILvz/d;)V
    .locals 7

    .line 1
    const/high16 v0, -0x10000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    shr-int/lit8 v0, v0, 0x1c

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    const/high16 v2, 0x2000000

    .line 8
    .line 9
    const/high16 v3, 0xf000000

    .line 10
    .line 11
    const v4, 0xfffff

    .line 12
    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    and-int v0, p1, v4

    .line 17
    .line 18
    and-int/2addr p1, v3

    .line 19
    const/high16 v3, 0x1000000

    .line 20
    .line 21
    if-eq p1, v3, :cond_2

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    const/high16 v1, 0x3000000

    .line 26
    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    const/16 p1, 0x8

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lvz/d;->g(I)Lvz/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, v0}, Lvz/x;->T(I)Lvz/w;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-wide v0, p0, Lvz/w;->f:J

    .line 40
    .line 41
    long-to-int p0, v0

    .line 42
    invoke-virtual {p1, p0}, Lvz/d;->k(I)Lvz/d;

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    invoke-virtual {p2, v1}, Lvz/d;->g(I)Lvz/d;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, v0}, Lvz/x;->T(I)Lvz/w;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iget-object p2, p2, Lvz/w;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lvz/x;->e(Ljava/lang/String;)Lvz/w;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget p0, p0, Lvz/w;->a:I

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lvz/d;->k(I)Lvz/d;

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    invoke-virtual {p2, v0}, Lvz/d;->g(I)Lvz/d;

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_0
    add-int/lit8 v6, v0, -0x1

    .line 85
    .line 86
    if-lez v0, :cond_4

    .line 87
    .line 88
    const/16 v0, 0x5b

    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move v0, v6

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    and-int v0, p1, v3

    .line 96
    .line 97
    if-ne v0, v2, :cond_5

    .line 98
    .line 99
    const/16 v0, 0x4c

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    and-int/2addr p1, v4

    .line 105
    invoke-virtual {p0, p1}, Lvz/x;->T(I)Lvz/w;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p1, p1, Lvz/w;->e:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 p1, 0x3b

    .line 115
    .line 116
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    and-int/2addr p1, v4

    .line 121
    const/4 v0, 0x1

    .line 122
    if-eq p1, v0, :cond_9

    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    if-eq p1, v0, :cond_8

    .line 126
    .line 127
    const/4 v0, 0x3

    .line 128
    if-eq p1, v0, :cond_7

    .line 129
    .line 130
    const/4 v0, 0x4

    .line 131
    if-eq p1, v0, :cond_6

    .line 132
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/lang/AssertionError;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :pswitch_0
    const/16 p1, 0x53

    .line 143
    .line 144
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_1
    const/16 p1, 0x43

    .line 149
    .line 150
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :pswitch_2
    const/16 p1, 0x42

    .line 155
    .line 156
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_3
    const/16 p1, 0x5a

    .line 161
    .line 162
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    const/16 p1, 0x4a

    .line 167
    .line 168
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    const/16 p1, 0x44

    .line 173
    .line 174
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    const/16 p1, 0x46

    .line 179
    .line 180
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_9
    const/16 p1, 0x49

    .line 185
    .line 186
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :goto_1
    invoke-virtual {p2, v1}, Lvz/d;->g(I)Lvz/d;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p0, p2}, Lvz/x;->e(Ljava/lang/String;)Lvz/w;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    iget p0, p0, Lvz/w;->a:I

    .line 202
    .line 203
    invoke-virtual {p1, p0}, Lvz/d;->k(I)Lvz/d;

    .line 204
    .line 205
    .line 206
    :goto_2
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lvz/n;->d:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lvz/n;->d:[I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lvz/n;->d:[I

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    if-lt p1, v0, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    mul-int/lit8 v2, v0, 0x2

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    new-array v1, v1, [I

    .line 25
    .line 26
    iget-object v2, p0, Lvz/n;->d:[I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lvz/n;->d:[I

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lvz/n;->d:[I

    .line 35
    .line 36
    aput p2, v0, p1

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method final a(Lvz/s;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lvz/n;->b:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    move v3, v2

    .line 6
    move v4, v3

    .line 7
    :goto_0
    array-length v5, v0

    .line 8
    const/4 v6, 0x2

    .line 9
    const v7, 0x1000003

    .line 10
    .line 11
    .line 12
    const v8, 0x1000004

    .line 13
    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-ge v2, v5, :cond_3

    .line 17
    .line 18
    aget v5, v0, v2

    .line 19
    .line 20
    if-eq v5, v8, :cond_1

    .line 21
    .line 22
    if-ne v5, v7, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v6, v9

    .line 26
    :cond_1
    :goto_1
    add-int/2addr v2, v6

    .line 27
    const/high16 v6, 0x1000000

    .line 28
    .line 29
    if-ne v5, v6, :cond_2

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    add-int/2addr v3, v4

    .line 37
    move v4, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget-object v2, p0, Lvz/n;->c:[I

    .line 40
    .line 41
    move v4, v1

    .line 42
    move v5, v4

    .line 43
    :goto_2
    array-length v10, v2

    .line 44
    if-ge v4, v10, :cond_6

    .line 45
    .line 46
    aget v10, v2, v4

    .line 47
    .line 48
    if-eq v10, v8, :cond_5

    .line 49
    .line 50
    if-ne v10, v7, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    move v10, v9

    .line 54
    goto :goto_4

    .line 55
    :cond_5
    :goto_3
    move v10, v6

    .line 56
    :goto_4
    add-int/2addr v4, v10

    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_6
    iget-object v4, p0, Lvz/n;->a:Lvz/q;

    .line 61
    .line 62
    iget v4, v4, Lvz/q;->d:I

    .line 63
    .line 64
    invoke-virtual {p1, v4, v3, v5}, Lvz/s;->V(III)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    move v10, v1

    .line 69
    :goto_5
    add-int/lit8 v11, v3, -0x1

    .line 70
    .line 71
    if-lez v3, :cond_9

    .line 72
    .line 73
    aget v3, v0, v10

    .line 74
    .line 75
    if-eq v3, v8, :cond_8

    .line 76
    .line 77
    if-ne v3, v7, :cond_7

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_7
    move v12, v9

    .line 81
    goto :goto_7

    .line 82
    :cond_8
    :goto_6
    move v12, v6

    .line 83
    :goto_7
    add-int/2addr v10, v12

    .line 84
    add-int/lit8 v12, v4, 0x1

    .line 85
    .line 86
    invoke-virtual {p1, v4, v3}, Lvz/s;->T(II)V

    .line 87
    .line 88
    .line 89
    move v3, v11

    .line 90
    move v4, v12

    .line 91
    goto :goto_5

    .line 92
    :cond_9
    :goto_8
    add-int/lit8 v0, v5, -0x1

    .line 93
    .line 94
    if-lez v5, :cond_c

    .line 95
    .line 96
    aget v3, v2, v1

    .line 97
    .line 98
    if-eq v3, v8, :cond_b

    .line 99
    .line 100
    if-ne v3, v7, :cond_a

    .line 101
    .line 102
    goto :goto_9

    .line 103
    :cond_a
    move v5, v9

    .line 104
    goto :goto_a

    .line 105
    :cond_b
    :goto_9
    move v5, v6

    .line 106
    :goto_a
    add-int/2addr v1, v5

    .line 107
    add-int/lit8 v5, v4, 0x1

    .line 108
    .line 109
    invoke-virtual {p1, v4, v3}, Lvz/s;->T(II)V

    .line 110
    .line 111
    .line 112
    move v4, v5

    .line 113
    move v5, v0

    .line 114
    goto :goto_8

    .line 115
    :cond_c
    invoke-virtual {p1}, Lvz/s;->U()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method final c(Lvz/n;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lvz/n;->b:[I

    .line 2
    .line 3
    iput-object v0, p0, Lvz/n;->b:[I

    .line 4
    .line 5
    iget-object v0, p1, Lvz/n;->c:[I

    .line 6
    .line 7
    iput-object v0, p0, Lvz/n;->c:[I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-short v0, p0, Lvz/n;->f:S

    .line 11
    .line 12
    iget-object v0, p1, Lvz/n;->d:[I

    .line 13
    .line 14
    iput-object v0, p0, Lvz/n;->d:[I

    .line 15
    .line 16
    iget-object v0, p1, Lvz/n;->e:[I

    .line 17
    .line 18
    iput-object v0, p0, Lvz/n;->e:[I

    .line 19
    .line 20
    iget-short v0, p1, Lvz/n;->g:S

    .line 21
    .line 22
    iput-short v0, p0, Lvz/n;->g:S

    .line 23
    .line 24
    iget v0, p1, Lvz/n;->h:I

    .line 25
    .line 26
    iput v0, p0, Lvz/n;->h:I

    .line 27
    .line 28
    iget-object p1, p1, Lvz/n;->i:[I

    .line 29
    .line 30
    iput-object p1, p0, Lvz/n;->i:[I

    .line 31
    .line 32
    return-void
.end method

.method d(IILvz/w;Lvz/x;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const v6, 0x1000002

    .line 12
    .line 13
    .line 14
    const/high16 v7, 0x2000000

    .line 15
    .line 16
    const v8, 0x1000001

    .line 17
    .line 18
    .line 19
    const v9, 0x1000003

    .line 20
    .line 21
    .line 22
    const v10, 0x1000004

    .line 23
    .line 24
    .line 25
    const/high16 v11, 0x1000000

    .line 26
    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    packed-switch v1, :pswitch_data_1

    .line 31
    .line 32
    .line 33
    const/high16 v13, 0x5000000

    .line 34
    .line 35
    const/high16 v14, 0x4000000

    .line 36
    .line 37
    const/high16 v15, 0xf000000

    .line 38
    .line 39
    const/4 v12, 0x1

    .line 40
    packed-switch v1, :pswitch_data_2

    .line 41
    .line 42
    .line 43
    const/4 v13, 0x3

    .line 44
    const/16 v14, 0x5b

    .line 45
    .line 46
    const/4 v15, 0x0

    .line 47
    const/4 v5, 0x4

    .line 48
    packed-switch v1, :pswitch_data_3

    .line 49
    .line 50
    .line 51
    packed-switch v1, :pswitch_data_4

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :pswitch_0
    invoke-direct {v0, v2}, Lvz/n;->n(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :pswitch_1
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-ne v2, v14, :cond_0

    .line 80
    .line 81
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_0
    invoke-virtual {v4, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    or-int/2addr v1, v7

    .line 91
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :pswitch_2
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-ne v2, v14, :cond_1

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :cond_1
    const/high16 v2, 0x12000000

    .line 128
    .line 129
    invoke-virtual {v4, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    or-int/2addr v1, v2

    .line 134
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_7

    .line 138
    .line 139
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 140
    .line 141
    .line 142
    packed-switch v2, :pswitch_data_5

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 148
    .line 149
    .line 150
    throw v1

    .line 151
    :pswitch_4
    const v1, 0x11000004

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_7

    .line 158
    .line 159
    :pswitch_5
    const v1, 0x11000001

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :pswitch_6
    const v1, 0x1100000c

    .line 168
    .line 169
    .line 170
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_7

    .line 174
    .line 175
    :pswitch_7
    const v1, 0x1100000a

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_7

    .line 182
    .line 183
    :pswitch_8
    const v1, 0x11000003

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_7

    .line 190
    .line 191
    :pswitch_9
    const v1, 0x11000002

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :pswitch_a
    const v1, 0x1100000b

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :pswitch_b
    const v1, 0x11000009

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :pswitch_c
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v4, v1, v2}, Lvz/x;->K(Ljava/lang/String;I)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const/high16 v2, 0x3000000

    .line 222
    .line 223
    or-int/2addr v1, v2

    .line 224
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :pswitch_d
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {v0, v1}, Lvz/n;->o(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 235
    .line 236
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_7

    .line 240
    .line 241
    :pswitch_e
    iget-object v2, v3, Lvz/w;->e:Ljava/lang/String;

    .line 242
    .line 243
    invoke-direct {v0, v2}, Lvz/n;->o(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const/16 v2, 0xb8

    .line 247
    .line 248
    if-eq v1, v2, :cond_2

    .line 249
    .line 250
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    const/16 v5, 0xb7

    .line 255
    .line 256
    if-ne v1, v5, :cond_2

    .line 257
    .line 258
    iget-object v1, v3, Lvz/w;->d:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    const/16 v5, 0x3c

    .line 265
    .line 266
    if-ne v1, v5, :cond_2

    .line 267
    .line 268
    invoke-direct {v0, v2}, Lvz/n;->b(I)V

    .line 269
    .line 270
    .line 271
    :cond_2
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 272
    .line 273
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_7

    .line 277
    .line 278
    :pswitch_f
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 279
    .line 280
    invoke-direct {v0, v1}, Lvz/n;->o(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 284
    .line 285
    .line 286
    goto/16 :goto_7

    .line 287
    .line 288
    :pswitch_10
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 289
    .line 290
    .line 291
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 292
    .line 293
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_7

    .line 297
    .line 298
    :pswitch_11
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 299
    .line 300
    invoke-direct {v0, v1}, Lvz/n;->o(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_7

    .line 304
    .line 305
    :pswitch_12
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 306
    .line 307
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_7

    .line 311
    .line 312
    :pswitch_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 313
    .line 314
    const-string v2, "JSR/RET are not supported with computeFrames option"

    .line 315
    .line 316
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v1

    .line 320
    :pswitch_14
    invoke-direct {v0, v5}, Lvz/n;->n(I)V

    .line 321
    .line 322
    .line 323
    invoke-direct {v0, v8}, Lvz/n;->p(I)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :pswitch_15
    const/4 v1, 0x2

    .line 329
    goto/16 :goto_5

    .line 330
    .line 331
    :pswitch_16
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v8}, Lvz/n;->p(I)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_7

    .line 338
    .line 339
    :pswitch_17
    const/4 v1, 0x2

    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :pswitch_18
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 343
    .line 344
    .line 345
    invoke-direct {v0, v9}, Lvz/n;->p(I)V

    .line 346
    .line 347
    .line 348
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :pswitch_19
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 354
    .line 355
    .line 356
    invoke-direct {v0, v6}, Lvz/n;->p(I)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :pswitch_1a
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v10}, Lvz/n;->p(I)V

    .line 365
    .line 366
    .line 367
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_7

    .line 371
    .line 372
    :pswitch_1b
    invoke-direct {v0, v2, v8}, Lvz/n;->u(II)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_7

    .line 376
    .line 377
    :pswitch_1c
    invoke-direct {v0, v13}, Lvz/n;->n(I)V

    .line 378
    .line 379
    .line 380
    invoke-direct {v0, v10}, Lvz/n;->p(I)V

    .line 381
    .line 382
    .line 383
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_7

    .line 387
    .line 388
    :pswitch_1d
    invoke-direct {v0, v5}, Lvz/n;->n(I)V

    .line 389
    .line 390
    .line 391
    invoke-direct {v0, v9}, Lvz/n;->p(I)V

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_7

    .line 398
    .line 399
    :pswitch_1e
    const/4 v1, 0x2

    .line 400
    goto/16 :goto_4

    .line 401
    .line 402
    :pswitch_1f
    invoke-direct {v0, v5}, Lvz/n;->n(I)V

    .line 403
    .line 404
    .line 405
    invoke-direct {v0, v10}, Lvz/n;->p(I)V

    .line 406
    .line 407
    .line 408
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_7

    .line 412
    .line 413
    :pswitch_20
    const/4 v1, 0x2

    .line 414
    goto/16 :goto_6

    .line 415
    .line 416
    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 425
    .line 426
    .line 427
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_7

    .line 431
    .line 432
    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 449
    .line 450
    .line 451
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 452
    .line 453
    .line 454
    invoke-direct {v0, v4}, Lvz/n;->p(I)V

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v3}, Lvz/n;->p(I)V

    .line 458
    .line 459
    .line 460
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 461
    .line 462
    .line 463
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_7

    .line 467
    .line 468
    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 481
    .line 482
    .line 483
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 484
    .line 485
    .line 486
    invoke-direct {v0, v3}, Lvz/n;->p(I)V

    .line 487
    .line 488
    .line 489
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 490
    .line 491
    .line 492
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_7

    .line 496
    .line 497
    :pswitch_24
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 506
    .line 507
    .line 508
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 509
    .line 510
    .line 511
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 512
    .line 513
    .line 514
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_7

    .line 518
    .line 519
    :pswitch_25
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 532
    .line 533
    .line 534
    invoke-direct {v0, v3}, Lvz/n;->p(I)V

    .line 535
    .line 536
    .line 537
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 538
    .line 539
    .line 540
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_7

    .line 544
    .line 545
    :pswitch_26
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 554
    .line 555
    .line 556
    invoke-direct {v0, v2}, Lvz/n;->p(I)V

    .line 557
    .line 558
    .line 559
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_7

    .line 563
    .line 564
    :pswitch_27
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 569
    .line 570
    .line 571
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_7

    .line 575
    .line 576
    :pswitch_28
    const/4 v1, 0x2

    .line 577
    invoke-direct {v0, v1}, Lvz/n;->n(I)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_7

    .line 581
    .line 582
    :pswitch_29
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_7

    .line 586
    .line 587
    :pswitch_2a
    invoke-direct {v0, v5}, Lvz/n;->n(I)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_7

    .line 591
    .line 592
    :pswitch_2b
    invoke-direct {v0, v13}, Lvz/n;->n(I)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_7

    .line 596
    .line 597
    :pswitch_2c
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 598
    .line 599
    .line 600
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    invoke-direct {v0, v2, v1}, Lvz/n;->u(II)V

    .line 605
    .line 606
    .line 607
    add-int/lit8 v1, v2, 0x1

    .line 608
    .line 609
    invoke-direct {v0, v1, v11}, Lvz/n;->u(II)V

    .line 610
    .line 611
    .line 612
    if-lez v2, :cond_a

    .line 613
    .line 614
    add-int/lit8 v1, v2, -0x1

    .line 615
    .line 616
    invoke-direct {v0, v1}, Lvz/n;->j(I)I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eq v2, v10, :cond_5

    .line 621
    .line 622
    if-ne v2, v9, :cond_3

    .line 623
    .line 624
    goto :goto_0

    .line 625
    :cond_3
    and-int v3, v2, v15

    .line 626
    .line 627
    if-eq v3, v14, :cond_4

    .line 628
    .line 629
    if-ne v3, v13, :cond_a

    .line 630
    .line 631
    :cond_4
    const/high16 v3, 0x100000

    .line 632
    .line 633
    or-int/2addr v2, v3

    .line 634
    invoke-direct {v0, v1, v2}, Lvz/n;->u(II)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_7

    .line 638
    .line 639
    :cond_5
    :goto_0
    invoke-direct {v0, v1, v11}, Lvz/n;->u(II)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_7

    .line 643
    .line 644
    :pswitch_2d
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    invoke-direct {v0, v2, v1}, Lvz/n;->u(II)V

    .line 649
    .line 650
    .line 651
    if-lez v2, :cond_a

    .line 652
    .line 653
    add-int/lit8 v1, v2, -0x1

    .line 654
    .line 655
    invoke-direct {v0, v1}, Lvz/n;->j(I)I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-eq v2, v10, :cond_8

    .line 660
    .line 661
    if-ne v2, v9, :cond_6

    .line 662
    .line 663
    goto :goto_1

    .line 664
    :cond_6
    and-int v3, v2, v15

    .line 665
    .line 666
    if-eq v3, v14, :cond_7

    .line 667
    .line 668
    if-ne v3, v13, :cond_a

    .line 669
    .line 670
    :cond_7
    const/high16 v3, 0x100000

    .line 671
    .line 672
    or-int/2addr v2, v3

    .line 673
    invoke-direct {v0, v1, v2}, Lvz/n;->u(II)V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_7

    .line 677
    .line 678
    :cond_8
    :goto_1
    invoke-direct {v0, v1, v11}, Lvz/n;->u(II)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_7

    .line 682
    .line 683
    :pswitch_2e
    invoke-direct {v0, v12}, Lvz/n;->n(I)V

    .line 684
    .line 685
    .line 686
    invoke-direct/range {p0 .. p0}, Lvz/n;->m()I

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    const v2, 0x1000005

    .line 691
    .line 692
    .line 693
    if-ne v1, v2, :cond_9

    .line 694
    .line 695
    goto :goto_2

    .line 696
    :cond_9
    const/high16 v2, -0x10000000

    .line 697
    .line 698
    add-int/2addr v1, v2

    .line 699
    :goto_2
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_7

    .line 703
    .line 704
    :goto_3
    invoke-direct {v0, v1}, Lvz/n;->n(I)V

    .line 705
    .line 706
    .line 707
    invoke-direct {v0, v9}, Lvz/n;->p(I)V

    .line 708
    .line 709
    .line 710
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_7

    .line 714
    .line 715
    :goto_4
    invoke-direct {v0, v1}, Lvz/n;->n(I)V

    .line 716
    .line 717
    .line 718
    invoke-direct {v0, v6}, Lvz/n;->p(I)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_7

    .line 722
    .line 723
    :goto_5
    invoke-direct {v0, v1}, Lvz/n;->n(I)V

    .line 724
    .line 725
    .line 726
    invoke-direct {v0, v10}, Lvz/n;->p(I)V

    .line 727
    .line 728
    .line 729
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_7

    .line 733
    .line 734
    :goto_6
    invoke-direct {v0, v1}, Lvz/n;->n(I)V

    .line 735
    .line 736
    .line 737
    invoke-direct {v0, v8}, Lvz/n;->p(I)V

    .line 738
    .line 739
    .line 740
    goto/16 :goto_7

    .line 741
    .line 742
    :pswitch_2f
    invoke-direct {v0, v2}, Lvz/n;->j(I)I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 747
    .line 748
    .line 749
    goto/16 :goto_7

    .line 750
    .line 751
    :pswitch_30
    iget v1, v3, Lvz/w;->b:I

    .line 752
    .line 753
    packed-switch v1, :pswitch_data_6

    .line 754
    .line 755
    .line 756
    packed-switch v1, :pswitch_data_7

    .line 757
    .line 758
    .line 759
    new-instance v1, Ljava/lang/AssertionError;

    .line 760
    .line 761
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .line 762
    .line 763
    .line 764
    throw v1

    .line 765
    :pswitch_31
    iget-object v1, v3, Lvz/w;->e:Ljava/lang/String;

    .line 766
    .line 767
    invoke-direct {v0, v4, v1}, Lvz/n;->q(Lvz/x;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto :goto_7

    .line 771
    :pswitch_32
    const-string v1, "java/lang/invoke/MethodType"

    .line 772
    .line 773
    invoke-virtual {v4, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    or-int/2addr v1, v7

    .line 778
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 779
    .line 780
    .line 781
    goto :goto_7

    .line 782
    :pswitch_33
    const-string v1, "java/lang/invoke/MethodHandle"

    .line 783
    .line 784
    invoke-virtual {v4, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    or-int/2addr v1, v7

    .line 789
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 790
    .line 791
    .line 792
    goto :goto_7

    .line 793
    :pswitch_34
    const-string v1, "java/lang/String"

    .line 794
    .line 795
    invoke-virtual {v4, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    or-int/2addr v1, v7

    .line 800
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 801
    .line 802
    .line 803
    goto :goto_7

    .line 804
    :pswitch_35
    const-string v1, "java/lang/Class"

    .line 805
    .line 806
    invoke-virtual {v4, v1}, Lvz/x;->I(Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    or-int/2addr v1, v7

    .line 811
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 812
    .line 813
    .line 814
    goto :goto_7

    .line 815
    :pswitch_36
    invoke-direct {v0, v9}, Lvz/n;->p(I)V

    .line 816
    .line 817
    .line 818
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 819
    .line 820
    .line 821
    goto :goto_7

    .line 822
    :pswitch_37
    invoke-direct {v0, v10}, Lvz/n;->p(I)V

    .line 823
    .line 824
    .line 825
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 826
    .line 827
    .line 828
    goto :goto_7

    .line 829
    :pswitch_38
    invoke-direct {v0, v6}, Lvz/n;->p(I)V

    .line 830
    .line 831
    .line 832
    goto :goto_7

    .line 833
    :pswitch_39
    invoke-direct {v0, v8}, Lvz/n;->p(I)V

    .line 834
    .line 835
    .line 836
    goto :goto_7

    .line 837
    :pswitch_3a
    invoke-direct {v0, v9}, Lvz/n;->p(I)V

    .line 838
    .line 839
    .line 840
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 841
    .line 842
    .line 843
    goto :goto_7

    .line 844
    :pswitch_3b
    invoke-direct {v0, v6}, Lvz/n;->p(I)V

    .line 845
    .line 846
    .line 847
    goto :goto_7

    .line 848
    :pswitch_3c
    invoke-direct {v0, v10}, Lvz/n;->p(I)V

    .line 849
    .line 850
    .line 851
    invoke-direct {v0, v11}, Lvz/n;->p(I)V

    .line 852
    .line 853
    .line 854
    goto :goto_7

    .line 855
    :pswitch_3d
    invoke-direct {v0, v8}, Lvz/n;->p(I)V

    .line 856
    .line 857
    .line 858
    goto :goto_7

    .line 859
    :pswitch_3e
    const v1, 0x1000005

    .line 860
    .line 861
    .line 862
    invoke-direct {v0, v1}, Lvz/n;->p(I)V

    .line 863
    .line 864
    .line 865
    :cond_a
    :goto_7
    :pswitch_3f
    return-void

    .line 866
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3d
        :pswitch_3d
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_17
        :pswitch_2e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_20
        :pswitch_1e
        :pswitch_17
        :pswitch_16
        :pswitch_1a
        :pswitch_18
        :pswitch_20
        :pswitch_15
        :pswitch_1e
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_14
        :pswitch_20
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3f
        :pswitch_13
        :pswitch_13
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_3f
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_16
        :pswitch_29
        :pswitch_1
        :pswitch_16
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc5
        :pswitch_0
        :pswitch_29
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lvz/n;->c:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method final l(Lvz/x;Lvz/n;I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lvz/n;->b:[I

    .line 10
    .line 11
    array-length v4, v4

    .line 12
    iget-object v5, v0, Lvz/n;->c:[I

    .line 13
    .line 14
    array-length v5, v5

    .line 15
    iget-object v6, v2, Lvz/n;->b:[I

    .line 16
    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    new-array v6, v4, [I

    .line 20
    .line 21
    iput-object v6, v2, Lvz/n;->b:[I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :goto_0
    const/4 v9, 0x0

    .line 27
    :goto_1
    const/high16 v10, 0x5000000

    .line 28
    .line 29
    const/high16 v11, 0x4000000

    .line 30
    .line 31
    const/high16 v12, 0xf000000

    .line 32
    .line 33
    const/high16 v13, -0x10000000

    .line 34
    .line 35
    const v15, 0x1000003

    .line 36
    .line 37
    .line 38
    const v14, 0x1000004

    .line 39
    .line 40
    .line 41
    const/high16 v16, 0x100000

    .line 42
    .line 43
    const v17, 0xfffff

    .line 44
    .line 45
    .line 46
    if-ge v9, v4, :cond_8

    .line 47
    .line 48
    iget-object v8, v0, Lvz/n;->d:[I

    .line 49
    .line 50
    if-eqz v8, :cond_6

    .line 51
    .line 52
    array-length v7, v8

    .line 53
    if-ge v9, v7, :cond_6

    .line 54
    .line 55
    aget v7, v8, v9

    .line 56
    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    iget-object v7, v0, Lvz/n;->b:[I

    .line 60
    .line 61
    aget v14, v7, v9

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    and-int v8, v7, v13

    .line 65
    .line 66
    and-int/2addr v12, v7

    .line 67
    if-ne v12, v11, :cond_4

    .line 68
    .line 69
    iget-object v10, v0, Lvz/n;->b:[I

    .line 70
    .line 71
    and-int v11, v7, v17

    .line 72
    .line 73
    aget v10, v10, v11

    .line 74
    .line 75
    add-int/2addr v8, v10

    .line 76
    and-int v7, v7, v16

    .line 77
    .line 78
    if-eqz v7, :cond_3

    .line 79
    .line 80
    if-eq v8, v14, :cond_2

    .line 81
    .line 82
    if-ne v8, v15, :cond_3

    .line 83
    .line 84
    :cond_2
    :goto_2
    const/high16 v14, 0x1000000

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    move v14, v8

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    if-ne v12, v10, :cond_5

    .line 90
    .line 91
    iget-object v10, v0, Lvz/n;->c:[I

    .line 92
    .line 93
    and-int v11, v7, v17

    .line 94
    .line 95
    sub-int v11, v5, v11

    .line 96
    .line 97
    aget v10, v10, v11

    .line 98
    .line 99
    add-int/2addr v8, v10

    .line 100
    and-int v7, v7, v16

    .line 101
    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    if-eq v8, v14, :cond_2

    .line 105
    .line 106
    if-ne v8, v15, :cond_3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    move v14, v7

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    iget-object v7, v0, Lvz/n;->b:[I

    .line 112
    .line 113
    aget v14, v7, v9

    .line 114
    .line 115
    :goto_3
    iget-object v7, v0, Lvz/n;->i:[I

    .line 116
    .line 117
    if-eqz v7, :cond_7

    .line 118
    .line 119
    invoke-direct {v0, v1, v14}, Lvz/n;->h(Lvz/x;I)I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    :cond_7
    iget-object v7, v2, Lvz/n;->b:[I

    .line 124
    .line 125
    invoke-static {v1, v14, v7, v9}, Lvz/n;->k(Lvz/x;I[II)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    or-int/2addr v6, v7

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    if-lez v3, :cond_b

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    :goto_4
    if-ge v5, v4, :cond_9

    .line 137
    .line 138
    iget-object v7, v0, Lvz/n;->b:[I

    .line 139
    .line 140
    aget v7, v7, v5

    .line 141
    .line 142
    iget-object v8, v2, Lvz/n;->b:[I

    .line 143
    .line 144
    invoke-static {v1, v7, v8, v5}, Lvz/n;->k(Lvz/x;I[II)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    or-int/2addr v6, v7

    .line 149
    add-int/lit8 v5, v5, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_9
    iget-object v4, v2, Lvz/n;->c:[I

    .line 153
    .line 154
    if-nez v4, :cond_a

    .line 155
    .line 156
    const/4 v4, 0x1

    .line 157
    new-array v5, v4, [I

    .line 158
    .line 159
    iput-object v5, v2, Lvz/n;->c:[I

    .line 160
    .line 161
    move v7, v4

    .line 162
    goto :goto_5

    .line 163
    :cond_a
    move v7, v6

    .line 164
    :goto_5
    iget-object v2, v2, Lvz/n;->c:[I

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    invoke-static {v1, v3, v2, v8}, Lvz/n;->k(Lvz/x;I[II)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    or-int/2addr v1, v7

    .line 172
    return v1

    .line 173
    :cond_b
    const/4 v4, 0x1

    .line 174
    const/4 v8, 0x0

    .line 175
    iget-object v3, v0, Lvz/n;->c:[I

    .line 176
    .line 177
    array-length v3, v3

    .line 178
    iget-short v7, v0, Lvz/n;->f:S

    .line 179
    .line 180
    add-int/2addr v3, v7

    .line 181
    iget-object v7, v2, Lvz/n;->c:[I

    .line 182
    .line 183
    if-nez v7, :cond_c

    .line 184
    .line 185
    iget-short v6, v0, Lvz/n;->g:S

    .line 186
    .line 187
    add-int/2addr v6, v3

    .line 188
    new-array v6, v6, [I

    .line 189
    .line 190
    iput-object v6, v2, Lvz/n;->c:[I

    .line 191
    .line 192
    move v7, v4

    .line 193
    goto :goto_6

    .line 194
    :cond_c
    move v7, v6

    .line 195
    :goto_6
    move v4, v8

    .line 196
    :goto_7
    if-ge v4, v3, :cond_e

    .line 197
    .line 198
    iget-object v6, v0, Lvz/n;->c:[I

    .line 199
    .line 200
    aget v6, v6, v4

    .line 201
    .line 202
    iget-object v9, v0, Lvz/n;->i:[I

    .line 203
    .line 204
    if-eqz v9, :cond_d

    .line 205
    .line 206
    invoke-direct {v0, v1, v6}, Lvz/n;->h(Lvz/x;I)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    :cond_d
    iget-object v9, v2, Lvz/n;->c:[I

    .line 211
    .line 212
    invoke-static {v1, v6, v9, v4}, Lvz/n;->k(Lvz/x;I[II)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    or-int/2addr v7, v6

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_e
    :goto_8
    iget-short v4, v0, Lvz/n;->g:S

    .line 221
    .line 222
    if-ge v8, v4, :cond_14

    .line 223
    .line 224
    iget-object v4, v0, Lvz/n;->e:[I

    .line 225
    .line 226
    aget v4, v4, v8

    .line 227
    .line 228
    and-int v6, v4, v13

    .line 229
    .line 230
    and-int v9, v4, v12

    .line 231
    .line 232
    if-ne v9, v11, :cond_11

    .line 233
    .line 234
    iget-object v9, v0, Lvz/n;->b:[I

    .line 235
    .line 236
    and-int v18, v4, v17

    .line 237
    .line 238
    aget v9, v9, v18

    .line 239
    .line 240
    add-int/2addr v6, v9

    .line 241
    and-int v4, v4, v16

    .line 242
    .line 243
    if-eqz v4, :cond_10

    .line 244
    .line 245
    if-eq v6, v14, :cond_f

    .line 246
    .line 247
    if-ne v6, v15, :cond_10

    .line 248
    .line 249
    :cond_f
    :goto_9
    const/high16 v4, 0x1000000

    .line 250
    .line 251
    goto :goto_a

    .line 252
    :cond_10
    move v4, v6

    .line 253
    goto :goto_a

    .line 254
    :cond_11
    if-ne v9, v10, :cond_12

    .line 255
    .line 256
    iget-object v9, v0, Lvz/n;->c:[I

    .line 257
    .line 258
    and-int v18, v4, v17

    .line 259
    .line 260
    sub-int v18, v5, v18

    .line 261
    .line 262
    aget v9, v9, v18

    .line 263
    .line 264
    add-int/2addr v6, v9

    .line 265
    and-int v4, v4, v16

    .line 266
    .line 267
    if-eqz v4, :cond_10

    .line 268
    .line 269
    if-eq v6, v14, :cond_f

    .line 270
    .line 271
    if-ne v6, v15, :cond_10

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_12
    :goto_a
    iget-object v6, v0, Lvz/n;->i:[I

    .line 275
    .line 276
    if-eqz v6, :cond_13

    .line 277
    .line 278
    invoke-direct {v0, v1, v4}, Lvz/n;->h(Lvz/x;I)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    :cond_13
    iget-object v6, v2, Lvz/n;->c:[I

    .line 283
    .line 284
    add-int v9, v3, v8

    .line 285
    .line 286
    invoke-static {v1, v4, v6, v9}, Lvz/n;->k(Lvz/x;I[II)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    or-int/2addr v7, v4

    .line 291
    add-int/lit8 v8, v8, 0x1

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_14
    return v7
.end method

.method final s(Lvz/x;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/high16 v3, 0x1000000

    .line 5
    .line 6
    if-ge v1, p2, :cond_2

    .line 7
    .line 8
    iget-object v4, p0, Lvz/n;->b:[I

    .line 9
    .line 10
    add-int/lit8 v5, v2, 0x1

    .line 11
    .line 12
    aget-object v6, p3, v1

    .line 13
    .line 14
    invoke-static {p1, v6}, Lvz/n;->e(Lvz/x;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    aput v6, v4, v2

    .line 19
    .line 20
    aget-object v4, p3, v1

    .line 21
    .line 22
    sget-object v6, Lvz/v;->e:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eq v4, v6, :cond_1

    .line 25
    .line 26
    sget-object v6, Lvz/v;->d:Ljava/lang/Integer;

    .line 27
    .line 28
    if-ne v4, v6, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v2, v5

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iget-object v4, p0, Lvz/n;->b:[I

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x2

    .line 36
    .line 37
    aput v3, v4, v5

    .line 38
    .line 39
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_3
    iget-object p2, p0, Lvz/n;->b:[I

    .line 43
    .line 44
    array-length p3, p2

    .line 45
    if-ge v2, p3, :cond_3

    .line 46
    .line 47
    add-int/lit8 p3, v2, 0x1

    .line 48
    .line 49
    aput v3, p2, v2

    .line 50
    .line 51
    move v2, p3

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move p2, v0

    .line 54
    move p3, p2

    .line 55
    :goto_4
    if-ge p2, p4, :cond_6

    .line 56
    .line 57
    aget-object v1, p5, p2

    .line 58
    .line 59
    sget-object v2, Lvz/v;->e:Ljava/lang/Integer;

    .line 60
    .line 61
    if-eq v1, v2, :cond_4

    .line 62
    .line 63
    sget-object v2, Lvz/v;->d:Ljava/lang/Integer;

    .line 64
    .line 65
    if-ne v1, v2, :cond_5

    .line 66
    .line 67
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 68
    .line 69
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    add-int/2addr p3, p4

    .line 73
    new-array p2, p3, [I

    .line 74
    .line 75
    iput-object p2, p0, Lvz/n;->c:[I

    .line 76
    .line 77
    move p2, v0

    .line 78
    move p3, p2

    .line 79
    :goto_5
    if-ge p2, p4, :cond_9

    .line 80
    .line 81
    iget-object v1, p0, Lvz/n;->c:[I

    .line 82
    .line 83
    add-int/lit8 v2, p3, 0x1

    .line 84
    .line 85
    aget-object v4, p5, p2

    .line 86
    .line 87
    invoke-static {p1, v4}, Lvz/n;->e(Lvz/x;Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    aput v4, v1, p3

    .line 92
    .line 93
    aget-object v1, p5, p2

    .line 94
    .line 95
    sget-object v4, Lvz/v;->e:Ljava/lang/Integer;

    .line 96
    .line 97
    if-eq v1, v4, :cond_8

    .line 98
    .line 99
    sget-object v4, Lvz/v;->d:Ljava/lang/Integer;

    .line 100
    .line 101
    if-ne v1, v4, :cond_7

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    move p3, v2

    .line 105
    goto :goto_7

    .line 106
    :cond_8
    :goto_6
    iget-object v1, p0, Lvz/n;->c:[I

    .line 107
    .line 108
    add-int/lit8 p3, p3, 0x2

    .line 109
    .line 110
    aput v3, v1, v2

    .line 111
    .line 112
    :goto_7
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_9
    iput-short v0, p0, Lvz/n;->g:S

    .line 116
    .line 117
    iput v0, p0, Lvz/n;->h:I

    .line 118
    .line 119
    return-void
.end method

.method final t(Lvz/x;ILjava/lang/String;I)V
    .locals 8

    .line 1
    new-array v0, p4, [I

    .line 2
    .line 3
    iput-object v0, p0, Lvz/n;->b:[I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    iput-object v2, p0, Lvz/n;->c:[I

    .line 9
    .line 10
    and-int/lit8 v2, p2, 0x8

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    const/high16 v2, 0x40000

    .line 15
    .line 16
    and-int/2addr p2, v2

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lvz/x;->O()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lvz/x;->I(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/high16 v3, 0x2000000

    .line 29
    .line 30
    or-int/2addr p2, v3

    .line 31
    aput p2, v0, v1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const p2, 0x1000006

    .line 35
    .line 36
    .line 37
    aput p2, v0, v1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, v1

    .line 41
    :goto_0
    invoke-static {p3}, Lvz/y;->b(Ljava/lang/String;)[Lvz/y;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    array-length p3, p2

    .line 46
    move v0, v1

    .line 47
    :goto_1
    const/high16 v3, 0x1000000

    .line 48
    .line 49
    if-ge v0, p3, :cond_4

    .line 50
    .line 51
    aget-object v4, p2, v0

    .line 52
    .line 53
    invoke-virtual {v4}, Lvz/y;->e()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {p1, v4, v1}, Lvz/n;->f(Lvz/x;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget-object v5, p0, Lvz/n;->b:[I

    .line 62
    .line 63
    add-int/lit8 v6, v2, 0x1

    .line 64
    .line 65
    aput v4, v5, v2

    .line 66
    .line 67
    const v7, 0x1000004

    .line 68
    .line 69
    .line 70
    if-eq v4, v7, :cond_3

    .line 71
    .line 72
    const v7, 0x1000003

    .line 73
    .line 74
    .line 75
    if-ne v4, v7, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move v2, v6

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 81
    .line 82
    aput v3, v5, v6

    .line 83
    .line 84
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    :goto_4
    if-ge v2, p4, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lvz/n;->b:[I

    .line 90
    .line 91
    add-int/lit8 p2, v2, 0x1

    .line 92
    .line 93
    aput v3, p1, v2

    .line 94
    .line 95
    move v2, p2

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    return-void
.end method
