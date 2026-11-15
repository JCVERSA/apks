.class public abstract Lcom/danikula/videocache/m;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/danikula/videocache/a;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private volatile d:I

.field protected volatile e:Z

.field private volatile f:Z

.field private volatile g:J

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/danikula/videocache/m;->c:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/danikula/videocache/m;->d:I

    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/danikula/videocache/m;->g:J

    .line 24
    .line 25
    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/danikula/videocache/a;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lcom/danikula/videocache/a;->F(Lcom/danikula/videocache/m;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/danikula/videocache/m;->f:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    .line 8
    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/danikula/videocache/m;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "waitForSourceData error\uff0c error = "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/danikula/videocache/a;->E(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/danikula/videocache/a;->C(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/danikula/videocache/m;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "-------get new data, notify wait~"

    .line 5
    .line 6
    invoke-static {v1}, Lcom/danikula/videocache/q;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/danikula/videocache/m;->f:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public d([BJILjava/lang/String;)I
    .locals 8

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/danikula/videocache/n;->a([BJI)V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/danikula/videocache/a;->isCompleted()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 13
    .line 14
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/danikula/videocache/a;->H(JILjava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/danikula/videocache/m;->e:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/danikula/videocache/m;->h:Z

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/danikula/videocache/m;->h()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/danikula/videocache/m;->h:Z

    .line 32
    .line 33
    const-string v1, " ,offset = "

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "isWaited\uff0c isAvailable = "

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 48
    .line 49
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/danikula/videocache/a;->H(JILjava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/danikula/videocache/m;->h:Z

    .line 71
    .line 72
    iget-object v2, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 73
    .line 74
    move-object v3, p1

    .line 75
    move-wide v4, p2

    .line 76
    move v6, p4

    .line 77
    move-object v7, p5

    .line 78
    invoke-interface/range {v2 .. v7}, Lcom/danikula/videocache/a;->D([BJILjava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-lez p1, :cond_2

    .line 83
    .line 84
    sget-object p4, Lcom/transsnet/downloader/util/h;->a:Lcom/transsnet/downloader/util/h;

    .line 85
    .line 86
    const-string p5, "4"

    .line 87
    .line 88
    invoke-virtual {p4, p5}, Lcom/transsnet/downloader/util/h;->b(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-wide p4, p0, Lcom/danikula/videocache/m;->g:J

    .line 92
    .line 93
    const-wide/16 v2, 0x0

    .line 94
    .line 95
    cmp-long p4, p4, v2

    .line 96
    .line 97
    if-ltz p4, :cond_3

    .line 98
    .line 99
    iget-wide p4, p0, Lcom/danikula/videocache/m;->g:J

    .line 100
    .line 101
    sub-long p4, p2, p4

    .line 102
    .line 103
    const-wide/32 v2, 0x7d000

    .line 104
    .line 105
    .line 106
    cmp-long p4, p4, v2

    .line 107
    .line 108
    if-lez p4, :cond_4

    .line 109
    .line 110
    if-lez p1, :cond_4

    .line 111
    .line 112
    :cond_3
    iput-wide p2, p0, Lcom/danikula/videocache/m;->g:J

    .line 113
    .line 114
    new-instance p4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string p5, "ProxyCache read\uff0c isCompleted = "

    .line 120
    .line 121
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object p5, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 125
    .line 126
    invoke-interface {p5}, Lcom/danikula/videocache/a;->isCompleted()Z

    .line 127
    .line 128
    .line 129
    move-result p5

    .line 130
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p2}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    return p1
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/m;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Shutdown proxy"

    .line 5
    .line 6
    invoke-static {v1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_1
    iput-boolean v1, p0, Lcom/danikula/videocache/m;->e:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/danikula/videocache/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Shutdown proxy, error = "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    throw v1
.end method

.method public f()V
    .locals 1

    .line 1
    const-string v0, "----start"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/danikula/videocache/m;->e:Z

    .line 8
    .line 9
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const-string v0, "--stop"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/danikula/videocache/m;->e:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/danikula/videocache/m;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
