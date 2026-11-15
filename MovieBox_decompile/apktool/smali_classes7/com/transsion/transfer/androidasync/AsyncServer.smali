.class public Lcom/transsion/transfer/androidasync/AsyncServer;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/AsyncServer$RunnableWrapper;,
        Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;,
        Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;,
        Lcom/transsion/transfer/androidasync/AsyncServer$d;,
        Lcom/transsion/transfer/androidasync/AsyncServer$b;,
        Lcom/transsion/transfer/androidasync/AsyncServer$c;,
        Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException;
    }
.end annotation


# static fields
.field static g:Lcom/transsion/transfer/androidasync/AsyncServer;

.field private static h:Ljava/util/concurrent/ExecutorService;

.field private static final i:Ljava/util/Comparator;

.field private static j:Ljava/util/concurrent/ExecutorService;

.field private static final k:Ljava/lang/ThreadLocal;


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/x;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field e:Ljava/util/PriorityQueue;

.field f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->g:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 7
    .line 8
    const-string v0, "AsyncServer-worker-"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->A(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    new-instance v0, Lcom/transsion/transfer/androidasync/AsyncServer$5;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/AsyncServer$5;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->i:Ljava/util/Comparator;

    .line 22
    .line 23
    const-string v0, "AsyncServer-resolver-"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->A(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->j:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->k:Ljava/lang/ThreadLocal;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    .line 4
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    if-nez p1, :cond_0

    .line 5
    const-string p1, "AsyncServer"

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->b:Ljava/lang/String;

    return-void
.end method

.method private static A(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncServer$c;

    .line 2
    .line 3
    invoke-direct {v7, p0}, Lcom/transsion/transfer/androidasync/AsyncServer$c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    .line 8
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    .line 12
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x4

    .line 17
    const-wide/16 v3, 0xa

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method private F()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    new-instance v0, Lcom/transsion/transfer/androidasync/x;

    .line 7
    .line 8
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/x;-><init>(Ljava/nio/channels/Selector;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$8;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer$8;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    const-string v2, "unable to create selector?"

    .line 43
    .line 44
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 49
    .line 50
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    invoke-static {p0, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->I(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    :try_end_3
    .catch Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException; {:try_start_3 .. :try_end_3} :catch_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_1
    :try_start_4
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 60
    .line 61
    .line 62
    :catch_2
    :goto_0
    return-void

    .line 63
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 64
    throw v0
.end method

.method private static G(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->I(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catch Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_1

    .line 6
    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v1, v1, Ljava/nio/channels/ClosedSelectorException;

    .line 12
    .line 13
    new-array v1, v0, [Ljava/io/Closeable;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 19
    .line 20
    .line 21
    :goto_1
    monitor-enter p0

    .line 22
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->isOpen()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-gtz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    :goto_2
    monitor-exit p0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->J(Lcom/transsion/transfer/androidasync/x;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 53
    .line 54
    if-ne p2, p1, :cond_2

    .line 55
    .line 56
    new-instance p1, Ljava/util/PriorityQueue;

    .line 57
    .line 58
    sget-object p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    .line 59
    .line 60
    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    .line 69
    .line 70
    :cond_2
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

.method private static I(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->z(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/util/PriorityQueue;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->m()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const-wide v4, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    cmp-long p2, v2, v4

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    move p2, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p2, v1

    .line 41
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    cmp-long p2, v2, v4

    .line 45
    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->k()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1, v2, v3}, Lcom/transsion/transfer/androidasync/x;->l(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->n()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :catch_1
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_a

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x0

    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/nio/channels/ServerSocketChannel;
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_1

    .line 90
    .line 91
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_1

    .line 95
    if-nez v4, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    :try_start_5
    invoke-virtual {v4, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v6, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v6, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v4, v6, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lst/f;

    .line 135
    .line 136
    new-instance v6, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    .line 137
    .line 138
    invoke-direct {v6}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Ljava/net/InetSocketAddress;

    .line 150
    .line 151
    invoke-virtual {v6, v4, v7}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, p0, v5}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->C(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v6}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-interface {v3, v6}, Lst/f;->t(Lcom/transsion/transfer/androidasync/j;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_1

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_2
    move-object v3, v5

    .line 165
    move-object v5, v4

    .line 166
    goto :goto_3

    .line 167
    :catch_3
    move-object v3, v5

    .line 168
    :goto_3
    :try_start_6
    new-array v4, v0, [Ljava/io/Closeable;

    .line 169
    .line 170
    aput-object v5, v4, v1

    .line 171
    .line 172
    invoke-static {v4}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 173
    .line 174
    .line 175
    if-eqz v3, :cond_4

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_7

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->p()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-virtual {p0, v3}, Lcom/transsion/transfer/androidasync/AsyncServer;->B(I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_7
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_8

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->o()V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_8
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_9

    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 236
    .line 237
    invoke-virtual {v3, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_1

    .line 238
    .line 239
    .line 240
    :try_start_7
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 241
    .line 242
    .line 243
    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;

    .line 244
    .line 245
    invoke-direct {v7}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, p0, v3}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->C(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    check-cast v8, Ljava/net/InetSocketAddress;

    .line 260
    .line 261
    invoke-virtual {v7, v6, v8}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->f(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v7}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_1

    .line 265
    .line 266
    .line 267
    :try_start_8
    invoke-virtual {v4, v7}, Lcom/transsion/transfer/androidasync/future/w;->J(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eqz v3, :cond_4

    .line 272
    .line 273
    iget-object v3, v4, Lcom/transsion/transfer/androidasync/AsyncServer$b;->g:Lst/b;

    .line 274
    .line 275
    invoke-interface {v3, v5, v7}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :catch_4
    move-exception v7

    .line 281
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 282
    .line 283
    .line 284
    new-array v3, v0, [Ljava/io/Closeable;

    .line 285
    .line 286
    aput-object v6, v3, v1

    .line 287
    .line 288
    invoke-static {v3}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v7}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_4

    .line 296
    .line 297
    iget-object v3, v4, Lcom/transsion/transfer/androidasync/AsyncServer$b;->g:Lst/b;

    .line 298
    .line 299
    invoke-interface {v3, v7, v5}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    .line 305
    .line 306
    const-string v4, "Unknown key state."

    .line 307
    .line 308
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v3
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_1

    .line 312
    :cond_a
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 317
    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 318
    :goto_5
    new-instance p1, Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException;

    .line 319
    .line 320
    invoke-direct {p1, p0}, Lcom/transsion/transfer/androidasync/AsyncServer$AsyncSelectorException;-><init>(Ljava/lang/Exception;)V

    .line 321
    .line 322
    .line 323
    throw p1
.end method

.method private static J(Lcom/transsion/transfer/androidasync/x;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->K(Lcom/transsion/transfer/androidasync/x;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/io/Closeable;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p0, v0, v1

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static K(Lcom/transsion/transfer/androidasync/x;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/io/Closeable;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v1, v2, v3

    .line 30
    .line 31
    invoke-static {v2}, Lcom/transsion/transfer/androidasync/util/d;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_1
    :cond_0
    return-void
.end method

.method private static N(Lcom/transsion/transfer/androidasync/x;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/androidasync/e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/e;-><init>(Lcom/transsion/transfer/androidasync/x;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->v(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->x(Lcom/transsion/transfer/androidasync/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->u([Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->w(Lcom/transsion/transfer/androidasync/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->s(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->i:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic h()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->k:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic i(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->G(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic j(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->J(Lcom/transsion/transfer/androidasync/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static r()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/AsyncServer;->g:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    return-object v0
.end method

.method private s(Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->l()Lcom/transsion/transfer/androidasync/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/x;->d()Ljava/nio/channels/Selector;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/o;->j(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncNetworkSocket;->C(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/nio/channels/SelectionKey;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static synthetic u([Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p0, p0, v0

    .line 3
    .line 4
    return-object p0
.end method

.method private static synthetic v(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static synthetic w(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method private static synthetic x(Lcom/transsion/transfer/androidasync/x;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/x;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method private static z(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/util/PriorityQueue;)J
    .locals 9

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    :goto_0
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    if-lez v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    .line 23
    .line 24
    iget-wide v6, v4, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    .line 25
    .line 26
    cmp-long v8, v6, v2

    .line 27
    .line 28
    if-gtz v8, :cond_0

    .line 29
    .line 30
    move-object v5, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    sub-long/2addr v6, v2

    .line 33
    invoke-virtual {p1, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-wide v0, v6

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    .line 45
    .line 46
    return-wide v0

    .line 47
    :cond_2
    invoke-virtual {v5}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->run()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method


# virtual methods
.method protected B(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected C(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/transsion/transfer/androidasync/future/n;->CANCELLED:Lcom/transsion/transfer/androidasync/future/a;

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, p2, v0

    .line 15
    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    add-long/2addr v0, p2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    .line 27
    .line 28
    add-int/lit8 p3, p2, 0x1

    .line 29
    .line 30
    iput p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->d:I

    .line 31
    .line 32
    int-to-long v0, p2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-lez p2, :cond_3

    .line 41
    .line 42
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    .line 49
    .line 50
    iget-wide p2, p2, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    .line 51
    .line 52
    const-wide/16 v2, 0x1

    .line 53
    .line 54
    sub-long/2addr p2, v2

    .line 55
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 60
    .line 61
    new-instance p3, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    .line 62
    .line 63
    invoke-direct {p3, p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Runnable;J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 70
    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->F()V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->t()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->N(Lcom/transsion/transfer/androidasync/x;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    monitor-exit p0

    .line 88
    return-object p3

    .line 89
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p1
.end method

.method public H(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->z(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/util/PriorityQueue;)J

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    monitor-enter p0

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->c:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/transsion/transfer/androidasync/d;

    .line 34
    .line 35
    invoke-direct {v1, p1, v0}, Lcom/transsion/transfer/androidasync/d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 39
    .line 40
    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    const-string v0, "NIO"

    .line 48
    .line 49
    const-string v1, "run"

    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p1
.end method

.method public L()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->M(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public M(Z)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/AsyncServer;->t()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    new-instance v4, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;

    .line 23
    .line 24
    new-instance v5, Lcom/transsion/transfer/androidasync/AsyncServer$1;

    .line 25
    .line 26
    invoke-direct {v5, p0, v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/concurrent/Semaphore;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    invoke-direct {v4, p0, v5, v6, v7}, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Runnable;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    sget-object v3, Lcom/transsion/transfer/androidasync/AsyncServer;->h:Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    new-instance v4, Lcom/transsion/transfer/androidasync/f;

    .line 40
    .line 41
    invoke-direct {v4, v1}, Lcom/transsion/transfer/androidasync/f;-><init>(Lcom/transsion/transfer/androidasync/x;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->K(Lcom/transsion/transfer/androidasync/x;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/util/PriorityQueue;

    .line 51
    .line 52
    sget-object v3, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;->INSTANCE:Lcom/transsion/transfer/androidasync/AsyncServer$Scheduler;

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-direct {v1, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->a:Lcom/transsion/transfer/androidasync/x;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    .line 64
    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_1
    return-void

    .line 74
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p1
.end method

.method public k(Ljava/net/InetSocketAddress;Lst/b;Lst/h;)Lcom/transsion/transfer/androidasync/AsyncServer$b;
    .locals 8

    .line 1
    new-instance v6, Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$b;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/h;)V

    .line 5
    .line 6
    .line 7
    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncServer$3;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, v6

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/AsyncServer$3;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/AsyncServer$b;Lst/b;Lst/h;Ljava/net/InetSocketAddress;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 19
    .line 20
    .line 21
    return-object v6
.end method

.method public l(Ljava/net/InetSocketAddress;Lst/b;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->k(Ljava/net/InetSocketAddress;Lst/b;Lst/h;)Lcom/transsion/transfer/androidasync/AsyncServer$b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public m(Ljava/lang/String;ILst/b;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/transsion/transfer/androidasync/AsyncServer;->n(Ljava/net/InetSocketAddress;Lst/b;)Lcom/transsion/transfer/androidasync/future/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public n(Ljava/net/InetSocketAddress;Lst/b;)Lcom/transsion/transfer/androidasync/future/a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/androidasync/AsyncServer;->l(Ljava/net/InetSocketAddress;Lst/b;)Lcom/transsion/transfer/androidasync/future/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->q(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/future/w;->setParent(Lcom/transsion/transfer/androidasync/future/a;)Z

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$a;

    .line 29
    .line 30
    invoke-direct {v2, p0, p2, v0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer$a;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Lst/b;Lcom/transsion/transfer/androidasync/future/w;Ljava/net/InetSocketAddress;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public o()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object v0
.end method

.method public p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/transsion/transfer/androidasync/AsyncServer;->j:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$6;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$6;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/future/w;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/transsion/transfer/androidasync/g;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/g;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/future/f;->i(Lcom/transsion/transfer/androidasync/future/y;)Lcom/transsion/transfer/androidasync/future/f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer;->f:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public y(Ljava/net/InetAddress;ILst/f;)Lcom/transsion/transfer/androidasync/i;
    .locals 8

    .line 1
    new-instance v6, Lcom/transsion/transfer/androidasync/AsyncServer$d;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$d;-><init>(Lcom/transsion/transfer/androidasync/h;)V

    .line 5
    .line 6
    .line 7
    new-instance v7, Lcom/transsion/transfer/androidasync/AsyncServer$2;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/AsyncServer$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/net/InetAddress;ILst/f;Lcom/transsion/transfer/androidasync/AsyncServer$d;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v7}, Lcom/transsion/transfer/androidasync/AsyncServer;->H(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v6, Lcom/transsion/transfer/androidasync/AsyncServer$d;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lcom/transsion/transfer/androidasync/i;

    .line 24
    .line 25
    return-object p1
.end method
