.class public Lcom/mgtv/downloader/p2p/ImgoP2pMgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/p2p/IP2pMgr;


# static fields
.field public static final CALLBACK_ID_CACHESTORAGE_NOSPACE:I = 0x1

.field public static final CALLBACK_ID_CACHE_FINISH:I = 0x0

.field public static final CALLBACK_ID_CDN_M3U8:I = 0x4b68

.field public static final CALLBACK_ID_DISK_NOT_ACCESS:I = 0x2

.field public static final CALLBACK_ID_FINISH_DOWNLOAD:I = 0x0

.field public static final CALLBACK_ID_FLOW_INFO:I = 0x4b0c

.field public static final CALLBACK_ID_HTTP_BEGIN:I = 0x46c7

.field public static final CALLBACK_ID_HTTP_END:I = 0x46c8

.field public static final CALLBACK_ID_HTTP_ERROR:I = 0x46c5

.field public static final CALLBACK_ID_MONGOTV_SPECIAL:I = 0x46c4

.field public static final CALLBACK_ID_NO_SPACE:I = 0x1

.field public static final CALLBACK_ID_P2P_LOG:I = 0x491e

.field public static final CALLBACK_ID_READDATA_CONFLICT:I = 0x46c6

.field public static final CALLBACK_ID_TASK_NOT_EXIST:I = 0x492b

.field public static final CALLBACK_ID_URL_INVALID:I = 0x3

.field public static final CALLBACK_ID_URL_OUTOFDATA:I = 0x3

.field public static final E_NET_AUTH_DISABLE:I = -0x16

.field public static final E_NET_AUTH_DOING:I = -0x12

.field public static final E_NET_AUTH_EXCEED_CLIENT_NUM:I = -0x14

.field public static final E_NET_AUTH_FAIL:I = -0x13

.field public static final E_NET_BIND_LOCAL_HTTP_PORT_FAIL:I = -0x11

.field public static final E_NET_BUFFER_NOT_ENOUGH:I = -0xb

.field public static final E_NET_CON_ERROR:I = -0x4

.field public static final E_NET_CREATE_TASK_FAILED:I = -0xa

.field public static final E_NET_DISK_NOT_ENOUGH:I = -0x9

.field public static final E_NET_DOMAIN_NOT_IN_WHITELIST:I = -0x15

.field public static final E_NET_ERROR_PARA:I = -0x5

.field public static final E_NET_FALSE:I = -0x1

.field public static final E_NET_GET_JAVA_METHOD_FAIL:I = -0xf

.field public static final E_NET_GET_JVM_FAIL:I = -0x10

.field public static final E_NET_NO_DATA:I = -0x8

.field public static final E_NET_NO_FILE:I = -0x6

.field public static final E_NET_NO_INIT:I = -0xe

.field public static final E_NET_NO_TASK_BY_HASH:I = -0xc

.field public static final E_NET_OK:I = 0x0

.field public static final E_NET_PATH_NOT_ACCESS:I = -0xd

.field public static final E_NET_READ_AGAIN:I = -0x22b

.field public static final E_NET_RECV_ERROR:I = -0x3

.field public static final E_NET_SEND_ERROR:I = -0x2

.field public static final E_NET_TASK_FINISH:I = 0x1

.field public static final E_NET_TIME_OUT:I = -0x7

.field public static final HTTP_ERROR_TYPE_DNS_FAIL:I = 0x1

.field public static final HTTP_ERROR_TYPE_HTTP_REQUEST_TIMEOUT:I = 0x6

.field public static final HTTP_ERROR_TYPE_HTTP_STATUS_ERROR:I = 0x7

.field public static final HTTP_ERROR_TYPE_TCP_CONNECT_ERROR:I = 0x2

.field public static final HTTP_ERROR_TYPE_TCP_CONNECT_TIMEOUT:I = 0x3

.field public static final HTTP_ERROR_TYPE_TCP_RECV_ERROR:I = 0x5

.field public static final HTTP_ERROR_TYPE_TCP_SEND_ERROR:I = 0x4

.field public static final RESULT_ID_COPY_FINISHED:I = 0x0

.field public static final RESULT_ID_CREATE_TARGET_FAILED:I = 0x1

.field public static final RESULT_ID_DOWNPATH_CANNOT_WRITE:I = 0x4

.field public static final RESULT_ID_DOWNPATH_NOSPACE:I = 0x3

.field public static final RESULT_ID_READDATA_FAILED:I = 0x2

.field public static final RESULT_ID_WRITE_FAILED:I = 0x5

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_OK:I = 0x0

.field public static final TYPE_PAD:I = 0x1

.field public static final TYPE_PHONE:I

.field private static mInstance:Lcom/mgtv/downloader/p2p/ImgoP2pMgr;


# instance fields
.field private mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/yunfan/YFP2pMgr;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    return-void
.end method

.method public static getInstance()Lcom/mgtv/downloader/p2p/ImgoP2pMgr;
    .locals 1

    sget-object v0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/ImgoP2pMgr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->syncInit(I)V

    :cond_0
    sget-object v0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/ImgoP2pMgr;

    return-object v0
.end method

.method private isSSWW()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized syncInit(I)V
    .locals 2

    const-class v0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/ImgoP2pMgr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;

    invoke-direct {v1, p0}, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;-><init>(I)V

    sput-object v1, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/ImgoP2pMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public CleanCache()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0}, Lcom/mgtv/downloader/p2p/IP2pMgr;->CleanCache()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetVideoDuration(Lcom/mgtv/downloader/p2p/ImgoP2pTask;I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/p2p/IP2pMgr;->SetVideoDuration(Lcom/mgtv/downloader/p2p/ImgoP2pTask;I)V

    return-void
.end method

.method public addNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->addNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V

    return-void
.end method

.method public createTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->createTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I

    move-result p0

    return p0
.end method

.method public deleteTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->isSSWW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->deleteTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V

    :cond_0
    return-void
.end method

.method public enableP2pDownload(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->enableP2pDownload(Z)V

    return-void
.end method

.method public enableP2pUpload(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->enableP2pUpload(Z)V

    return-void
.end method

.method public getHttpport()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0}, Lcom/mgtv/downloader/p2p/IP2pMgr;->getHttpport()I

    move-result p0

    return p0
.end method

.method public getProxyUrl(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->getProxyUrl(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchP2p()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTaskInfo(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Lcom/mgtv/downloader/p2p/ImgoTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->getTaskInfo(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)Lcom/mgtv/downloader/p2p/ImgoTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasInit()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0}, Lcom/mgtv/downloader/p2p/IP2pMgr;->hasInit()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized init(Lcom/mgtv/downloader/p2p/IP2pMgr$Config;Landroid/content/Context;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {v0, p1, p2}, Lcom/mgtv/downloader/p2p/IP2pMgr;->init(Lcom/mgtv/downloader/p2p/IP2pMgr$Config;Landroid/content/Context;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isTaskExist(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->isTaskExist(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I

    move-result p0

    return p0
.end method

.method public pauseTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->pauseTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)V

    return-void
.end method

.method public readData(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Ljava/lang/String;[BJJ[J[I)J
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/mgtv/downloader/p2p/IP2pMgr;->readData(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Ljava/lang/String;[BJJ[J[I)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->removeNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V

    return-void
.end method

.method public runTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->runTask(Lcom/mgtv/downloader/p2p/ImgoP2pTask;)I

    move-result p0

    return p0
.end method

.method public setApkType(I)I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->setApkType(I)I

    move-result p0

    return p0
.end method

.method public setM3u8Data(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/yunfan/net/Yfnet;->YfSetM3u8Data(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public setNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->setNotifyListener(Lcom/mgtv/downloader/p2p/IP2pMgr$OnNotifyMsgListener;)V

    return-void
.end method

.method public setPlaySpeed(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1}, Lcom/mgtv/downloader/p2p/IP2pMgr;->setPlaySpeed(I)V

    return-void
.end method

.method public setPlayingTimepoint(Lcom/mgtv/downloader/p2p/ImgoP2pTask;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/downloader/p2p/IP2pMgr;->setPlayingTimepoint(Lcom/mgtv/downloader/p2p/ImgoP2pTask;IZ)V

    return-void
.end method

.method public setTaskPlayingStatus(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/p2p/IP2pMgr;->setTaskPlayingStatus(Lcom/mgtv/downloader/p2p/ImgoP2pTask;Z)V

    return-void
.end method

.method public startLog()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0}, Lcom/mgtv/downloader/p2p/IP2pMgr;->startLog()I

    move-result p0

    return p0
.end method

.method public stopLog()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {p0}, Lcom/mgtv/downloader/p2p/IP2pMgr;->stopLog()I

    move-result p0

    return p0
.end method

.method public declared-synchronized unInit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/downloader/p2p/ImgoP2pMgr;->mP2pMgr:Lcom/mgtv/downloader/p2p/IP2pMgr;

    invoke-interface {v0}, Lcom/mgtv/downloader/p2p/IP2pMgr;->unInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
