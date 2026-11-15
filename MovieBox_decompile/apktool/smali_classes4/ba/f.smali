.class final Lba/f;
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
    sget-object v1, Lcom/google/android/exoplayer2/util/x;->a:[B

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lba/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 12
    .line 13
    iput-object p1, p0, Lba/f;->c:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 21
    .line 22
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Lba/f;->f:J

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lba/f;->g:I

    .line 31
    .line 32
    return-void
.end method

.method private static d(I)I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method private e(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    aget-byte v1, v1, v2

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x1

    .line 14
    aget-byte v3, v3, v4

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xe0

    .line 17
    .line 18
    and-int/lit8 v5, v3, 0x1f

    .line 19
    .line 20
    or-int/2addr v1, v5

    .line 21
    and-int/lit16 v5, v3, 0x80

    .line 22
    .line 23
    if-lez v5, :cond_0

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v5, v2

    .line 28
    :goto_0
    and-int/lit8 v3, v3, 0x40

    .line 29
    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    move v3, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v2

    .line 35
    :goto_1
    if-eqz v5, :cond_2

    .line 36
    .line 37
    iget p2, p0, Lba/f;->h:I

    .line 38
    .line 39
    invoke-direct {p0}, Lba/f;->i()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr p2, v0

    .line 44
    iput p2, p0, Lba/f;->h:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    int-to-byte v0, v1

    .line 51
    aput-byte v0, p2, v4

    .line 52
    .line 53
    iget-object p2, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget v5, p0, Lba/f;->g:I

    .line 69
    .line 70
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/rtsp/g;->b(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eq p2, v5, :cond_3

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object p1, v0, v2

    .line 87
    .line 88
    aput-object p2, v0, v4

    .line 89
    .line 90
    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 91
    .line 92
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p2, "RtpH264Reader"

    .line 97
    .line 98
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    iget-object p2, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 114
    .line 115
    .line 116
    :goto_2
    iget-object p1, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object p2, p0, Lba/f;->d:Li9/e0;

    .line 123
    .line 124
    iget-object v0, p0, Lba/f;->a:Lcom/google/android/exoplayer2/util/d0;

    .line 125
    .line 126
    invoke-interface {p2, v0, p1}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 127
    .line 128
    .line 129
    iget p2, p0, Lba/f;->h:I

    .line 130
    .line 131
    add-int/2addr p2, p1

    .line 132
    iput p2, p0, Lba/f;->h:I

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    and-int/lit8 p1, v1, 0x1f

    .line 137
    .line 138
    invoke-static {p1}, Lba/f;->d(I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lba/f;->e:I

    .line 143
    .line 144
    :cond_4
    return-void
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
    iget v1, p0, Lba/f;->h:I

    .line 6
    .line 7
    invoke-direct {p0}, Lba/f;->i()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, p0, Lba/f;->h:I

    .line 13
    .line 14
    iget-object v1, p0, Lba/f;->d:Li9/e0;

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lba/f;->h:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    iput v1, p0, Lba/f;->h:I

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
    and-int/lit8 p1, p1, 0x1f

    .line 32
    .line 33
    invoke-static {p1}, Lba/f;->d(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lba/f;->e:I

    .line 38
    .line 39
    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lba/f;->h:I

    .line 16
    .line 17
    invoke-direct {p0}, Lba/f;->i()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v1, v2

    .line 22
    iput v1, p0, Lba/f;->h:I

    .line 23
    .line 24
    iget-object v1, p0, Lba/f;->d:Li9/e0;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lba/f;->h:I

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    iput v1, p0, Lba/f;->h:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lba/f;->e:I

    .line 37
    .line 38
    return-void
.end method

.method private static h(JJJ)J
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

.method private i()I
    .locals 3

    .line 1
    iget-object v0, p0, Lba/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lba/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lba/f;->d:Li9/e0;

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
    iget-object v2, p0, Lba/f;->b:Lcom/google/android/exoplayer2/util/d0;

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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    aget-byte v4, v4, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    and-int/lit8 v4, v4, 0x1f

    .line 14
    .line 15
    iget-object v5, v1, Lba/f;->d:Li9/e0;

    .line 16
    .line 17
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const/16 v5, 0x18

    .line 21
    .line 22
    if-lez v4, :cond_0

    .line 23
    .line 24
    if-ge v4, v5, :cond_0

    .line 25
    .line 26
    invoke-direct/range {p0 .. p1}, Lba/f;->f(Lcom/google/android/exoplayer2/util/d0;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    invoke-direct/range {p0 .. p1}, Lba/f;->g(Lcom/google/android/exoplayer2/util/d0;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v5, 0x1c

    .line 37
    .line 38
    if-ne v4, v5, :cond_4

    .line 39
    .line 40
    move-object/from16 v5, p1

    .line 41
    .line 42
    invoke-direct {v1, v5, v0}, Lba/f;->e(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    if-eqz p5, :cond_3

    .line 46
    .line 47
    iget-wide v3, v1, Lba/f;->f:J

    .line 48
    .line 49
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmp-long v3, v3, v5

    .line 55
    .line 56
    move-wide/from16 v6, p2

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    iput-wide v6, v1, Lba/f;->f:J

    .line 61
    .line 62
    :cond_2
    iget-wide v4, v1, Lba/f;->i:J

    .line 63
    .line 64
    iget-wide v8, v1, Lba/f;->f:J

    .line 65
    .line 66
    move-wide/from16 v6, p2

    .line 67
    .line 68
    invoke-static/range {v4 .. v9}, Lba/f;->h(JJJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v11

    .line 72
    iget-object v10, v1, Lba/f;->d:Li9/e0;

    .line 73
    .line 74
    iget v13, v1, Lba/f;->e:I

    .line 75
    .line 76
    iget v14, v1, Lba/f;->h:I

    .line 77
    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    invoke-interface/range {v10 .. v16}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 82
    .line 83
    .line 84
    iput v2, v1, Lba/f;->h:I

    .line 85
    .line 86
    :cond_3
    iput v0, v1, Lba/f;->g:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v4, 0x1

    .line 94
    new-array v4, v4, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v0, v4, v2

    .line 97
    .line 98
    const-string v0, "RTP H264 packetization mode [%d] not supported."

    .line 99
    .line 100
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    throw v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    throw v0
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
    iput-object p1, p0, Lba/f;->d:Li9/e0;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Li9/e0;

    .line 13
    .line 14
    iget-object p2, p0, Lba/f;->c:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 17
    .line 18
    invoke-interface {p1, p2}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lba/f;->f:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lba/f;->h:I

    .line 5
    .line 6
    iput-wide p3, p0, Lba/f;->i:J

    .line 7
    .line 8
    return-void
.end method
