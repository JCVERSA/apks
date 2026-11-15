.class public Lcom/transsion/socket/internal/SocketThreadHandler;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;
    }
.end annotation


# instance fields
.field private LOCK:Ljava/lang/Object;

.field private mQuit:Z

.field private mRunning:Z

.field private mSocket:Ljava/net/Socket;

.field private mSocketRunnable:Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;


# direct methods
.method public constructor <init>(Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mRunning:Z

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mQuit:Z

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mSocketRunnable:Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;

    return-void
.end method


# virtual methods
.method public bindSocket(Ljava/net/Socket;)Lcom/transsion/socket/internal/SocketThreadHandler;
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method public isThreadRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mRunning:Z

    return p0
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mQuit:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mSocketRunnable:Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mRunning:Z

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public safelyQuit()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mQuit:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mQuit:Z

    iget-object v1, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mSocket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/socket/internal/SocketThreadHandler;->mSocketRunnable:Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;->safelyQuit(Lcom/transsion/socket/internal/SocketThreadHandler;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
