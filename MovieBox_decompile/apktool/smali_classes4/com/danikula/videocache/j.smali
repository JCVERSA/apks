.class Lcom/danikula/videocache/j;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/danikula/videocache/j;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput p2, p0, Lcom/danikula/videocache/j;->c:I

    .line 19
    .line 20
    return-void
.end method

.method static bridge synthetic a(Lcom/danikula/videocache/j;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/j;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private b()Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/net/URI;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/danikula/videocache/j;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/j;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/danikula/videocache/j;->c:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x3

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v1, v3, v4

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object v2, v3, v1

    .line 19
    .line 20
    const-string v1, "ping"

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    aput-object v1, v3, v2

    .line 24
    .line 25
    const-string v1, "http://%s:%d/%s"

    .line 26
    .line 27
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method private f()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/j;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/danikula/videocache/h;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/danikula/videocache/h;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v0, "ping ok"

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/danikula/videocache/h;->d(J)V

    .line 19
    .line 20
    .line 21
    array-length v2, v0

    .line 22
    new-array v2, v2, [B

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/danikula/videocache/h;->f([B)I

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "Ping response: `"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v4, Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "`, pinged? "

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/danikula/videocache/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/danikula/videocache/h;->a()V

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    :try_start_1
    const-string v0, "Error reading ping response"

    .line 71
    .line 72
    invoke-static {v0}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/danikula/videocache/h;->a()V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    return v0

    .line 80
    :goto_0
    invoke-virtual {v1}, Lcom/danikula/videocache/h;->a()V

    .line 81
    .line 82
    .line 83
    throw v0
.end method


# virtual methods
.method d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "ping"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method e(II)Z
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt p1, v2, :cond_0

    .line 5
    .line 6
    move v3, v2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, v1

    .line 9
    :goto_0
    invoke-static {v3}, Lcom/danikula/videocache/l;->a(Z)V

    .line 10
    .line 11
    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    move v3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v3, v1

    .line 17
    :goto_1
    invoke-static {v3}, Lcom/danikula/videocache/l;->a(Z)V

    .line 18
    .line 19
    .line 20
    move v3, v1

    .line 21
    :goto_2
    if-ge v3, p1, :cond_3

    .line 22
    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v5, Lcom/danikula/videocache/j$a;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-direct {v5, p0, v6}, Lcom/danikula/videocache/j$a;-><init>(Lcom/danikula/videocache/j;Lcom/danikula/videocache/k;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    int-to-long v5, p2

    .line 36
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :catch_0
    const-string v4, "Error pinging server due to unexpected error"

    .line 52
    .line 53
    invoke-static {v4}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v5, "Error pinging server (attempt: "

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, ", timeout: "

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v5, "). "

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_3
    add-int/2addr v3, v2

    .line 91
    mul-int/2addr p2, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    div-int/2addr p2, v0

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p0}, Lcom/danikula/videocache/j;->b()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const/4 v5, 0x3

    .line 109
    new-array v5, v5, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object v3, v5, v1

    .line 112
    .line 113
    aput-object p2, v5, v2

    .line 114
    .line 115
    aput-object v4, v5, v0

    .line 116
    .line 117
    const-string p2, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s"

    .line 118
    .line 119
    invoke-static {p1, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return v1
.end method

.method g(Ljava/net/Socket;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "HTTP/1.1 200 OK\n\n"

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 12
    .line 13
    .line 14
    const-string v0, "ping ok"

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
