.class final Lba/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lba/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d0;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/source/rtsp/j;

.field private d:Li9/e0;

.field private e:I

.field private f:J

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/exoplayer2/util/x;->a:[B

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lba/g;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 19
    .line 20
    iput-object p1, p0, Lba/g;->c:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 21
    .line 22
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Lba/g;->f:J

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lba/g;->g:I

    .line 31
    .line 32
    return-void
.end method

.method private static d(I)I
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method private e(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    array-length v3, v3

    .line 9
    const/4 v4, 0x3

    .line 10
    if-lt v3, v4, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    aget-byte v3, v3, v2

    .line 17
    .line 18
    and-int/lit8 v3, v3, 0x7

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    aget-byte v5, v5, v1

    .line 25
    .line 26
    and-int/lit8 v6, v5, 0x3f

    .line 27
    .line 28
    and-int/lit16 v7, v5, 0x80

    .line 29
    .line 30
    if-lez v7, :cond_0

    .line 31
    .line 32
    move v7, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v7, v0

    .line 35
    :goto_0
    and-int/lit8 v5, v5, 0x40

    .line 36
    .line 37
    if-lez v5, :cond_1

    .line 38
    .line 39
    move v5, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v0

    .line 42
    :goto_1
    if-eqz v7, :cond_2

    .line 43
    .line 44
    iget p2, p0, Lba/g;->h:I

    .line 45
    .line 46
    invoke-direct {p0}, Lba/g;->h()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr p2, v0

    .line 51
    iput p2, p0, Lba/g;->h:I

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    shl-int/lit8 v0, v6, 0x1

    .line 58
    .line 59
    and-int/lit8 v0, v0, 0x7f

    .line 60
    .line 61
    int-to-byte v0, v0

    .line 62
    aput-byte v0, p2, v2

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    int-to-byte v0, v3

    .line 69
    aput-byte v0, p2, v1

    .line 70
    .line 71
    iget-object p2, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget v3, p0, Lba/g;->g:I

    .line 87
    .line 88
    add-int/2addr v3, v2

    .line 89
    const v7, 0xffff

    .line 90
    .line 91
    .line 92
    rem-int/2addr v3, v7

    .line 93
    if-eq p2, v3, :cond_3

    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object p1, v1, v0

    .line 106
    .line 107
    aput-object p2, v1, v2

    .line 108
    .line 109
    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 110
    .line 111
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "RtpH265Reader"

    .line 116
    .line 117
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    iget-object p2, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 131
    .line 132
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 133
    .line 134
    .line 135
    :goto_2
    iget-object p1, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iget-object p2, p0, Lba/g;->d:Li9/e0;

    .line 142
    .line 143
    iget-object v0, p0, Lba/g;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 144
    .line 145
    invoke-interface {p2, v0, p1}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 146
    .line 147
    .line 148
    iget p2, p0, Lba/g;->h:I

    .line 149
    .line 150
    add-int/2addr p2, p1

    .line 151
    iput p2, p0, Lba/g;->h:I

    .line 152
    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    invoke-static {v6}, Lba/g;->d(I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput p1, p0, Lba/g;->e:I

    .line 160
    .line 161
    :cond_4
    return-void

    .line 162
    :cond_5
    const-string p1, "Malformed FU header."

    .line 163
    .line 164
    const/4 p2, 0x0

    .line 165
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    throw p1
.end method

.method private f(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lba/g;->h:I

    .line 6
    .line 7
    invoke-direct {p0}, Lba/g;->h()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, p0, Lba/g;->h:I

    .line 13
    .line 14
    iget-object v1, p0, Lba/g;->d:Li9/e0;

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lba/g;->h:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p0, Lba/g;->h:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    aget-byte p1, p1, v0

    .line 30
    .line 31
    shr-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    and-int/lit8 p1, p1, 0x3f

    .line 34
    .line 35
    invoke-static {p1}, Lba/g;->d(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lba/g;->e:I

    .line 40
    .line 41
    return-void
.end method

.method private static g(JJJ)J
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

.method private h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lba/g;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lba/g;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lba/g;->d:Li9/e0;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Li9/e0;

    .line 20
    .line 21
    iget-object v2, p0, Lba/g;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 22
    .line 23
    invoke-interface {v1, v2, v0}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 24
    .line 25
    .line 26
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;JIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    array-length v4, v4

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_5

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    aget-byte v4, v4, v3

    .line 20
    .line 21
    shr-int/2addr v4, v2

    .line 22
    and-int/lit8 v4, v4, 0x3f

    .line 23
    .line 24
    iget-object v6, v0, Lba/g;->d:Li9/e0;

    .line 25
    .line 26
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/16 v6, 0x30

    .line 30
    .line 31
    if-ltz v4, :cond_0

    .line 32
    .line 33
    if-ge v4, v6, :cond_0

    .line 34
    .line 35
    invoke-direct/range {p0 .. p1}, Lba/g;->f(Lcom/google/android/exoplayer2/util/d0;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eq v4, v6, :cond_4

    .line 40
    .line 41
    const/16 v6, 0x31

    .line 42
    .line 43
    if-ne v4, v6, :cond_3

    .line 44
    .line 45
    move-object/from16 v6, p1

    .line 46
    .line 47
    invoke-direct {v0, v6, v1}, Lba/g;->e(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-eqz p5, :cond_2

    .line 51
    .line 52
    iget-wide v4, v0, Lba/g;->f:J

    .line 53
    .line 54
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    cmp-long v2, v4, v6

    .line 60
    .line 61
    move-wide/from16 v6, p2

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    iput-wide v6, v0, Lba/g;->f:J

    .line 66
    .line 67
    :cond_1
    iget-wide v4, v0, Lba/g;->i:J

    .line 68
    .line 69
    iget-wide v8, v0, Lba/g;->f:J

    .line 70
    .line 71
    move-wide/from16 v6, p2

    .line 72
    .line 73
    invoke-static/range {v4 .. v9}, Lba/g;->g(JJJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    iget-object v10, v0, Lba/g;->d:Li9/e0;

    .line 78
    .line 79
    iget v13, v0, Lba/g;->e:I

    .line 80
    .line 81
    iget v14, v0, Lba/g;->h:I

    .line 82
    .line 83
    const/4 v15, 0x0

    .line 84
    const/16 v16, 0x0

    .line 85
    .line 86
    invoke-interface/range {v10 .. v16}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 87
    .line 88
    .line 89
    iput v3, v0, Lba/g;->h:I

    .line 90
    .line 91
    :cond_2
    iput v1, v0, Lba/g;->g:I

    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v1, v2, v3

    .line 101
    .line 102
    const-string v1, "RTP H265 payload type [%d] not supported."

    .line 103
    .line 104
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    throw v1

    .line 113
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 114
    .line 115
    const-string v2, "need to implement processAggregationPacket"

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_5
    const-string v1, "Empty RTP data packet."

    .line 122
    .line 123
    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    throw v1
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
    iput-object p1, p0, Lba/g;->d:Li9/e0;

    .line 7
    .line 8
    iget-object p2, p0, Lba/g;->c:Lcom/google/android/exoplayer2/source/rtsp/j;

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
    iput-wide p1, p0, Lba/g;->f:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lba/g;->h:I

    .line 5
    .line 6
    iput-wide p3, p0, Lba/g;->i:J

    .line 7
    .line 8
    return-void
.end method
