.class final Lcom/google/android/exoplayer2/source/rtsp/i0;
.super Lcom/google/android/exoplayer2/upstream/f;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/c;
.implements Lcom/google/android/exoplayer2/source/rtsp/u$b;


# instance fields
.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final f:J

.field private g:[B

.field private h:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->f:J

    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    new-array p1, p1, [B

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    move v1, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    .line 21
    .line 22
    add-int/2addr v2, v3

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x2

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v1, v4, v0

    .line 31
    .line 32
    aput-object v2, v4, v3

    .line 33
    .line 34
    const-string v0, "RTP/AVP/TCP;unicast;interleaved=%d-%d"

    .line 35
    .line 36
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public f([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()Lcom/google/android/exoplayer2/source/rtsp/u$b;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public read([BII)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    .line 13
    .line 14
    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    .line 25
    .line 26
    if-ne v1, p3, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    const/4 v2, -0x1

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->f:J

    .line 33
    .line 34
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    sub-int/2addr p3, v1

    .line 46
    array-length v2, v3

    .line 47
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    add-int/2addr p2, v1

    .line 52
    invoke-static {v3, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    array-length p1, v3

    .line 56
    if-ge p3, p1, :cond_3

    .line 57
    .line 58
    array-length p1, v3

    .line 59
    invoke-static {v3, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/i0;->g:[B

    .line 64
    .line 65
    :cond_3
    add-int/2addr v1, p3

    .line 66
    return v1

    .line 67
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 72
    .line 73
    .line 74
    return v2
.end method
