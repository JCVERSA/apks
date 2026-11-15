.class final Lba/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lba/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/rtsp/j;

.field private b:Li9/e0;

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lba/e;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lba/e;->c:J

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lba/e;->e:I

    .line 15
    .line 16
    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/util/d0;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    shr-long/2addr v1, v3

    .line 12
    const-wide/16 v3, 0x3f

    .line 13
    .line 14
    and-long/2addr v1, v3

    .line 15
    const-wide/16 v3, 0x20

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    shr-int/lit8 v3, v1, 0x1

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    and-int/2addr v3, v4

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    shr-int/lit8 p2, v1, 0x2

    .line 35
    .line 36
    and-int/lit8 p2, p2, 0x7

    .line 37
    .line 38
    if-ne p2, v4, :cond_0

    .line 39
    .line 40
    const/16 p2, 0x80

    .line 41
    .line 42
    iput p2, p0, Lba/e;->f:I

    .line 43
    .line 44
    const/16 p2, 0x60

    .line 45
    .line 46
    iput p2, p0, Lba/e;->g:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 50
    .line 51
    const/16 v1, 0xb0

    .line 52
    .line 53
    shl-int/2addr v1, p2

    .line 54
    iput v1, p0, Lba/e;->f:I

    .line 55
    .line 56
    const/16 v1, 0x90

    .line 57
    .line 58
    shl-int p2, v1, p2

    .line 59
    .line 60
    iput p2, p0, Lba/e;->g:I

    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 63
    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    move v2, v4

    .line 68
    :cond_2
    iput-boolean v2, p0, Lba/e;->h:Z

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 72
    .line 73
    .line 74
    iput-boolean v2, p0, Lba/e;->h:Z

    .line 75
    .line 76
    return-void
.end method

.method private static e(JJJ)J
    .locals 6

    .line 1
    sub-long v0, p2, p4

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    const-wide/32 v4, 0x15f90

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    add-long/2addr p0, p2

    .line 14
    return-wide p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;JIZ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lba/e;->b:Li9/e0;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    and-int/lit16 v5, v4, 0x400

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    if-lez v5, :cond_0

    .line 25
    .line 26
    move v5, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v5, v7

    .line 29
    :goto_0
    and-int/lit16 v8, v4, 0x200

    .line 30
    .line 31
    const-string v9, "RtpH263Reader"

    .line 32
    .line 33
    if-nez v8, :cond_a

    .line 34
    .line 35
    and-int/lit16 v8, v4, 0x1f8

    .line 36
    .line 37
    if-nez v8, :cond_a

    .line 38
    .line 39
    and-int/lit8 v4, v4, 0x7

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    if-eqz v5, :cond_3

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    and-int/lit16 v4, v4, 0xfc

    .line 52
    .line 53
    const/16 v5, 0x80

    .line 54
    .line 55
    if-ge v4, v5, :cond_2

    .line 56
    .line 57
    const-string v1, "Picture start Code (PSC) missing, dropping packet."

    .line 58
    .line 59
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    aput-byte v7, v4, v3

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    add-int/lit8 v5, v3, 0x1

    .line 74
    .line 75
    aput-byte v7, v4, v5

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget v3, v0, Lba/e;->e:I

    .line 82
    .line 83
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/g;->b(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq v2, v3, :cond_4

    .line 88
    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/4 v3, 0x2

    .line 98
    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v1, v3, v7

    .line 101
    .line 102
    aput-object v2, v3, v6

    .line 103
    .line 104
    const-string v1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 105
    .line 106
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    :goto_1
    iget v3, v0, Lba/e;->d:I

    .line 115
    .line 116
    if-nez v3, :cond_7

    .line 117
    .line 118
    iget-boolean v3, v0, Lba/e;->i:Z

    .line 119
    .line 120
    invoke-direct {v0, v1, v3}, Lba/e;->d(Lcom/google/android/exoplayer2/util/d0;Z)V

    .line 121
    .line 122
    .line 123
    iget-boolean v3, v0, Lba/e;->i:Z

    .line 124
    .line 125
    if-nez v3, :cond_7

    .line 126
    .line 127
    iget-boolean v3, v0, Lba/e;->h:Z

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    iget v3, v0, Lba/e;->f:I

    .line 132
    .line 133
    iget-object v4, v0, Lba/e;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 134
    .line 135
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 136
    .line 137
    iget v5, v4, Lcom/google/android/exoplayer2/p1;->q:I

    .line 138
    .line 139
    if-ne v3, v5, :cond_5

    .line 140
    .line 141
    iget v3, v0, Lba/e;->g:I

    .line 142
    .line 143
    iget v5, v4, Lcom/google/android/exoplayer2/p1;->r:I

    .line 144
    .line 145
    if-eq v3, v5, :cond_6

    .line 146
    .line 147
    :cond_5
    iget-object v3, v0, Lba/e;->b:Li9/e0;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget v5, v0, Lba/e;->f:I

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget v5, v0, Lba/e;->g:I

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-interface {v3, v4}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iput-boolean v6, v0, Lba/e;->i:Z

    .line 173
    .line 174
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iget-object v4, v0, Lba/e;->b:Li9/e0;

    .line 179
    .line 180
    invoke-interface {v4, v1, v3}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 181
    .line 182
    .line 183
    iget v1, v0, Lba/e;->d:I

    .line 184
    .line 185
    add-int/2addr v1, v3

    .line 186
    iput v1, v0, Lba/e;->d:I

    .line 187
    .line 188
    if-eqz p5, :cond_9

    .line 189
    .line 190
    iget-wide v3, v0, Lba/e;->c:J

    .line 191
    .line 192
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    cmp-long v1, v3, v5

    .line 198
    .line 199
    move-wide/from16 v3, p2

    .line 200
    .line 201
    if-nez v1, :cond_8

    .line 202
    .line 203
    iput-wide v3, v0, Lba/e;->c:J

    .line 204
    .line 205
    :cond_8
    iget-wide v8, v0, Lba/e;->j:J

    .line 206
    .line 207
    iget-wide v12, v0, Lba/e;->c:J

    .line 208
    .line 209
    move-wide/from16 v10, p2

    .line 210
    .line 211
    invoke-static/range {v8 .. v13}, Lba/e;->e(JJJ)J

    .line 212
    .line 213
    .line 214
    move-result-wide v15

    .line 215
    iget-object v14, v0, Lba/e;->b:Li9/e0;

    .line 216
    .line 217
    iget-boolean v1, v0, Lba/e;->h:Z

    .line 218
    .line 219
    iget v3, v0, Lba/e;->d:I

    .line 220
    .line 221
    const/16 v19, 0x0

    .line 222
    .line 223
    const/16 v20, 0x0

    .line 224
    .line 225
    move/from16 v17, v1

    .line 226
    .line 227
    move/from16 v18, v3

    .line 228
    .line 229
    invoke-interface/range {v14 .. v20}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 230
    .line 231
    .line 232
    iput v7, v0, Lba/e;->d:I

    .line 233
    .line 234
    iput-boolean v7, v0, Lba/e;->h:Z

    .line 235
    .line 236
    :cond_9
    iput v2, v0, Lba/e;->e:I

    .line 237
    .line 238
    return-void

    .line 239
    :cond_a
    :goto_2
    const-string v1, "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero"

    .line 240
    .line 241
    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public b(JI)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Li9/n;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, p2, v0}, Li9/n;->track(II)Li9/e0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lba/e;->b:Li9/e0;

    .line 7
    .line 8
    iget-object p2, p0, Lba/e;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lba/e;->c:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lba/e;->d:I

    .line 5
    .line 6
    iput-wide p3, p0, Lba/e;->j:J

    .line 7
    .line 8
    return-void
.end method
