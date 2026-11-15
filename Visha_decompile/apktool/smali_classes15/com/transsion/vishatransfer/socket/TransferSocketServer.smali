.class public Lcom/transsion/vishatransfer/socket/TransferSocketServer;
.super Lcom/transsion/socket/SocketServer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;,
        Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransferSocketServer"

.field private static final sSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/vishatransfer/socket/TransferSocketServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isProgressCalled:Z

.field private isQuitSend:Z

.field private isSendThreadWait:Z

.field private mAverageSpeedPerSecond:J

.field private mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

.field private mCurrentTransferPhase:I

.field private mCurrentTransferType:I

.field private final mListWriteReadLock:Ljava/lang/Object;

.field private mRecentSpeedPerSecond:J

.field private mSocketServerListener:Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sSocketMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/transsion/socket/SocketServer;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mTransferMessageList:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mListWriteReadLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferType:I

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferPhase:I

    new-instance p1, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$1;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;JI)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->lambda$startSendData$0()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isProgressCalled:Z

    return p0
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sSocketMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->release()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sSocketMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferPhase:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferType:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketServerListener:Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTrafficStats;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTrafficStats:Lcom/transsion/socket/SocketTrafficStats;

    return-object p0
.end method

.method public static getInstance(I)Lcom/transsion/vishatransfer/socket/TransferSocketServer;
    .locals 3

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sSocketMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    if-nez v2, :cond_0

    new-instance v2, Lcom/transsion/vishatransfer/socket/TransferSocketServer;

    invoke-direct {v2, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic h(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)Lcom/transsion/socket/SocketTransferChannel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/vishatransfer/socket/TransferSocketServer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isProgressCalled:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/vishatransfer/socket/TransferSocketServer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mAverageSpeedPerSecond:J

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/vishatransfer/socket/TransferSocketServer;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferPhase:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/vishatransfer/socket/TransferSocketServer;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferType:I

    return-void
.end method

.method private synthetic lambda$startSendData$0()V
    .locals 5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isQuitSend:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mThread:Ljava/lang/Thread;

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
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mListWriteReadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishatransfer/socket/TransferMessage;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    move-object v1, v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isSendThreadWait:Z

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    iput-boolean v2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isSendThreadWait:Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isQuitSend:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mThread:Ljava/lang/Thread;

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

    goto :goto_6

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
    iput-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    new-instance v0, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getPhase()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v2}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->beforeSend()V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v1}, Lcom/transsion/vishatransfer/socket/TransferMessage;->getData()Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/socket/SocketTransferChannel;->sendData(Lcom/transsion/socket/pkgdata/SocketData;)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/socket/TransferMessage;->complete()V

    iput-object v3, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferMessage:Lcom/transsion/vishatransfer/socket/TransferMessage;

    goto/16 :goto_0

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_8
    :goto_6
    const-string p0, "TransferSocketServer"

    const-string v0, "server send thread quit!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/vishatransfer/socket/TransferSocketServer;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mRecentSpeedPerSecond:J

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/vishatransfer/socket/TransferSocketServer;Lcom/transsion/socket/SocketTransferChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketTransferChannel:Lcom/transsion/socket/SocketTransferChannel;

    return-void
.end method

.method private startSendData()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isSendThreadWait:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

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

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isQuitSend:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lv6b;

    invoke-direct {v1, p0}, Lv6b;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_3
    return-void
.end method


# virtual methods
.method public createHeadBeatCallBack()Lcom/transsion/socket/internal/SocketHeartBeat$IServerHeartBeat;
    .locals 1

    new-instance v0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$2;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V

    return-object v0
.end method

.method public createSocketDataReceiver()Lcom/transsion/socket/SocketDataTransfer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketServerListener:Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onCreateSuccess()V

    :cond_0
    new-instance v0, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$ServerSocketDataTransfer;-><init>(Lcom/transsion/vishatransfer/socket/TransferSocketServer;)V

    return-object v0
.end method

.method public getAverageSpeedPerSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mAverageSpeedPerSecond:J

    return-wide v0
.end method

.method public getRecentSpeedPerSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mRecentSpeedPerSecond:J

    return-wide v0
.end method

.method public getSocketServerListener()Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketServerListener:Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    return-object p0
.end method

.method public onSocketServerCreateFail(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/socket/SocketServer;->onSocketServerCreateFail(I)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketServerListener:Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;->onCreateFail()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mListWriteReadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isQuitSend:Z

    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isSendThreadWait:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mWaitLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mThread:Ljava/lang/Thread;

    sget-object v0, Lcom/transsion/socket/SocketServer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->sSocketMap:Ljava/util/Map;

    iget v2, p0, Lcom/transsion/socket/SocketServer;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/transsion/socket/SocketServer;->quit()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public resetCurrentTransferType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mCurrentTransferType:I

    return-void
.end method

.method public sendData(Lcom/transsion/vishatransfer/socket/TransferMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/socket/SocketServer;->getServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mListWriteReadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mTransferMessageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->startSendData()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Socket is closed or not bound"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "have not called openSocket"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSocketServerListener(Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->mSocketServerListener:Lcom/transsion/vishatransfer/socket/TransferSocketServer$SocketServerListener;

    return-void
.end method

.method public stopSend()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/socket/TransferSocketServer;->isQuitSend:Z

    return-void
.end method
