.class public Lcom/transsion/vishatransfer/socket/TransferSocketClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;,
        Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransferSocketClient"

.field private static volatile mInstance:Lcom/transsion/vishatransfer/socket/TransferSocketClient;


# instance fields
.field private isProgressCalled:Z

.field private volatile isQuitSend:Z

.field private isSendThreadWait:Z

.field private mAverageSpeedPerSecond:J

.field private mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

.field private mCurrentTransferPhase:I

.field private mCurrentTransferType:I

.field private mHeartBeatClient:Lcom/transsion/socket/SocketClient;

.field private final mListWriteReadLock:Ljava/lang/Object;

.field private final mMessageLock:Ljava/lang/Object;

.field private mRecentSpeedPerSecond:J

.field private mSocketClientListener:Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

.field private final mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

.field private mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

.field private mThread:Ljava/lang/Thread;

.field private final mTransferMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/socket/TransferMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitLock:Ljava/lang/Object;

.field private needHeartBeat:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mTransferMessageList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mListWriteReadLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mMessageLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferType:I

    iput v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferPhase:I

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isSendThreadWait:Z

    new-instance v0, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$1;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;JI)V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    iput-boolean v3, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->needHeartBeat:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->lambda$startSendData$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferMessage;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferPhase:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferType:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mMessageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketClientListener:Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/vishatransfer/socket/TransferSocketClient;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isProgressCalled:Z

    return-void
.end method

.method public static getInstance()Lcom/transsion/vishatransfer/socket/TransferSocketClient;
    .locals 2

    sget-object v0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mInstance:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mInstance:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    invoke-direct {v1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;-><init>()V

    sput-object v1, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mInstance:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mInstance:Lcom/transsion/vishatransfer/socket/TransferSocketClient;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/transsion/vishatransfer/socket/TransferSocketClient;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mAverageSpeedPerSecond:J

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/vishatransfer/socket/TransferSocketClient;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferPhase:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/vishatransfer/socket/TransferSocketClient;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferType:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/vishatransfer/socket/TransferSocketClient;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mRecentSpeedPerSecond:J

    return-void
.end method

.method private synthetic lambda$startSendData$0()V
    .locals 10

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isQuitSend:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mListWriteReadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishatransfer/socket/TransferMessage;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    move-object v1, v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isSendThreadWait:Z

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    iput-boolean v3, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isSendThreadWait:Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isQuitSend:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    :cond_4
    :try_start_2
    monitor-exit v0

    goto/16 :goto_6

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    monitor-exit v0

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    iput-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    new-instance v0, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getPhase()I

    move-result v1

    iget-object v4, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v4}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getType()I

    move-result v4

    invoke-direct {v0, v1, v4}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/socket/SocketTransferChannel;->ismQuit()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {v1, v0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->isListenProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v3, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isProgressCalled:Z

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTrafficStats;->startTrafficStats()V

    :cond_8
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->beforeSend()V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getData()Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->isListenProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTrafficStats;->stopTrafficStats()V

    iget-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isProgressCalled:Z

    if-nez v0, :cond_9

    iget-object v3, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getData()Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v0

    check-cast v0, Lcom/transsion/socket/pkgdata/SocketFileData;

    invoke-virtual {v0}, Lcom/transsion/socket/pkgdata/SocketFileData;->calcTotalSendFileInfo()Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;

    move-result-object v0

    iget-wide v8, v0, Lcom/transsion/socket/pkgdata/SocketFileData$FileInfo;->mTransferLength:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/socket/SocketTrafficStats;->onSendSpeedUpdate(JJJ)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->complete()V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mMessageLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object v2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    monitor-exit v0

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_a
    :goto_6
    const-string p0, "TransferSocketClient"

    const-string v0, "client send thread quit!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startSendData()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isSendThreadWait:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isQuitSend:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu6b;

    invoke-direct {v1, p0}, Lu6b;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_3
    return-void
.end method


# virtual methods
.method public getAverageSpeedPerSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mAverageSpeedPerSecond:J

    return-wide v0
.end method

.method public getRecentSpeedPerSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mRecentSpeedPerSecond:J

    return-wide v0
.end method

.method public openHeartBeat(Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->needHeartBeat:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/transsion/socket/SocketClient;

    invoke-direct {v1}, Lcom/transsion/socket/SocketClient;-><init>()V

    iput-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mHeartBeatClient:Lcom/transsion/socket/SocketClient;

    new-instance v6, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;

    invoke-direct {v6, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$2;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V

    const/16 v3, 0x3072

    const-wide/16 v4, 0x7530

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/socket/SocketClient;->openHeartBeatSocket(Ljava/lang/String;IJLcom/transsion/socket/internal/SocketHeartBeat$ISocketHeartBeat;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->needHeartBeat:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->needHeartBeat:Z

    throw p1
.end method

.method public openSocket(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketClientListener:Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->quit()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/transsion/socket/SocketClient;

    invoke-direct {v0}, Lcom/transsion/socket/SocketClient;-><init>()V

    new-instance v1, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;

    invoke-direct {v1, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$ClientSocketDataTransfer;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketClient;)V

    const/16 v2, 0x3072

    invoke-virtual {v0, p1, v2, v1}, Lcom/transsion/socket/SocketClient;->openSocket(Ljava/lang/String;ILcom/transsion/socket/SocketDataTransfer;)Lcom/transsion/socket/SocketTransferChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketClientListener:Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onError(I)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketClientListener:Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    invoke-interface {p1}, Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;->onCreateSuccess()V

    iget-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    invoke-virtual {p1, p0}, Lcom/transsion/socket/SocketTrafficStats;->addSocketTransferChannel(Lcom/transsion/socket/SocketTransferChannel;)V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mSocketClientListener is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isQuitSend:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isQuitSend:Z

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mListWriteReadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->isSendThreadWait:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->safelyQuit()V

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mHeartBeatClient:Lcom/transsion/socket/SocketClient;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/socket/SocketClient;->quit()V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public resetCurrentTransferType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mCurrentTransferType:I

    return-void
.end method

.method public sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->ismQuit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mListWriteReadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->startSendData()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "have not connect any server"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNeedHeartBeat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->needHeartBeat:Z

    return-void
.end method

.method public setSocketClientListener(Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketClientListener:Lcom/transsion/vishatransfer/socket/TransferSocketClient$SocketClientListener;

    return-void
.end method

.method public waitRelease()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/socket/SocketTransferChannel;->waitingTransferCompleted()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mHeartBeatClient:Lcom/transsion/socket/SocketClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/socket/SocketClient;->waitingTransferCompleted()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketClient;->mHeartBeatClient:Lcom/transsion/socket/SocketClient;

    :cond_1
    return-void
.end method
