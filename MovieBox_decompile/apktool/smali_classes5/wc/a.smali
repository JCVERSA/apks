.class public final Lwc/a;
.super Ljava/io/InputStream;
.source "source.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcom/google/firebase/perf/metrics/i;

.field private final c:Lcom/google/firebase/perf/util/Timer;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/i;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lwc/a;->d:J

    .line 7
    .line 8
    iput-wide v0, p0, Lwc/a;->f:J

    .line 9
    .line 10
    iput-object p3, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 11
    .line 12
    iput-object p1, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 13
    .line 14
    iput-object p2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/i;->c()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lwc/a;->e:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 10
    .line 11
    iget-object v2, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 21
    .line 22
    invoke-static {v1}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lwc/a;->f:J

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iput-wide v0, p0, Lwc/a;->f:J

    .line 16
    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lwc/a;->d:J

    .line 23
    .line 24
    cmp-long v2, v0, v4

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-wide v0, p0, Lwc/a;->e:J

    .line 37
    .line 38
    cmp-long v2, v0, v4

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->p(J)Lcom/google/firebase/perf/metrics/i;

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 48
    .line 49
    iget-wide v1, p0, Lwc/a;->f:J

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 61
    .line 62
    iget-object v2, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 72
    .line 73
    invoke-static {v1}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read()I
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2
    iget-object v1, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lwc/a;->e:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 4
    iput-wide v1, p0, Lwc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 5
    iget-wide v3, p0, Lwc/a;->f:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 6
    iput-wide v1, p0, Lwc/a;->f:J

    .line 7
    iget-object v3, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 8
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v1, p0, Lwc/a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lwc/a;->d:J

    .line 10
    iget-object v3, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    .line 11
    :goto_2
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v2, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 12
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v1}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 13
    throw v0
.end method

.method public read([B)I
    .locals 6

    .line 27
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 28
    iget-object v0, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lwc/a;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 30
    iput-wide v0, p0, Lwc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 31
    iget-wide v2, p0, Lwc/a;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 32
    iput-wide v0, p0, Lwc/a;->f:J

    .line 33
    iget-object v2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 34
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_1

    .line 35
    :cond_1
    iget-wide v0, p0, Lwc/a;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwc/a;->d:J

    .line 36
    iget-object v2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    .line 37
    :goto_2
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 38
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {v0}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 39
    throw p1
.end method

.method public read([BII)I
    .locals 4

    .line 14
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 15
    iget-object p2, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide p2

    .line 16
    iget-wide v0, p0, Lwc/a;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 17
    iput-wide p2, p0, Lwc/a;->e:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 18
    iget-wide v0, p0, Lwc/a;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 19
    iput-wide p2, p0, Lwc/a;->f:J

    .line 20
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 21
    iget-object p2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_1

    .line 22
    :cond_1
    iget-wide p2, p0, Lwc/a;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lwc/a;->d:J

    .line 23
    iget-object v0, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    .line 24
    :goto_2
    iget-object p2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    iget-object p3, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 25
    iget-object p2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    invoke-static {p2}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 26
    throw p1
.end method

.method public reset()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 9
    .line 10
    iget-object v2, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 20
    .line 21
    invoke-static {v1}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public skip(J)J
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lwc/a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lwc/a;->e:J

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lwc/a;->e:J

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    cmp-long v2, p1, v4

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iget-wide v2, p0, Lwc/a;->f:J

    .line 31
    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iput-wide v0, p0, Lwc/a;->f:J

    .line 37
    .line 38
    iget-object v2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-wide v0, p0, Lwc/a;->d:J

    .line 45
    .line 46
    add-long/2addr v0, p1

    .line 47
    iput-wide v0, p0, Lwc/a;->d:J

    .line 48
    .line 49
    iget-object v2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 50
    .line 51
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_1
    return-wide p1

    .line 55
    :goto_2
    iget-object p2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 56
    .line 57
    iget-object v0, p0, Lwc/a;->c:Lcom/google/firebase/perf/util/Timer;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lwc/a;->b:Lcom/google/firebase/perf/metrics/i;

    .line 67
    .line 68
    invoke-static {p2}, Lwc/f;->d(Lcom/google/firebase/perf/metrics/i;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method
