.class public Lda/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/l;


# instance fields
.field private final a:Lda/j;

.field private final b:Lda/d;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:Lcom/google/android/exoplayer2/p1;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:Li9/n;

.field private h:Li9/e0;

.field private i:I

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Lda/j;Lcom/google/android/exoplayer2/p1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lda/l;->a:Lda/j;

    .line 5
    .line 6
    new-instance p1, Lda/d;

    .line 7
    .line 8
    invoke-direct {p1}, Lda/d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lda/l;->b:Lda/d;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "text/x-exoplayer-cues"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p2, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lda/l;->d:Lcom/google/android/exoplayer2/p1;

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lda/l;->e:Ljava/util/List;

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lda/l;->f:Ljava/util/List;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lda/l;->j:I

    .line 58
    .line 59
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    iput-wide p1, p0, Lda/l;->k:J

    .line 65
    .line 66
    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/l;->a:Lda/j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lda/m;

    .line 8
    .line 9
    :goto_0
    const-wide/16 v1, 0x5

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lda/l;->a:Lda/j;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueInputBuffer()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lda/m;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    iget v3, p0, Lda/l;->i:I

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    iget-object v4, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget v5, p0, Lda/l;->i:I

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iget v4, p0, Lda/l;->i:I

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lda/l;->a:Lda/j;

    .line 54
    .line 55
    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/decoder/d;->queueInputBuffer(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lda/l;->a:Lda/j;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lda/n;

    .line 65
    .line 66
    :goto_1
    if-nez v0, :cond_1

    .line 67
    .line 68
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lda/l;->a:Lda/j;

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lda/n;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lda/n;->getEventTimeCount()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ge v6, v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0, v6}, Lda/n;->getEventTime(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    invoke-virtual {v0, v1, v2}, Lda/n;->getCues(J)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lda/l;->b:Lda/d;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lda/d;->a(Ljava/util/List;)[B

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lda/l;->e:Ljava/util/List;

    .line 101
    .line 102
    invoke-virtual {v0, v6}, Lda/n;->getEventTime(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lda/l;->f:Ljava/util/List;

    .line 114
    .line 115
    new-instance v3, Lcom/google/android/exoplayer2/util/d0;

    .line 116
    .line 117
    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 v6, v6, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/f;->l()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_3
    const-string v1, "SubtitleDecoder failed."

    .line 131
    .line 132
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    throw v0

    .line 137
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method private e(Li9/m;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lda/l;->i:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 12
    .line 13
    add-int/lit16 v1, v1, 0x400

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->c(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lda/l;->i:I

    .line 25
    .line 26
    iget-object v2, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->b()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v3, p0, Lda/l;->i:I

    .line 33
    .line 34
    sub-int/2addr v2, v3

    .line 35
    invoke-interface {p1, v0, v1, v2}, Li9/m;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, -0x1

    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    iget v2, p0, Lda/l;->i:I

    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    iput v2, p0, Lda/l;->i:I

    .line 46
    .line 47
    :cond_1
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    const-wide/16 v4, -0x1

    .line 52
    .line 53
    cmp-long p1, v2, v4

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget p1, p0, Lda/l;->i:I

    .line 58
    .line 59
    int-to-long v4, p1

    .line 60
    cmp-long p1, v4, v2

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    :cond_2
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    :cond_3
    const/4 p1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 p1, 0x0

    .line 69
    :goto_0
    return p1
.end method

.method private f(Li9/m;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x400

    .line 21
    .line 22
    :goto_0
    invoke-interface {p1, v0}, Li9/m;->skip(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, -0x1

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method

.method private g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lda/l;->h:Li9/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/l;->e:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lda/l;->f:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Lda/l;->k:J

    .line 29
    .line 30
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v4, v0, v4

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v4, p0, Lda/l;->e:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v4, v0, v3, v3}, Lcom/google/android/exoplayer2/util/p0;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_1
    iget-object v1, p0, Lda/l;->f:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ge v0, v1, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lda/l;->f:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/google/android/exoplayer2/util/d0;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    array-length v8, v3

    .line 75
    iget-object v3, p0, Lda/l;->h:Li9/e0;

    .line 76
    .line 77
    invoke-interface {v3, v1, v8}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lda/l;->h:Li9/e0;

    .line 81
    .line 82
    iget-object v1, p0, Lda/l;->e:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v7, 0x1

    .line 97
    invoke-interface/range {v4 .. v10}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method


# virtual methods
.method public b(Li9/n;)V
    .locals 7

    .line 1
    iget v0, p0, Lda/l;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lda/l;->g:Li9/n;

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-interface {p1, v1, v0}, Li9/n;->track(II)Li9/e0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lda/l;->h:Li9/e0;

    .line 21
    .line 22
    iget-object p1, p0, Lda/l;->g:Li9/n;

    .line 23
    .line 24
    invoke-interface {p1}, Li9/n;->endTracks()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lda/l;->g:Li9/n;

    .line 28
    .line 29
    new-instance v0, Li9/z;

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    new-array v5, v2, [J

    .line 34
    .line 35
    aput-wide v3, v5, v1

    .line 36
    .line 37
    new-array v6, v2, [J

    .line 38
    .line 39
    aput-wide v3, v6, v1

    .line 40
    .line 41
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v5, v6, v3, v4}, Li9/z;-><init>([J[JJ)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Li9/n;->g(Li9/b0;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lda/l;->h:Li9/e0;

    .line 53
    .line 54
    iget-object v0, p0, Lda/l;->d:Lcom/google/android/exoplayer2/p1;

    .line 55
    .line 56
    invoke-interface {p1, v0}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lda/l;->j:I

    .line 60
    .line 61
    return-void
.end method

.method public c(Li9/m;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public d(Li9/m;Li9/a0;)I
    .locals 7

    .line 1
    iget p2, p0, Lda/l;->j:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    if-eq p2, v2, :cond_0

    .line 9
    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v1

    .line 13
    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lda/l;->j:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne p2, v0, :cond_2

    .line 20
    .line 21
    iget-object p2, p0, Lda/l;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 22
    .line 23
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    const-wide/16 v5, -0x1

    .line 28
    .line 29
    cmp-long v0, v3, v5

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v0, 0x400

    .line 43
    .line 44
    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    .line 45
    .line 46
    .line 47
    iput v1, p0, Lda/l;->i:I

    .line 48
    .line 49
    iput v2, p0, Lda/l;->j:I

    .line 50
    .line 51
    :cond_2
    iget p2, p0, Lda/l;->j:I

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    if-ne p2, v2, :cond_3

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lda/l;->e(Li9/m;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    invoke-direct {p0}, Lda/l;->a()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lda/l;->g()V

    .line 66
    .line 67
    .line 68
    iput v0, p0, Lda/l;->j:I

    .line 69
    .line 70
    :cond_3
    iget p2, p0, Lda/l;->j:I

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    if-ne p2, v2, :cond_4

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lda/l;->f(Li9/m;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-direct {p0}, Lda/l;->g()V

    .line 82
    .line 83
    .line 84
    iput v0, p0, Lda/l;->j:I

    .line 85
    .line 86
    :cond_4
    iget p1, p0, Lda/l;->j:I

    .line 87
    .line 88
    if-ne p1, v0, :cond_5

    .line 89
    .line 90
    const/4 p1, -0x1

    .line 91
    return p1

    .line 92
    :cond_5
    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    iget v0, p0, Lda/l;->j:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lda/l;->a:Lda/j;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/d;->release()V

    .line 10
    .line 11
    .line 12
    iput v1, p0, Lda/l;->j:I

    .line 13
    .line 14
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget p1, p0, Lda/l;->j:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    move p1, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iput-wide p3, p0, Lda/l;->k:J

    .line 16
    .line 17
    iget p1, p0, Lda/l;->j:I

    .line 18
    .line 19
    const/4 p3, 0x2

    .line 20
    if-ne p1, p3, :cond_1

    .line 21
    .line 22
    iput p2, p0, Lda/l;->j:I

    .line 23
    .line 24
    :cond_1
    iget p1, p0, Lda/l;->j:I

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lda/l;->j:I

    .line 31
    .line 32
    :cond_2
    return-void
.end method
