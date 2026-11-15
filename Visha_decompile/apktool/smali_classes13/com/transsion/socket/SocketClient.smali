.class public Lcom/transsion/socket/SocketClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;


# static fields
.field public static final DEF_MAX_RETRY_COUNT:I = 0x4

.field public static final DEF_RETRY_INTERVAL:J = 0xa0L

.field private static final TAG:Ljava/lang/String; = "SocketClient"


# instance fields
.field LOCK:Ljava/lang/Object;

.field private final MAX_RETRY_COUNT:I

.field mHeatBeatPackageHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

.field mQuit:Z

.field private mRetryInterval:J

.field private mRryCount:I

.field mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat;

.field mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    const-wide/16 v1, 0xa0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/socket/SocketClient;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/socket/SocketClient;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/socket/SocketClient;->mQuit:Z

    .line 5
    iput v0, p0, Lcom/transsion/socket/SocketClient;->mRryCount:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/transsion/socket/SocketClient;->mRetryInterval:J

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 7
    :cond_0
    iput p1, p0, Lcom/transsion/socket/SocketClient;->MAX_RETRY_COUNT:I

    .line 8
    iput-wide p2, p0, Lcom/transsion/socket/SocketClient;->mRetryInterval:J

    return-void
.end method

.method private checkSocketTransferChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mHeatBeatPackageHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string v0, "Do not created SocketTransferChannel repeatedly!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createSocket(ZLjava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;
    .locals 10

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget v2, p0, Lcom/transsion/socket/SocketClient;->mRryCount:I

    iget v3, p0, Lcom/transsion/socket/SocketClient;->MAX_RETRY_COUNT:I

    if-ge v2, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/socket/SocketClient;->mRryCount:I

    const-string v2, "SocketClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSocket-ipAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mRryCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/socket/SocketClient;->mRryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/transsion/socket/SocketClient;->mQuit:Z

    if-eqz v2, :cond_0

    const-string p1, "SocketClient"

    const-string p2, "createSocket-quit: true"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/transsion/socket/SocketClient;->mRryCount:I

    iget v2, p0, Lcom/transsion/socket/SocketClient;->MAX_RETRY_COUNT:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    move-object v4, p0

    move v5, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/transsion/socket/SocketClient;->relCreateSocket(ZZLjava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;

    move-result-object v1

    const-string v2, "SocketClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSocket-transferChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mQuit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/socket/SocketClient;->mQuit:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/transsion/socket/SocketClient;->mRryCount:I

    shl-int v2, v3, v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/transsion/socket/SocketClient;->mRetryInterval:J

    mul-long/2addr v2, v4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1, p0}, Lcom/transsion/socket/SocketTransferChannel;->setListener(Lcom/transsion/socket/SocketTransferChannel$ChannelLifeListener;)V

    invoke-virtual {p0}, Lcom/transsion/socket/SocketClient;->ifBlockChannelCreate()Z

    move-result p0

    if-eqz p0, :cond_6

    :catch_1
    :goto_3
    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->ismQuit()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->ismReady()Z

    move-result p0

    if-nez p0, :cond_6

    :try_start_1
    iget-object p0, v1, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->ismQuit()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->ismReady()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, v1, Lcom/transsion/socket/SocketTransferChannel;->mSocketPackageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->ismQuit()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v0

    :cond_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/transsion/socket/SocketClient;->onConnectFail(Lcom/transsion/socket/SocketTransferChannel;)V

    return-object v0
.end method

.method private relCreateSocket(ZZLjava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;
    .locals 2

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/socket/SocketClient;->onBeforeConnectSocketConfig(Ljava/net/Socket;Z)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    new-instance p1, Lcom/transsion/socket/SocketTransferChannel;

    invoke-direct {p1, v0, p5}, Lcom/transsion/socket/SocketTransferChannel;-><init>(Ljava/net/Socket;Lcom/transsion/socket/SocketDataTransfer;)V

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->getErrorCode()I

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketClient;->quit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    return-object p1

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/socket/SocketClient;->quit()V

    :cond_2
    return-object v1
.end method

.method private socketQuit()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/socket/SocketClient;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/socket/SocketClient;->mQuit:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/socket/SocketClient;->mQuit:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/socket/SocketClient;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/socket/internal/SocketHeartBeat;->quit()V

    iput-object v2, p0, Lcom/transsion/socket/SocketClient;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat;

    :cond_1
    iget-object v0, p0, Lcom/transsion/socket/SocketClient;->mHeatBeatPackageHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/socket/internal/SocketThreadHandler;->safelyQuit()V

    iput-object v2, p0, Lcom/transsion/socket/SocketClient;->mHeatBeatPackageHandler:Lcom/transsion/socket/internal/SocketThreadHandler;

    :cond_2
    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getHeatBeatTransferChannel()Lcom/transsion/socket/SocketTransferChannel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    return-object p0
.end method

.method public ifBlockChannelCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public ifNeedVersion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBeforeConnectSocketConfig(Ljava/net/Socket;Z)V
    .locals 0

    return-void
.end method

.method public final onChannelFail(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketClient;->onConnectFail(Lcom/transsion/socket/SocketTransferChannel;)V

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->safelyQuit()V

    return-void
.end method

.method public onChannelQuit(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    invoke-direct {p0}, Lcom/transsion/socket/SocketClient;->socketQuit()Z

    const-string p0, "SocketClient"

    const-string p1, " onChannelQuit "

    invoke-static {p0, p1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onChannelReady(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketClient;->onConnectSuccess(Lcom/transsion/socket/SocketTransferChannel;)V

    return-void
.end method

.method public onConnectFail(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    const-string p0, "SocketClient"

    const-string p1, "=============onConnectFail===="

    invoke-static {p0, p1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectSuccess(Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    const-string p0, "SocketClient"

    const-string p1, "=============onConnectSuccess===="

    invoke-static {p0, p1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openHeartBeatSocket(Ljava/lang/String;IJLcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/socket/SocketClient;->checkSocketTransferChannel()V

    new-instance v0, Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-direct {v0, p0, p3, p4, p5}, Lcom/transsion/socket/internal/SocketHeartBeat;-><init>(Lcom/transsion/socket/SocketClient;JLcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;)V

    iput-object v0, p0, Lcom/transsion/socket/SocketClient;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat;

    const-string p3, "heart_beat_thread"

    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/socket/SocketClient;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-virtual {p3}, Lcom/transsion/socket/internal/SocketHeartBeat;->getHeartSocketDataTransfer()Lcom/transsion/socket/SocketDataTransfer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/transsion/socket/SocketClient;->createSocket(ZLjava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    iget-boolean p2, p0, Lcom/transsion/socket/SocketClient;->mQuit:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mSocketHeartBeat:Lcom/transsion/socket/internal/SocketHeartBeat;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const-string p0, "SocketClient"

    const-string p1, "openHeartBeatSocket: "

    invoke-static {p0, p1}, Lcom/transsion/socket/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openSocket(Ljava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/socket/SocketClient;->checkSocketTransferChannel()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/socket/SocketClient;->createSocket(ZLjava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    return-object p1
.end method

.method public quit()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/socket/SocketClient;->socketQuit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    :cond_1
    return-void
.end method

.method public safelyQuit()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/socket/SocketClient;->socketQuit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->safelyQuit()V

    :cond_1
    return-void
.end method

.method public sendData(Lcom/transsion/socket/pkgdata/SocketData;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    :cond_0
    return-void
.end method

.method public waitingTransferCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/socket/SocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketTransferChannel;->waitingTransferCompleted()V

    :cond_0
    return-void
.end method
