.class public Lcom/mbridge/msdk/tracker/network/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mbridge/msdk/tracker/network/m;

.field private final c:Lcom/mbridge/msdk/tracker/network/b;

.field private final d:Lcom/mbridge/msdk/tracker/network/w;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/b;Lcom/mbridge/msdk/tracker/network/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;>;",
            "Lcom/mbridge/msdk/tracker/network/m;",
            "Lcom/mbridge/msdk/tracker/network/b;",
            "Lcom/mbridge/msdk/tracker/network/w;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/n;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/n;->a:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/tracker/network/n;->b:Lcom/mbridge/msdk/tracker/network/m;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mbridge/msdk/tracker/network/n;->c:Lcom/mbridge/msdk/tracker/network/b;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    .line 14
    .line 15
    return-void
.end method

.method private a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/n;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/tracker/network/t;

    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/tracker/network/n;->b(Lcom/mbridge/msdk/tracker/network/t;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->s()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;",
            "Lcom/mbridge/msdk/tracker/network/b0;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/tracker/network/t;->c(Lcom/mbridge/msdk/tracker/network/b0;)Lcom/mbridge/msdk/tracker/network/b0;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/tracker/network/w;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V

    return-void
.end method


# virtual methods
.method b(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    :try_start_0
    const-string v3, "network-queue-take"

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->v()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v3, "network-discard-cancelled"

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V
    :try_end_0
    .catch Lcom/mbridge/msdk/tracker/network/b0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :catch_0
    move-exception v3

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception v3

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->y()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/n;->a(Lcom/mbridge/msdk/tracker/network/t;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v3, p0, Lcom/mbridge/msdk/tracker/network/n;->b:Lcom/mbridge/msdk/tracker/network/m;

    .line 51
    .line 52
    invoke-interface {v3, p1}, Lcom/mbridge/msdk/tracker/network/m;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/tracker/network/q;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "network-http-complete"

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v4, v3, Lcom/mbridge/msdk/tracker/network/q;->e:Z

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->u()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    const-string v3, "not-modified"

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->c(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V
    :try_end_1
    .catch Lcom/mbridge/msdk/tracker/network/b0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/v;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "network-parse-complete"

    .line 88
    .line 89
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->z()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    iget-object v4, v3, Lcom/mbridge/msdk/tracker/network/v;->b:Lcom/mbridge/msdk/tracker/network/b$a;

    .line 99
    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/network/n;->c:Lcom/mbridge/msdk/tracker/network/b;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->e()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget-object v6, v3, Lcom/mbridge/msdk/tracker/network/v;->b:Lcom/mbridge/msdk/tracker/network/b$a;

    .line 109
    .line 110
    invoke-interface {v4, v5, v6}, Lcom/mbridge/msdk/tracker/network/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/tracker/network/b$a;)V

    .line 111
    .line 112
    .line 113
    const-string v4, "network-cache-written"

    .line 114
    .line 115
    invoke-virtual {p1, v4}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->w()V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    .line 122
    .line 123
    invoke-interface {v4, p1, v3}, Lcom/mbridge/msdk/tracker/network/w;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/v;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/v;)V
    :try_end_2
    .catch Lcom/mbridge/msdk/tracker/network/b0; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_0
    :try_start_3
    const-string v4, "Unhandled exception %s"

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const/4 v6, 0x1

    .line 137
    new-array v6, v6, [Ljava/lang/Object;

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    aput-object v5, v6, v7

    .line 141
    .line 142
    invoke-static {v3, v4, v6}, Lcom/mbridge/msdk/tracker/network/c0;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance v4, Lcom/mbridge/msdk/tracker/network/a0;

    .line 146
    .line 147
    invoke-direct {v4, v3}, Lcom/mbridge/msdk/tracker/network/a0;-><init>(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 151
    .line 152
    .line 153
    move-result-wide v5

    .line 154
    sub-long/2addr v5, v0

    .line 155
    invoke-virtual {v4, v5, v6}, Lcom/mbridge/msdk/tracker/network/b0;->a(J)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/n;->d:Lcom/mbridge/msdk/tracker/network/w;

    .line 159
    .line 160
    invoke-interface {v0, p1, v4}, Lcom/mbridge/msdk/tracker/network/w;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    sub-long/2addr v4, v0

    .line 172
    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/tracker/network/b0;->a(J)V

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, p1, v3}, Lcom/mbridge/msdk/tracker/network/n;->a(Lcom/mbridge/msdk/tracker/network/t;Lcom/mbridge/msdk/tracker/network/b0;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/t;->x()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_3
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/tracker/network/t;->a(I)V

    .line 186
    .line 187
    .line 188
    throw v0
.end method

.method public run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/tracker/network/n;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/n;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/mbridge/msdk/tracker/network/c0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0
.end method
