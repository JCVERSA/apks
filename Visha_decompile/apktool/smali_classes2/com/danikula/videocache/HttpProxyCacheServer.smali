.class public Lcom/danikula/videocache/HttpProxyCacheServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/HttpProxyCacheServer$b;,
        Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;,
        Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;
    }
.end annotation


# static fields
.field public static final i:Lqq5;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/net/ServerSocket;

.field public final e:I

.field public final f:Ljava/lang/Thread;

.field public final g:Loe1;

.field public final h:Lk18;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HttpProxyCacheServer"

    invoke-static {v0}, Lsq5;->j(Ljava/lang/String;)Lqq5;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    return-void
.end method

.method public constructor <init>(Loe1;)V
    .locals 4

    .line 2
    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    const/16 v1, 0x8

    .line 4
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Lae8;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loe1;

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->g:Loe1;

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 8
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->d:Ljava/net/ServerSocket;

    .line 9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->e:I

    .line 10
    invoke-static {v0, p1}, Lrx4;->a(Ljava/lang/String;I)V

    .line 11
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;

    invoke-direct {v3, p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer$WaitRequestsRunnable;-><init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->f:Ljava/lang/Thread;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 15
    new-instance v1, Lk18;

    invoke-direct {v1, v0, p1}, Lk18;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lk18;

    .line 16
    sget-object p1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy cache server started. Is it alive? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lqq5;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    iget-object p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Error starting local proxy server"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public synthetic constructor <init>(Loe1;Lcom/danikula/videocache/HttpProxyCacheServer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Loe1;)V

    return-void
.end method

.method public static synthetic a(Lcom/danikula/videocache/HttpProxyCacheServer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->s()V

    return-void
.end method

.method public static synthetic b(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->o(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Lvj8;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "127.0.0.1"

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://%s:%d/%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/net/Socket;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->n(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final e(Ljava/net/Socket;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->n(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    const-string p1, "Releasing input stream\u2026 Socket is closed by client."

    invoke-interface {p0, p1}, Lqq5;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final f(Ljava/net/Socket;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    const-string v0, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lqq5;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->g:Loe1;

    iget-object v0, p0, Loe1;->a:Ljava/io/File;

    iget-object p0, p0, Loe1;->b:Lrq3;

    invoke-interface {p0, p1}, Lrq3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljt4;
    .locals 3

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljt4;

    if-nez v1, :cond_0

    new-instance v1, Ljt4;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->g:Loe1;

    invoke-direct {v1, p1, v2}, Ljt4;-><init>(Ljava/lang/String;Loe1;)V

    iget-object p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()I
    .locals 3

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljt4;

    invoke-virtual {v2}, Ljt4;->b()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->m(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->r(Ljava/io/File;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->l()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final l()Z
    .locals 2

    iget-object p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lk18;

    const/4 v0, 0x3

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lk18;->e(II)Z

    move-result p0

    return p0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lae8;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 1

    sget-object p0, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    const-string v0, "HttpProxyCacheServer error"

    invoke-interface {p0, v0, p1}, Lqq5;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Ljava/net/Socket;)V
    .locals 5

    const-string v0, "Opened connections: "

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lhh4;->c(Ljava/io/InputStream;)Lhh4;

    move-result-object v1

    sget-object v2, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to cache proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lqq5;->debug(Ljava/lang/String;)V

    iget-object v3, v1, Lhh4;->a:Ljava/lang/String;

    invoke-static {v3}, Lvj8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lk18;

    invoke-virtual {v4, v3}, Lk18;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->h:Lk18;

    invoke-virtual {v1, p1}, Lk18;->g(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/danikula/videocache/HttpProxyCacheServer;->h(Ljava/lang/String;)Ljt4;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Ljt4;->d(Lhh4;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->q(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->i()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lqq5;->debug(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    :try_start_1
    new-instance v2, Lcom/danikula/videocache/ProxyCacheException;

    const-string v3, "Error processing request"

    invoke-direct {v2, v3, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;->n(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->q(Ljava/net/Socket;)V

    sget-object p1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->i()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lqq5;->debug(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    :try_start_2
    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    const-string v2, "Closing socket\u2026 Socket is closed by client."

    invoke-interface {v1, v2}, Lqq5;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->q(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->i()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lqq5;->debug(Ljava/lang/String;)V

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->q(Ljava/net/Socket;)V

    sget-object p1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->i()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lqq5;->debug(Ljava/lang/String;)V

    throw v1
.end method

.method public p(Lsp0;Ljava/lang/String;)V
    .locals 1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lae8;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->h(Ljava/lang/String;)Ljt4;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljt4;->e(Lsp0;)V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    const-string p2, "Error registering cache listener"

    invoke-interface {p1, p2, p0}, Lqq5;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final q(Ljava/net/Socket;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->e(Ljava/net/Socket;)V

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->f(Ljava/net/Socket;)V

    invoke-virtual {p0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->d(Ljava/net/Socket;)V

    return-void
.end method

.method public final r(Ljava/io/File;)V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->g:Loe1;

    iget-object p0, p0, Loe1;->c:Lhc2;

    invoke-interface {p0, p1}, Lhc2;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error touching file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lqq5;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 4

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    sget-object v1, Lcom/danikula/videocache/HttpProxyCacheServer;->i:Lqq5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lqq5;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;

    invoke-direct {v2, p0, v0}, Lcom/danikula/videocache/HttpProxyCacheServer$SocketProcessorRunnable;-><init>(Lcom/danikula/videocache/HttpProxyCacheServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;->n(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
