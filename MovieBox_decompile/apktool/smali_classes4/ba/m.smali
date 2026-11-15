.class final Lba/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lba/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/rtsp/j;

.field private b:Li9/e0;

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lba/m;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lba/m;->c:J

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lba/m;->d:J

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lba/m;->e:I

    .line 19
    .line 20
    iput p1, p0, Lba/m;->g:I

    .line 21
    .line 22
    iput p1, p0, Lba/m;->h:I

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lba/m;->i:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lba/m;->j:Z

    .line 28
    .line 29
    return-void
.end method

.method private static d(JJJ)J
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

.method private e(Lcom/google/android/exoplayer2/util/d0;I)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-boolean v2, p0, Lba/m;->i:Z

    .line 7
    .line 8
    const-string v3, "RtpVp9Reader"

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    and-int/lit8 p2, v1, 0x8

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string p1, "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet."

    .line 19
    .line 20
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v5

    .line 24
    :cond_0
    iput-boolean v4, p0, Lba/m;->i:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v2, p0, Lba/m;->e:I

    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/g;->b(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq p2, v2, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p1, v0, v5

    .line 46
    .line 47
    aput-object p2, v0, v4

    .line 48
    .line 49
    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v5

    .line 59
    :cond_2
    :goto_0
    and-int/lit16 p2, v1, 0x80

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    and-int/lit16 p2, p2, 0x80

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-ge p2, v4, :cond_3

    .line 76
    .line 77
    return v5

    .line 78
    :cond_3
    and-int/lit8 p2, v1, 0x10

    .line 79
    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    move v2, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move v2, v5

    .line 85
    :goto_1
    const-string v3, "VP9 flexible mode is not supported."

    .line 86
    .line 87
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    and-int/lit8 v2, v1, 0x20

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-ge v2, v4, :cond_5

    .line 102
    .line 103
    return v5

    .line 104
    :cond_5
    if-nez p2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 107
    .line 108
    .line 109
    :cond_6
    and-int/lit8 p2, v1, 0x2

    .line 110
    .line 111
    if-eqz p2, :cond_b

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    shr-int/lit8 v1, p2, 0x5

    .line 118
    .line 119
    and-int/lit8 v1, v1, 0x7

    .line 120
    .line 121
    and-int/lit8 v2, p2, 0x10

    .line 122
    .line 123
    if-eqz v2, :cond_8

    .line 124
    .line 125
    add-int/2addr v1, v4

    .line 126
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    mul-int/lit8 v3, v1, 0x4

    .line 131
    .line 132
    if-ge v2, v3, :cond_7

    .line 133
    .line 134
    return v5

    .line 135
    :cond_7
    move v2, v5

    .line 136
    :goto_2
    if-ge v2, v1, :cond_8

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iput v3, p0, Lba/m;->g:I

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iput v3, p0, Lba/m;->h:I

    .line 149
    .line 150
    add-int/2addr v2, v4

    .line 151
    goto :goto_2

    .line 152
    :cond_8
    and-int/lit8 p2, p2, 0x8

    .line 153
    .line 154
    if-eqz p2, :cond_b

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-ge v1, p2, :cond_9

    .line 165
    .line 166
    return v5

    .line 167
    :cond_9
    move v1, v5

    .line 168
    :goto_3
    if-ge v1, p2, :cond_b

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    and-int/lit8 v2, v2, 0xc

    .line 175
    .line 176
    shr-int/2addr v2, v0

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-ge v3, v2, :cond_a

    .line 182
    .line 183
    return v5

    .line 184
    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 185
    .line 186
    .line 187
    add-int/2addr v1, v4

    .line 188
    goto :goto_3

    .line 189
    :cond_b
    return v4
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;JIZ)V
    .locals 16

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
    iget-object v3, v0, Lba/m;->b:Li9/e0;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lba/m;->e(Lcom/google/android/exoplayer2/util/d0;I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_6

    .line 17
    .line 18
    iget v3, v0, Lba/m;->f:I

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-boolean v3, v0, Lba/m;->i:Z

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    and-int/lit8 v3, v3, 0x4

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    move v9, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v9, v5

    .line 39
    :goto_0
    iget-boolean v3, v0, Lba/m;->j:Z

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    iget v3, v0, Lba/m;->g:I

    .line 44
    .line 45
    const/4 v6, -0x1

    .line 46
    if-eq v3, v6, :cond_3

    .line 47
    .line 48
    iget v7, v0, Lba/m;->h:I

    .line 49
    .line 50
    if-eq v7, v6, :cond_3

    .line 51
    .line 52
    iget-object v6, v0, Lba/m;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 53
    .line 54
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 55
    .line 56
    iget v8, v6, Lcom/google/android/exoplayer2/p1;->q:I

    .line 57
    .line 58
    if-ne v3, v8, :cond_1

    .line 59
    .line 60
    iget v3, v6, Lcom/google/android/exoplayer2/p1;->r:I

    .line 61
    .line 62
    if-eq v7, v3, :cond_2

    .line 63
    .line 64
    :cond_1
    iget-object v3, v0, Lba/m;->b:Li9/e0;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget v7, v0, Lba/m;->g:I

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget v7, v0, Lba/m;->h:I

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v3, v6}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iput-boolean v4, v0, Lba/m;->j:Z

    .line 90
    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget-object v4, v0, Lba/m;->b:Li9/e0;

    .line 96
    .line 97
    invoke-interface {v4, v1, v3}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 98
    .line 99
    .line 100
    iget v1, v0, Lba/m;->f:I

    .line 101
    .line 102
    add-int/2addr v1, v3

    .line 103
    iput v1, v0, Lba/m;->f:I

    .line 104
    .line 105
    if-eqz p5, :cond_5

    .line 106
    .line 107
    iget-wide v3, v0, Lba/m;->c:J

    .line 108
    .line 109
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    cmp-long v1, v3, v6

    .line 115
    .line 116
    move-wide/from16 v3, p2

    .line 117
    .line 118
    if-nez v1, :cond_4

    .line 119
    .line 120
    iput-wide v3, v0, Lba/m;->c:J

    .line 121
    .line 122
    :cond_4
    iget-wide v10, v0, Lba/m;->d:J

    .line 123
    .line 124
    iget-wide v14, v0, Lba/m;->c:J

    .line 125
    .line 126
    move-wide/from16 v12, p2

    .line 127
    .line 128
    invoke-static/range {v10 .. v15}, Lba/m;->d(JJJ)J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    iget-object v6, v0, Lba/m;->b:Li9/e0;

    .line 133
    .line 134
    iget v10, v0, Lba/m;->f:I

    .line 135
    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    invoke-interface/range {v6 .. v12}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 139
    .line 140
    .line 141
    iput v5, v0, Lba/m;->f:I

    .line 142
    .line 143
    iput-boolean v5, v0, Lba/m;->i:Z

    .line 144
    .line 145
    :cond_5
    iput v2, v0, Lba/m;->e:I

    .line 146
    .line 147
    :cond_6
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
    iput-object p1, p0, Lba/m;->b:Li9/e0;

    .line 7
    .line 8
    iget-object p2, p0, Lba/m;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

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
    iput-wide p1, p0, Lba/m;->c:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lba/m;->f:I

    .line 5
    .line 6
    iput-wide p3, p0, Lba/m;->d:J

    .line 7
    .line 8
    return-void
.end method
