.class final Lcom/google/android/exoplayer2/source/rtsp/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/l;


# instance fields
.field private final a:Lba/j;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private final f:Lcom/google/android/exoplayer2/source/rtsp/i;

.field private g:Li9/n;

.field private h:Z

.field private volatile i:J

.field private volatile j:I

.field private k:Z

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/j;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->d:I

    .line 5
    .line 6
    new-instance p2, Lba/a;

    .line 7
    .line 8
    invoke-direct {p2}, Lba/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lba/a;->a(Lcom/google/android/exoplayer2/source/rtsp/j;)Lba/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lba/j;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lba/j;

    .line 22
    .line 23
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    .line 24
    .line 25
    const p2, 0xffe3

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/i;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/rtsp/i;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    .line 53
    .line 54
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    .line 63
    .line 64
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    .line 65
    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    .line 67
    .line 68
    return-void
.end method

.method private static a(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x1e

    .line 2
    .line 3
    sub-long/2addr p0, v0

    .line 4
    return-wide p0
.end method


# virtual methods
.method public b(Li9/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lba/j;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->d:I

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lba/j;->c(Li9/n;I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Li9/n;->endTracks()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Li9/b0$b;

    .line 12
    .line 13
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Li9/b0$b;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Li9/n;->g(Li9/b0;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->g:Li9/n;

    .line 25
    .line 26
    return-void
.end method

.method public c(Li9/m;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "RTP packets are transmitted in a packet stream do not support sniffing."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public d(Li9/m;Li9/a0;)I
    .locals 12

    .line 1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->g:Li9/n;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const v0, 0xffe3

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p1, p2, v1, v0}, Li9/m;->read([BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, -0x1

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g;->d(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/f;->a(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    .line 55
    .line 56
    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/i;->e(Lcom/google/android/exoplayer2/source/rtsp/g;J)Z

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    .line 60
    .line 61
    invoke-virtual {p1, v4, v5}, Lcom/google/android/exoplayer2/source/rtsp/i;->f(J)Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Z

    .line 69
    .line 70
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    .line 78
    .line 79
    cmp-long v0, v6, v2

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->h:J

    .line 84
    .line 85
    iput-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    .line 86
    .line 87
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    .line 88
    .line 89
    if-ne v0, p2, :cond_5

    .line 90
    .line 91
    iget p2, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->g:I

    .line 92
    .line 93
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    .line 94
    .line 95
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lba/j;

    .line 96
    .line 97
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    .line 98
    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    .line 100
    .line 101
    invoke-interface {p2, v6, v7, v0}, Lba/j;->b(JI)V

    .line 102
    .line 103
    .line 104
    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Z

    .line 106
    .line 107
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter p2

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Z

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    .line 115
    .line 116
    cmp-long p1, v4, v2

    .line 117
    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    .line 121
    .line 122
    cmp-long p1, v4, v2

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/i;->g()V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lba/j;

    .line 132
    .line 133
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    .line 134
    .line 135
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    .line 136
    .line 137
    invoke-interface {p1, v4, v5, v6, v7}, Lba/j;->seek(JJ)V

    .line 138
    .line 139
    .line 140
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Z

    .line 141
    .line 142
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    .line 143
    .line 144
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    goto :goto_1

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 150
    .line 151
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->k:[B

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->M([B)V

    .line 154
    .line 155
    .line 156
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->a:Lba/j;

    .line 157
    .line 158
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 159
    .line 160
    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->h:J

    .line 161
    .line 162
    iget v10, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->g:I

    .line 163
    .line 164
    iget-boolean v11, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->e:Z

    .line 165
    .line 166
    invoke-interface/range {v6 .. v11}, Lba/j;->a(Lcom/google/android/exoplayer2/util/d0;JIZ)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->f:Lcom/google/android/exoplayer2/source/rtsp/i;

    .line 170
    .line 171
    invoke-virtual {p1, v4, v5}, Lcom/google/android/exoplayer2/source/rtsp/i;->f(J)Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-nez p1, :cond_7

    .line 176
    .line 177
    :cond_8
    :goto_0
    monitor-exit p2

    .line 178
    return v1

    .line 179
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Z

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->m:J

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method
