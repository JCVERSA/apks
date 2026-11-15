.class public final Lcom/squareup/okhttp/internal/http/n;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Lcom/squareup/okhttp/Address;

.field private final b:Lcom/squareup/okhttp/ConnectionPool;

.field private c:Lcom/squareup/okhttp/internal/http/l;

.field private d:Lhf/a;

.field private e:Z

.field private f:Z

.field private g:Lcom/squareup/okhttp/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    .line 7
    .line 8
    return-void
.end method

.method private e(Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 9
    .line 10
    iget v2, v1, Lhf/a;->g:I

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lhf/a;->getRoute()Lcom/squareup/okhttp/Route;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 19
    .line 20
    invoke-virtual {v2, v1, p1}, Lcom/squareup/okhttp/internal/http/l;->a(Lcom/squareup/okhttp/Route;Ljava/io/IOException;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 28
    .line 29
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/n;->d()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method private f(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    :try_start_0
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    :goto_0
    const/4 p3, 0x1

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z

    .line 16
    .line 17
    :cond_1
    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 18
    .line 19
    if-eqz p2, :cond_6

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iput-boolean p3, p2, Lhf/a;->k:Z

    .line 24
    .line 25
    :cond_2
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 26
    .line 27
    if-nez p1, :cond_6

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    iget-boolean p1, p2, Lhf/a;->k:Z

    .line 34
    .line 35
    if-eqz p1, :cond_6

    .line 36
    .line 37
    :cond_3
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/http/n;->p(Lhf/a;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 41
    .line 42
    iget p2, p1, Lhf/a;->g:I

    .line 43
    .line 44
    if-lez p2, :cond_4

    .line 45
    .line 46
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 47
    .line 48
    :cond_4
    iget-object p1, p1, Lhf/a;->j:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide p2

    .line 62
    iput-wide p2, p1, Lhf/a;->l:J

    .line 63
    .line 64
    sget-object p1, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 67
    .line 68
    iget-object p3, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 69
    .line 70
    invoke-virtual {p1, p2, p3}, Lcom/squareup/okhttp/internal/c;->connectionBecameIdle(Lcom/squareup/okhttp/ConnectionPool;Lhf/a;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move-object p1, v1

    .line 80
    :goto_1
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 81
    .line 82
    move-object v1, p1

    .line 83
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    invoke-virtual {v1}, Lhf/a;->getSocket()Ljava/net/Socket;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/squareup/okhttp/internal/g;->d(Ljava/net/Socket;)V

    .line 91
    .line 92
    .line 93
    :cond_7
    return-void

    .line 94
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p1
.end method

.method private g(IIIZ)Lhf/a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/n;->e:Z

    .line 5
    .line 6
    if-nez v1, :cond_6

    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 9
    .line 10
    if-nez v1, :cond_5

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/n;->f:Z

    .line 13
    .line 14
    if-nez v1, :cond_4

    .line 15
    .line 16
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-boolean v2, v1, Lhf/a;->k:Z

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, p0}, Lcom/squareup/okhttp/internal/c;->get(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/http/n;)Lhf/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-object v1

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Lcom/squareup/okhttp/internal/http/l;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->q()Lcom/squareup/okhttp/internal/f;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-direct {v1, v2, v3}, Lcom/squareup/okhttp/internal/http/l;-><init>(Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/f;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 61
    .line 62
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/l;->g()Lcom/squareup/okhttp/Route;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v7, Lhf/a;

    .line 70
    .line 71
    invoke-direct {v7, v0}, Lhf/a;-><init>(Lcom/squareup/okhttp/Route;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v7}, Lcom/squareup/okhttp/internal/http/n;->a(Lhf/a;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 78
    .line 79
    monitor-enter v1

    .line 80
    :try_start_1
    sget-object v0, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 83
    .line 84
    invoke-virtual {v0, v2, v7}, Lcom/squareup/okhttp/internal/c;->put(Lcom/squareup/okhttp/ConnectionPool;Lhf/a;)V

    .line 85
    .line 86
    .line 87
    iput-object v7, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/n;->f:Z

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/squareup/okhttp/Address;->getConnectionSpecs()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    move-object v1, v7

    .line 101
    move v2, p1

    .line 102
    move v3, p2

    .line 103
    move v4, p3

    .line 104
    move v6, p4

    .line 105
    invoke-virtual/range {v1 .. v6}, Lhf/a;->c(IIILjava/util/List;Z)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/n;->q()Lcom/squareup/okhttp/internal/f;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v7}, Lhf/a;->getRoute()Lcom/squareup/okhttp/Route;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/f;->a(Lcom/squareup/okhttp/Route;)V

    .line 117
    .line 118
    .line 119
    return-object v7

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    .line 123
    .line 124
    const-string p2, "Canceled"

    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    throw p1

    .line 132
    :cond_4
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 133
    .line 134
    const-string p2, "Canceled"

    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string p2, "stream != null"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    const-string p2, "released"

    .line 151
    .line 152
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    throw p1
.end method

.method private h(IIIZZ)Lhf/a;
    .locals 3

    .line 1
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/http/n;->g(IIIZ)Lhf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget v2, v0, Lhf/a;->g:I

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0, p5}, Lhf/a;->h(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/n;->d()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method private i(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    .line 16
    .line 17
    return p1

    .line 18
    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Ljava/security/cert/CertificateException;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method private j(Ljava/io/IOException;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method private p(Lhf/a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lhf/a;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p1, Lhf/a;->j:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/ref/Reference;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-ne v2, p0, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lhf/a;->j:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method private q()Lcom/squareup/okhttp/internal/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/c;->routeDatabase(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/internal/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public a(Lhf/a;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lhf/a;->j:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/n;->f:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/HttpStream;->cancel()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Lhf/a;->b()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public declared-synchronized c()Lhf/a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(IIIZZ)Lcom/squareup/okhttp/internal/http/HttpStream;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/http/n;->h(IIIZZ)Lhf/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p4, p1, Lhf/a;->f:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/squareup/okhttp/internal/http/e;

    .line 10
    .line 11
    iget-object p3, p1, Lhf/a;->f:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 12
    .line 13
    invoke-direct {p2, p0, p3}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/framed/FramedConnection;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lhf/a;->getSocket()Ljava/net/Socket;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 24
    .line 25
    .line 26
    iget-object p4, p1, Lhf/a;->h:Lokio/BufferedSource;

    .line 27
    .line 28
    invoke-interface {p4}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    int-to-long v0, p2

    .line 33
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    invoke-virtual {p4, v0, v1, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 36
    .line 37
    .line 38
    iget-object p4, p1, Lhf/a;->i:Lokio/BufferedSink;

    .line 39
    .line 40
    invoke-interface {p4}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    int-to-long v0, p3

    .line 45
    invoke-virtual {p4, v0, v1, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/squareup/okhttp/internal/http/d;

    .line 49
    .line 50
    iget-object p3, p1, Lhf/a;->h:Lokio/BufferedSource;

    .line 51
    .line 52
    iget-object p4, p1, Lhf/a;->i:Lokio/BufferedSink;

    .line 53
    .line 54
    invoke-direct {p2, p0, p3, p4}, Lcom/squareup/okhttp/internal/http/d;-><init>(Lcom/squareup/okhttp/internal/http/n;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p3, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 58
    .line 59
    monitor-enter p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    iget p4, p1, Lhf/a;->g:I

    .line 61
    .line 62
    add-int/lit8 p4, p4, 0x1

    .line 63
    .line 64
    iput p4, p1, Lhf/a;->g:I

    .line 65
    .line 66
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 67
    .line 68
    monitor-exit p3

    .line 69
    return-object p2

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :goto_1
    new-instance p2, Lcom/squareup/okhttp/internal/http/RouteException;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 76
    .line 77
    .line 78
    throw p2
.end method

.method public l()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v1}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lcom/squareup/okhttp/internal/http/RouteException;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/n;->e(Ljava/io/IOException;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/l;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/n;->i(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_3
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public n(Ljava/io/IOException;Lokio/Sink;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->d:Lhf/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lhf/a;->g:I

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/n;->e(Ljava/io/IOException;)V

    .line 10
    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    if-eqz p2, :cond_2

    .line 16
    .line 17
    instance-of p2, p2, Lcom/squareup/okhttp/internal/http/k;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move p2, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move p2, v2

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->c:Lcom/squareup/okhttp/internal/http/l;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/l;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/n;->j(Ljava/io/IOException;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    if-nez p2, :cond_4

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    return v2

    .line 45
    :cond_5
    :goto_2
    return v1
.end method

.method public o()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Lcom/squareup/okhttp/internal/http/HttpStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->b:Lcom/squareup/okhttp/ConnectionPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 p1, 0x1

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0, p1}, Lcom/squareup/okhttp/internal/http/n;->f(ZZZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "expected "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/n;->g:Lcom/squareup/okhttp/internal/http/HttpStream;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " but was "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/n;->a:Lcom/squareup/okhttp/Address;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
