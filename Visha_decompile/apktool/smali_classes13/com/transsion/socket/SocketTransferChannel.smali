.class public Lcom/transsion/socket/SocketTransferChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;,
        Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;,
        Lcom/transsion/socket/SocketTransferChannel$SocketPackageImpl;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SocketTransferChannel"


# instance fields
.field final LOCK:Ljava/lang/Object;

.field final WAIT_LOCK:Ljava/lang/Object;

.field private dataCallback:Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

.field private init:Z

.field private isHeartBeat:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockDataRefCount:I

.field private mCallQuit:Z

.field private mCallReadySend:Z

.field private mCallSocketCompleted:Z

.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field mFlagWaitingSocketEnd:Z

.field private mIsClient:Z

.field private mIsWaitingTransferCompleted:Z

.field private volatile mLastReceiveHeartBeatTime:J

.field private mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

.field private mQuit:Z

.field private mReady:Z

.field private mReceiveInputStream:Lcom/transsion/socket/internal/SocketInputStream;

.field mReceiverHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

.field mSendHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

.field private mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

.field private mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

.field private mSkipComplete:Z

.field mSocket:Ljava/net/Socket;

.field private mSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

.field public final mSocketPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/socket/pkgdata/SocketData;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAsyncSend:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/transsion/socket/SocketDataTransfer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->WAIT_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallQuit:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallReadySend:Z

    iput v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReady:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSkipComplete:Z

    iput v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorCode:I

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsWaitingTransferCompleted:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mFlagWaitingSocketEnd:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSupportAsyncSend:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->init:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->listeners:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    iput-object p2, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/transsion/socket/SocketDataTransfer;->mIsSocketServer:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    iget-boolean v0, p2, Lcom/transsion/socket/SocketDataTransfer;->isHeartBeat:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    invoke-virtual {p2}, Lcom/transsion/socket/SocketDataTransfer;->onSupportAsyncSendData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSupportAsyncSend:Z

    :cond_0
    :try_start_0
    new-instance v0, Lcom/transsion/socket/internal/SocketOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/socket/internal/SocketOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    new-instance v0, Lcom/transsion/socket/internal/SocketInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/socket/internal/SocketInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiveInputStream:Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/transsion/socket/SocketDataTransfer;->beforeThreadCreate(Lcom/transsion/socket/SocketTransferChannel;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->createSendPackageHandler()V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->createReceiverHandler()V

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->updateThreadName()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "e-io-msg:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SocketTransferChannel"

    invoke-static {p2, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->socketError(I)V

    :goto_2
    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->dataCallback:Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

    return-object p0
.end method

.method private addSocketPackage(Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static bridge synthetic b(Lcom/transsion/socket/SocketTransferChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallReadySend:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/socket/SocketTransferChannel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method private createSendPackageHandler()V
    .locals 2

    new-instance v0, Lcom/transsion/socket/internal/SocketThreadHandler;

    new-instance v1, Lcom/transsion/socket/SocketTransferChannel$2;

    invoke-direct {v1, p0}, Lcom/transsion/socket/SocketTransferChannel$2;-><init>(Lcom/transsion/socket/SocketTransferChannel;)V

    invoke-direct {v0, v1}, Lcom/transsion/socket/internal/SocketThreadHandler;-><init>(Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/socket/SocketTransferChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/socket/SocketTransferChannel;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mLastReceiveHeartBeatTime:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/socket/SocketTransferChannel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    return p0
.end method

.method private getSocketErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/16 p0, 0x3e8

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketInputStream;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiveInputStream:Lcom/transsion/socket/internal/SocketInputStream;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    return-object p0
.end method

.method private isServer_HeartChannel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/internal/SocketThreadHandler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/socket/SocketTransferChannel;)Lcom/transsion/socket/SocketDataTransfer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/socket/SocketTransferChannel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallReadySend:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/socket/SocketTransferChannel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/socket/SocketTransferChannel;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mLastReceiveHeartBeatTime:J

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/socket/SocketTransferChannel;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->getSocketErrorCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Lcom/transsion/socket/SocketTransferChannel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->isServer_HeartChannel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->relSendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->runOnceReceiveHeartData()V

    return-void
.end method

.method private relSendData(Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SEND_DATA:Z

    const-string v1, "SocketTransferChannel"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData socketData = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/socket/pkgdata/SocketData;->isPackageData()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    invoke-virtual {p1}, Lcom/transsion/socket/pkgdata/SocketData;->toSocketPackage()Lcom/transsion/socket/internal/SocketStream$SocketPackage;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/socket/internal/SocketStream;->writeSocketPackage(Ljava/io/DataOutputStream;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    invoke-static {v0, p1}, Lcom/transsion/socket/internal/SocketStream;->writeSocketStream(Ljava/io/DataOutputStream;Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->dataCallback:Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

    if-eqz v0, :cond_4

    instance-of p1, p1, Lcom/transsion/socket/pkgdata/SocketFileData;

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;->OneDataTransferComplete()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->socketError(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private runOnceReceiveHeartData()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->init:Z

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    const-string v1, "SocketTransferChannel"

    const-string v2, "runOnceReceiveHeartData init server heart watch dog"

    invoke-static {v1, v2}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/socket/internal/SocketThreadHandler;->isThreadRunning()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/transsion/socket/internal/Watchdog;

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    invoke-virtual {v2}, Lcom/transsion/socket/SocketDataTransfer;->serverCheckHeartBeatTime()I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Lcom/transsion/socket/SocketTransferChannel$3;

    invoke-direct {v4, p0}, Lcom/transsion/socket/SocketTransferChannel$3;-><init>(Lcom/transsion/socket/SocketTransferChannel;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/transsion/socket/internal/Watchdog;-><init>(JLcom/transsion/socket/internal/Watchdog$ISocketWatchdog;Z)V

    new-instance v0, Lcom/transsion/socket/internal/SocketThreadHandler;

    new-instance v2, Lcom/transsion/socket/SocketTransferChannel$4;

    invoke-direct {v2, p0, v1}, Lcom/transsion/socket/SocketTransferChannel$4;-><init>(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/internal/Watchdog;)V

    invoke-direct {v0, v2}, Lcom/transsion/socket/internal/SocketThreadHandler;-><init>(Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

    const-string v1, "heart_check_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private updateThreadName()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiverHandler:Lcom/transsion/socket/internal/SocketThreadHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const-string v2, "_Heart_beat"

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive_thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    if-eqz v4, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send_thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    if-eqz p0, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkBlockDataRefAndQuit()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    iget-boolean v2, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsWaitingTransferCompleted:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->waitingTransferCompleted()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    if-eqz v1, :cond_1

    const-string v1, "SocketTransferChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSafelyQuit mBlockDataRefCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCallQuit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallQuit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallQuit:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketTransferChannel;->quitWithForce(Z)V

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public createReceiverHandler()V
    .locals 2

    new-instance v0, Lcom/transsion/socket/internal/SocketThreadHandler;

    new-instance v1, Lcom/transsion/socket/SocketTransferChannel$1;

    invoke-direct {v1, p0}, Lcom/transsion/socket/SocketTransferChannel$1;-><init>(Lcom/transsion/socket/SocketTransferChannel;)V

    invoke-direct {v0, v1}, Lcom/transsion/socket/internal/SocketThreadHandler;-><init>(Lcom/transsion/socket/internal/SocketThreadHandler$SocketRunnable;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiverHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-static {p0}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiverHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dumpSpeed()V
    .locals 0

    return-void
.end method

.method public flagWaitingSocketEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mFlagWaitingSocketEnd:Z

    return-void
.end method

.method public getCurrentReceiveTraffic()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiveInputStream:Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketInputStream;->getInputSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentSendTraffic()J
    .locals 2

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketOutputStream;->getOutputSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorCode:I

    return p0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    return-object p0
.end method

.method public isHeartBeat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    return p0
.end method

.method public ismQuit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    return p0
.end method

.method public ismReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReady:Z

    return p0
.end method

.method public mayRegisterHeartCallback(Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mayRegisterHeartCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "<>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketTransferChannel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorCode:I

    if-nez p1, :cond_2

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->socketError(I)V

    :cond_2
    return-void
.end method

.method public notifyChannelReady()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mReady:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;->onChannelReady(Lcom/transsion/socket/SocketTransferChannel;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyConnectFail()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mReady:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;->onChannelFail(Lcom/transsion/socket/SocketTransferChannel;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyConnectReq(Lcom/transsion/socket/pkgdata/SocketConnectData;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;->onClientReq(Lcom/transsion/socket/SocketTransferChannel;Lcom/transsion/socket/pkgdata/SocketConnectData;)V

    :cond_0
    return-void
.end method

.method public onSocketTransferCompleted(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->isServer_HeartChannel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mServerHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->getErrorCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;->onSocketError(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketDataTransfer:Lcom/transsion/socket/SocketDataTransfer;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/transsion/socket/SocketTransferChannel;->mFlagWaitingSocketEnd:Z

    if-eqz v3, :cond_2

    move p1, v1

    :cond_2
    iget-boolean v3, p0, Lcom/transsion/socket/SocketTransferChannel;->mSkipComplete:Z

    if-nez v3, :cond_3

    invoke-virtual {v2, p0, p1}, Lcom/transsion/socket/SocketDataTransfer;->onSocketTransferCompleted(Lcom/transsion/socket/SocketTransferChannel;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallSocketCompleted:Z

    :cond_4
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->WAIT_LOCK:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->WAIT_LOCK:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketTransferChannel;->quitWithForce(Z)V

    return-void
.end method

.method public quitWithForce(Z)V
    .locals 3

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_DATA_TRANSFER:Z

    if-eqz v0, :cond_0

    const-string v0, "SocketTransferChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_safelyQuit mBlockDataRefCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", forceQuit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    if-lez p1, :cond_2

    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mCallQuit:Z

    monitor-exit v0

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/transsion/socket/internal/SocketUtils;->close(Ljava/io/Closeable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/socket/internal/SocketThreadHandler;->safelyQuit()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiverHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/socket/internal/SocketThreadHandler;->safelyQuit()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/socket/internal/SocketThreadHandler;->safelyQuit()V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mServer_HeartCheckThread:Lcom/transsion/socket/internal/SocketThreadHandler;

    :cond_5
    iget-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;->onChannelQuit(Lcom/transsion/socket/SocketTransferChannel;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    :cond_6
    iput-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->dataCallback:Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public receiveSocketEnd()V
    .locals 2

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SEND_DATA:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveSocketEnd: mIsClient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHeartBeat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketTransferChannel"

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketTransferChannel;->onSocketTransferCompleted(Z)V

    return-void
.end method

.method public resetReceiveTraffic()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mReceiveInputStream:Lcom/transsion/socket/internal/SocketInputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketInputStream;->resetReceiveTraffic()V

    :cond_0
    return-void
.end method

.method public resetSendTraffic()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/internal/SocketOutputStream;->resetSendTraffic()V

    :cond_0
    return-void
.end method

.method public safelyQuit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketTransferChannel;->quitWithForce(Z)V

    return-void
.end method

.method public sendData(Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->ismReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->relSendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSupportAsyncSend:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsClient:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/socket/pkgdata/SocketData;->isBlockData()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/transsion/socket/pkgdata/SocketBlockData;

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-byte v0, v0, Lcom/transsion/socket/pkgdata/SocketBlockData;->mStatus:B

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->addSocketPackage(Lcom/transsion/socket/pkgdata/SocketData;)V

    return-void

    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->relSendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    return-void
.end method

.method public sendSocketPackage(Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendOutputStream:Lcom/transsion/socket/internal/SocketOutputStream;

    invoke-static {v0, p1}, Lcom/transsion/socket/internal/SocketStream;->writeSocketPackage(Ljava/io/DataOutputStream;Lcom/transsion/socket/internal/SocketStream$SocketPackage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SOCKET_PRINT_TRACE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e-msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SocketTransferChannel"

    invoke-static {v0, p1}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->getSocketErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->socketError(I)V

    :goto_0
    return-void
.end method

.method public setDataCallback(Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->dataCallback:Lcom/transsion/socket/SocketTransferChannel$ChannelDataCallback;

    return-void
.end method

.method public setHeartBeat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/SocketTransferChannel;->isHeartBeat:Z

    invoke-direct {p0}, Lcom/transsion/socket/SocketTransferChannel;->updateThreadName()V

    return-void
.end method

.method public setListener(Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mListener:Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;

    return-void
.end method

.method public setSkipComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSkipComplete:Z

    return-void
.end method

.method public socketError(I)V
    .locals 2

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SEND_DATA:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socketError errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mQuit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mQuit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketTransferChannel"

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorCode:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->onSocketTransferCompleted(Z)V

    return-void
.end method

.method public socketReceiverError(I)V
    .locals 2

    sget-boolean v0, Lcom/transsion/socket/SocketMain;->DEBUG_SEND_DATA:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socketReceiverError errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocketTransferChannel"

    invoke-static {v1, v0}, Lcom/transsion/socket/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/transsion/socket/SocketTransferChannel;->mErrorCode:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->onSocketTransferCompleted(Z)V

    return-void
.end method

.method public syncSendData(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public waitingTransferCompleted()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mSendHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/transsion/socket/pkgdata/SocketEndData;

    invoke-direct {v0}, Lcom/transsion/socket/pkgdata/SocketEndData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->WAIT_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/socket/SocketTransferChannel;->WAIT_LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/socket/SocketTransferChannel;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mBlockDataRefCount:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/socket/pkgdata/SocketEndData;

    invoke-direct {v1}, Lcom/transsion/socket/pkgdata/SocketEndData;-><init>()V

    invoke-virtual {p0, v1}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/socket/SocketTransferChannel;->mIsWaitingTransferCompleted:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
