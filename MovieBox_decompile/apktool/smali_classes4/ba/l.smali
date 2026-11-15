.class final Lba/l;
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

.field private f:J

.field private g:J

.field private h:Z

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
    iput-object p1, p0, Lba/l;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lba/l;->c:J

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lba/l;->d:I

    .line 15
    .line 16
    iput p1, p0, Lba/l;->e:I

    .line 17
    .line 18
    iput-wide v0, p0, Lba/l;->f:J

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lba/l;->g:J

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lba/l;->h:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lba/l;->i:Z

    .line 28
    .line 29
    iput-boolean p1, p0, Lba/l;->j:Z

    .line 30
    .line 31
    return-void
.end method

.method private d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lba/l;->b:Li9/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Li9/e0;

    .line 9
    .line 10
    iget-wide v2, p0, Lba/l;->f:J

    .line 11
    .line 12
    iget-boolean v4, p0, Lba/l;->i:Z

    .line 13
    .line 14
    iget v5, p0, Lba/l;->e:I

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-interface/range {v1 .. v7}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lba/l;->e:I

    .line 23
    .line 24
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v1, p0, Lba/l;->f:J

    .line 30
    .line 31
    iput-boolean v0, p0, Lba/l;->h:Z

    .line 32
    .line 33
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

.method private f(Lcom/google/android/exoplayer2/util/d0;I)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x10

    .line 7
    .line 8
    and-int/lit8 v3, v1, 0x10

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v3, v2, :cond_1

    .line 12
    .line 13
    and-int/lit8 v3, v1, 0x7

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    iget-boolean p2, p0, Lba/l;->h:Z

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget p2, p0, Lba/l;->e:I

    .line 22
    .line 23
    if-lez p2, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lba/l;->d()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-boolean v4, p0, Lba/l;->h:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-boolean v3, p0, Lba/l;->h:Z

    .line 32
    .line 33
    const-string v5, "RtpVP8Reader"

    .line 34
    .line 35
    if-eqz v3, :cond_7

    .line 36
    .line 37
    iget v3, p0, Lba/l;->d:I

    .line 38
    .line 39
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/g;->b(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge p2, v3, :cond_2

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 v1, 0x2

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v1, v0

    .line 57
    .line 58
    aput-object p2, v1, v4

    .line 59
    .line 60
    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 61
    .line 62
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v5, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v0

    .line 70
    :cond_2
    :goto_0
    and-int/lit16 p2, v1, 0x80

    .line 71
    .line 72
    if-eqz p2, :cond_6

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    and-int/lit16 v0, p2, 0x80

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->D()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    and-int/lit16 v0, v0, 0x80

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    and-int/lit8 v0, p2, 0x40

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    and-int/lit8 v0, p2, 0x20

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    and-int/2addr p2, v2

    .line 105
    if-eqz p2, :cond_6

    .line 106
    .line 107
    :cond_5
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 108
    .line 109
    .line 110
    :cond_6
    return v4

    .line 111
    :cond_7
    const-string p1, "RTP packet is not the start of a new VP8 partition, skipping."

    .line 112
    .line 113
    invoke-static {v5, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;JIZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lba/l;->b:Li9/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p4}, Lba/l;->f(Lcom/google/android/exoplayer2/util/d0;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    iget v0, p0, Lba/l;->e:I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lba/l;->h:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->h()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    and-int/2addr v0, v2

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-boolean v0, p0, Lba/l;->i:Z

    .line 33
    .line 34
    :cond_1
    iget-boolean v0, p0, Lba/l;->j:Z

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v3, v0, 0x6

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->v()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    and-int/lit16 v3, v3, 0x3fff

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->v()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    and-int/lit16 v4, v4, 0x3fff

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lba/l;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/j;->c:Lcom/google/android/exoplayer2/p1;

    .line 65
    .line 66
    iget v5, v0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 67
    .line 68
    if-ne v3, v5, :cond_2

    .line 69
    .line 70
    iget v5, v0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 71
    .line 72
    if-eq v4, v5, :cond_3

    .line 73
    .line 74
    :cond_2
    iget-object v5, p0, Lba/l;->b:Li9/e0;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v5, v0}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iput-boolean v2, p0, Lba/l;->j:Z

    .line 96
    .line 97
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iget-object v2, p0, Lba/l;->b:Li9/e0;

    .line 102
    .line 103
    invoke-interface {v2, p1, v0}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 104
    .line 105
    .line 106
    iget p1, p0, Lba/l;->e:I

    .line 107
    .line 108
    if-ne p1, v1, :cond_5

    .line 109
    .line 110
    iput v0, p0, Lba/l;->e:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    add-int/2addr p1, v0

    .line 114
    iput p1, p0, Lba/l;->e:I

    .line 115
    .line 116
    :goto_1
    iget-wide v0, p0, Lba/l;->g:J

    .line 117
    .line 118
    iget-wide v4, p0, Lba/l;->c:J

    .line 119
    .line 120
    move-wide v2, p2

    .line 121
    invoke-static/range {v0 .. v5}, Lba/l;->e(JJJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide p1

    .line 125
    iput-wide p1, p0, Lba/l;->f:J

    .line 126
    .line 127
    if-eqz p5, :cond_6

    .line 128
    .line 129
    invoke-direct {p0}, Lba/l;->d()V

    .line 130
    .line 131
    .line 132
    :cond_6
    iput p4, p0, Lba/l;->d:I

    .line 133
    .line 134
    :cond_7
    return-void
.end method

.method public b(JI)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lba/l;->c:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long p3, v0, v2

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    const/4 p3, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p3, 0x0

    .line 15
    :goto_0
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lba/l;->c:J

    .line 19
    .line 20
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
    iput-object p1, p0, Lba/l;->b:Li9/e0;

    .line 7
    .line 8
    iget-object p2, p0, Lba/l;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

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
    iput-wide p1, p0, Lba/l;->c:J

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lba/l;->e:I

    .line 5
    .line 6
    iput-wide p3, p0, Lba/l;->g:J

    .line 7
    .line 8
    return-void
.end method
