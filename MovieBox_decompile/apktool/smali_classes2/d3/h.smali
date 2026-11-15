.class final Ld3/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ld3/g;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J

.field private final d:J

.field private final e:I


# direct methods
.method private constructor <init>([J[JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld3/h;->a:[J

    .line 5
    .line 6
    iput-object p2, p0, Ld3/h;->b:[J

    .line 7
    .line 8
    iput-wide p3, p0, Ld3/h;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Ld3/h;->d:J

    .line 11
    .line 12
    iput p7, p0, Ld3/h;->e:I

    .line 13
    .line 14
    return-void
.end method

.method public static b(JJLk2/i0$a;Landroidx/media3/common/util/j0;)Ld3/h;
    .locals 20

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/j0;->X(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->q()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v2, Lk2/i0$a;->c:I

    .line 16
    .line 17
    int-to-long v5, v5

    .line 18
    add-long v5, p2, v5

    .line 19
    .line 20
    int-to-long v7, v4

    .line 21
    add-long/2addr v5, v7

    .line 22
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->q()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v7, 0x0

    .line 27
    if-gtz v4, :cond_0

    .line 28
    .line 29
    return-object v7

    .line 30
    :cond_0
    iget v8, v2, Lk2/i0$a;->d:I

    .line 31
    .line 32
    int-to-long v9, v4

    .line 33
    iget v4, v2, Lk2/i0$a;->g:I

    .line 34
    .line 35
    int-to-long v11, v4

    .line 36
    mul-long/2addr v9, v11

    .line 37
    const-wide/16 v11, 0x1

    .line 38
    .line 39
    sub-long/2addr v9, v11

    .line 40
    invoke-static {v9, v10, v8}, Landroidx/media3/common/util/a1;->d1(JI)J

    .line 41
    .line 42
    .line 43
    move-result-wide v14

    .line 44
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const/4 v10, 0x2

    .line 57
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/j0;->X(I)V

    .line 58
    .line 59
    .line 60
    iget v11, v2, Lk2/i0$a;->c:I

    .line 61
    .line 62
    int-to-long v11, v11

    .line 63
    add-long v11, p2, v11

    .line 64
    .line 65
    new-array v13, v4, [J

    .line 66
    .line 67
    new-array v7, v4, [J

    .line 68
    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    move/from16 v10, v17

    .line 72
    .line 73
    :goto_0
    if-ge v10, v4, :cond_5

    .line 74
    .line 75
    int-to-long v2, v10

    .line 76
    mul-long/2addr v2, v14

    .line 77
    move-wide/from16 v18, v14

    .line 78
    .line 79
    int-to-long v14, v4

    .line 80
    div-long/2addr v2, v14

    .line 81
    aput-wide v2, v13, v10

    .line 82
    .line 83
    aput-wide v11, v7, v10

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    if-eq v9, v2, :cond_4

    .line 87
    .line 88
    const/4 v2, 0x2

    .line 89
    if-eq v9, v2, :cond_3

    .line 90
    .line 91
    const/4 v3, 0x3

    .line 92
    if-eq v9, v3, :cond_2

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    if-eq v9, v3, :cond_1

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    return-object v3

    .line 99
    :cond_1
    const/4 v3, 0x0

    .line 100
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->L()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const/4 v3, 0x0

    .line 106
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->K()I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const/4 v3, 0x0

    .line 112
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->P()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const/4 v2, 0x2

    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/j0;->H()I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    :goto_1
    int-to-long v14, v14

    .line 124
    int-to-long v2, v8

    .line 125
    mul-long/2addr v14, v2

    .line 126
    add-long/2addr v11, v14

    .line 127
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    move-object/from16 v2, p4

    .line 130
    .line 131
    move-object/from16 v3, p5

    .line 132
    .line 133
    move-wide/from16 v14, v18

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    move-wide/from16 v18, v14

    .line 137
    .line 138
    const-wide/16 v2, -0x1

    .line 139
    .line 140
    cmp-long v2, v0, v2

    .line 141
    .line 142
    const-string v3, ", "

    .line 143
    .line 144
    const-string v4, "VbriSeeker"

    .line 145
    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    cmp-long v2, v0, v5

    .line 149
    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v8, "VBRI data size mismatch: "

    .line 158
    .line 159
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v4, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    cmp-long v0, v5, v11

    .line 179
    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v1, "VBRI bytes and ToC mismatch (using max): "

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, "\nSeeking will be inaccurate."

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v4, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v5

    .line 217
    :cond_7
    move-wide/from16 v16, v5

    .line 218
    .line 219
    new-instance v0, Ld3/h;

    .line 220
    .line 221
    move-object/from16 v1, p4

    .line 222
    .line 223
    iget v1, v1, Lk2/i0$a;->f:I

    .line 224
    .line 225
    move-object v11, v0

    .line 226
    move-object v12, v13

    .line 227
    move-object v13, v7

    .line 228
    move-wide/from16 v14, v18

    .line 229
    .line 230
    move/from16 v18, v1

    .line 231
    .line 232
    invoke-direct/range {v11 .. v18}, Ld3/h;-><init>([J[JJJI)V

    .line 233
    .line 234
    .line 235
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld3/h;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ld3/h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld3/h;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lk2/m0$a;
    .locals 8

    .line 1
    iget-object v0, p0, Ld3/h;->a:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v2, Lk2/n0;

    .line 9
    .line 10
    iget-object v3, p0, Ld3/h;->a:[J

    .line 11
    .line 12
    aget-wide v4, v3, v0

    .line 13
    .line 14
    iget-object v3, p0, Ld3/h;->b:[J

    .line 15
    .line 16
    aget-wide v6, v3, v0

    .line 17
    .line 18
    invoke-direct {v2, v4, v5, v6, v7}, Lk2/n0;-><init>(JJ)V

    .line 19
    .line 20
    .line 21
    iget-wide v3, v2, Lk2/n0;->a:J

    .line 22
    .line 23
    cmp-long p1, v3, p1

    .line 24
    .line 25
    if-gez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Ld3/h;->a:[J

    .line 28
    .line 29
    array-length p1, p1

    .line 30
    sub-int/2addr p1, v1

    .line 31
    if-ne v0, p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lk2/n0;

    .line 35
    .line 36
    iget-object p2, p0, Ld3/h;->a:[J

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    aget-wide v3, p2, v0

    .line 40
    .line 41
    iget-object p2, p0, Ld3/h;->b:[J

    .line 42
    .line 43
    aget-wide v0, p2, v0

    .line 44
    .line 45
    invoke-direct {p1, v3, v4, v0, v1}, Lk2/n0;-><init>(JJ)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lk2/m0$a;

    .line 49
    .line 50
    invoke-direct {p2, v2, p1}, Lk2/m0$a;-><init>(Lk2/n0;Lk2/n0;)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    :goto_0
    new-instance p1, Lk2/m0$a;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/h;->a:[J

    .line 2
    .line 3
    iget-object v1, p0, Ld3/h;->b:[J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v0, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
