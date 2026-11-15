.class public abstract Lcom/transsion/socket/SocketServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;


# static fields
.field public static final DURATION_RETRY:J = 0x1f4L

.field public static final LOCK:Ljava/lang/Object;

.field public static final MAX_RETRY_OPEN:I = 0x3

.field public static final MAX_SOCKET_NUM:I

.field static final TAG:Ljava/lang/String; = "SocketServer"


# instance fields
.field final BLOCKING_OPEN:Z

.field ipSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBound:Z

.field protected final mPort:I

.field mQuit:Z

.field private mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

.field mServerSocket:Ljava/net/ServerSocket;

.field final mSocketChanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/socket/SocketTransferChannel;",
            ">;"
        }
    .end annotation
.end field

.field mSocketThreadHandler:Lcom/transsion/socket/internal/SocketThreadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/transsion/socket/SocketServer;->MAX_SOCKET_NUM:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/socket/SocketServer;->BLOCKING_OPEN:Z

    iput p1, p0, Lcom/transsion/socket/SocketServer;->mPort:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/socket/SocketServer;ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/socket/SocketServer;->handNewClientReq(ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    return-void
.end method

.method private handNewClientReq(ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 3

    :try_start_0
    const-string v0, "SocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socket connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",accept = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/transsion/socket/pkgdata/SocketConnectData;->responseReqData()Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/transsion/socket/SocketTransferChannel;->setSkipComplete(Z)V

    invoke-virtual {p3, p1}, Lcom/transsion/socket/pkgdata/SocketConnectData;->refuse(Z)Lcom/transsion/socket/pkgdata/SocketConnectData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    invoke-virtual {p2}, Lcom/transsion/socket/SocketTransferChannel;->notifyConnectFail()V

    invoke-direct {p0, p2}, Lcom/transsion/socket/SocketServer;->onChannelQuitInternal(Lcom/transsion/socket/SocketTransferChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private mayAskUser(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->ifNoRemind()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/socket/SocketServer;->handNewClientReq(ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ltr9;

    invoke-direct {v0, p0}, Ltr9;-><init>(Lcom/transsion/socket/SocketServer;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/socket/SocketServer;->onNewClientRequest(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;Lcom/transsion/socket/Action3;)V

    :goto_0
    return-void
.end method

.method private onChannelQuitInternal(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v3}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public createHeadBeatCallBack()Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract createSocketDataReceiver()Lcom/transsion/socket/SocketDataTransfer;
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t mSocketChanelList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t ipSets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getServerSocket()Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public ifNoRemind()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isQuit()Z
    .locals 3

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->release()V

    monitor-exit v0

    return v2

    :cond_3
    :goto_1
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSocketBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportMultiClient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChannelQuit(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 2

    const-string v0, "SocketServer"

    const-string v1, " onChannelQuit "

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/socket/SocketTransferChannel;->mayRegisterHeartCallback(Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;)V

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketServer;->onChannelQuitInternal(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method public onChannelReady(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 2

    const-string v0, "SocketServer"

    const-string v1, "=============onConnectSuccess===="

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/socket/SocketServer;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTransferChannel;->mayRegisterHeartCallback(Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;)V

    return-void
.end method

.method public onChannelTimeout(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 4

    const-string v0, "SocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChannelTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v2}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onClientReq(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->isSupportMultiClient()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/socket/SocketServer;->handNewClientReq(ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/socket/SocketServer;->mayAskUser(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/socket/SocketServer;->handNewClientReq(ZLcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    return-void
.end method

.method public onNewClientRequest(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;Lcom/transsion/socket/Action3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/socket/SocketTransferChannel;",
            "Lcom/transsion/socket/pkgdata/SocketConnectData;",
            "Lcom/transsion/socket/Action3<",
            "Ljava/lang/Boolean;",
            "Lcom/transsion/socket/SocketTransferChannel;",
            "Lcom/transsion/socket/pkgdata/SocketConnectData;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, p1, p2}, Lcom/transsion/socket/Action3;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onSocketServerCreateFail(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSocketServerCreateFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mQuit:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SocketServer"

    invoke-static {p1, p0}, Lcom/transsion/socket/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openAcceptSocket()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    sget-object v1, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/transsion/socket/SocketServer;->MAX_SOCKET_NUM:I

    if-lt v2, v3, :cond_1

    const-string v2, "SocketServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openAcceptSocket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    monitor-exit v1

    return-void

    :cond_1
    new-instance v2, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->createSocketDataReceiver()Lcom/transsion/socket/SocketDataTransfer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/transsion/socket/SocketTransferChannel;-><init>(Ljava/net/Socket;Lcom/transsion/socket/SocketDataTransfer;)V

    invoke-virtual {v2, p0}, Lcom/transsion/socket/SocketTransferChannel;->setListener(Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;)V

    iget-object v0, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->quit()V

    :goto_1
    return-void
.end method

.method public openSocket()Z
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->createHeadBeatCallBack()Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/socket/SocketServer;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    const-string v0, "SocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSocket: mBound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketServer;->onSocketServerCreateFail(I)V

    return v1

    :cond_0
    const-string v0, "SocketServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSocket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/socket/SocketServer;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mQuit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    const-string v2, "SocketServer"

    const-string v3, "openSocket:new ServerSocket()"

    invoke-static {v2, v3}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    iput-object v2, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Lcom/transsion/socket/SocketServer;->mPort:I

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v3, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    if-nez v0, :cond_2

    const-string v0, "SocketServer"

    const-string v2, "openSocket:openAcceptSocket"

    invoke-static {v0, v2}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->openAcceptSocket()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    return v3

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string v2, "SocketServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSocket: IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketServer;->onSocketServerCreateFail(I)V

    return v1
.end method

.method public quit()V
    .locals 3

    const-string v0, "SocketServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mSocketThreadHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/socket/internal/SocketThreadHandler;->safelyQuit()V

    :cond_1
    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v1, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->safelyQuit()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/socket/SocketServer;->mSocketChanelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/socket/SocketServer;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    iget-object v1, p0, Lcom/transsion/socket/SocketServer;->ipSets:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/transsion/socket/SocketServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    :try_start_2
    iput-boolean v1, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iput-boolean v1, p0, Lcom/transsion/socket/SocketServer;->mBound:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_2
    :try_start_6
    monitor-exit v0

    return-void

    :goto_3
    iput-boolean v1, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    throw v2

    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public registerHearBeat(Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketServer;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->quit()V

    return-void
.end method

.method public runSocket(Lcom/transsion/socket/internal/SocketThreadHandler;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/socket/internal/SocketThreadHandler;->isThreadRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->openAcceptSocket()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public waitingBound()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mBound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/socket/SocketServer;->mQuit:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
