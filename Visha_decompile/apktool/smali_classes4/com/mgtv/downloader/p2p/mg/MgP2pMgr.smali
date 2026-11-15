.class public Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/p2p/mg/IMgP2pMgr;


# static fields
.field private static handlerThread:Landroid/os/HandlerThread;

.field private static mInstance:Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "P2P"

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mIsInit:Z

    return-void
.end method

.method public static getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;
    .locals 1

    sget-object v0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->syncInit()V

    :cond_0
    sget-object v0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    return-object v0
.end method

.method public static setUpdatePath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/MGP2pLoader;->setUpdatePath(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/yunfan/YFP2pLoader;->setUpdatePath(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized syncInit()V
    .locals 2

    const-class v0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    invoke-direct {v1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mInstance:Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

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

    throw v1
.end method


# virtual methods
.method public buildURL(I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->buildURL(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/mg/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/mgtv/downloader/p2p/DownloadFacade;->createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->runTask(I)I

    move-result v1

    if-gez v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public deinitHLS()V
    .locals 1

    const-string v0, "hls p2p is deinit"

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mIsInit:Z

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/DownloadFacade;->deinit()V

    return-void
.end method

.method public deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/p2p/DownloadFacade;->deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteOfflineCacheAll()I
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/DownloadFacade;->deleteOfflineCacheAll()I

    move-result p0

    return p0
.end method

.method public getErrorCode(I)I
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->getErrorCode(I)I

    move-result p0

    return p0
.end method

.method public getOfflineM3U8Path(I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->getOfflineM3U8Path(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/mg/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTaskInfo(I)Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;
    .locals 20

    const-string v0, "cdnIP"

    const-string v1, "trialTime"

    const-string v2, "checkMD5Success"

    const-string v3, "downloadSize"

    const-string v4, "fileSize"

    const-string v5, "playableTime"

    const-string v6, "playableTsNum"

    const-string v7, "totalTsNum"

    const-string v8, "http"

    const-string v9, "vipSpeed"

    const-string v10, "httpSpeed"

    const-string v11, "keyID"

    const-string v12, "taskType"

    const-string v13, "taskID"

    new-instance v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    invoke-direct {v14}, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;-><init>()V

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object v15

    move-object/from16 p0, v0

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/mgtv/downloader/p2p/DownloadFacade;->getTaskInfoByJson(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/p2p/mg/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "taskInfo: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "P2P"

    invoke-static {v15, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    if-nez v0, :cond_0

    const-string v0, "json is null"

    invoke-static {v15, v0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const/16 v17, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_0

    :cond_1
    move/from16 v1, v17

    :goto_0
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->taskID:I

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_1

    :cond_2
    move/from16 v1, v17

    :goto_1
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->taskType:I

    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, ""

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v12

    :goto_2
    iput-object v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->keyID:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_3

    :cond_4
    move/from16 v1, v17

    :goto_3
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->httpSpeed:I

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_4

    :cond_5
    move/from16 v1, v17

    :goto_4
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->vipSpeed:I

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v18

    move-wide/from16 v9, v18

    goto :goto_5

    :cond_6
    const-wide/16 v9, 0x0

    :goto_5
    iput-wide v9, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnDownloadBytes:J

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_6

    :cond_7
    move/from16 v1, v17

    :goto_6
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->totalTsNum:I

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_7

    :cond_8
    move/from16 v1, v17

    :goto_7
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->playableTsNum:I

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_8

    :cond_9
    move/from16 v1, v17

    :goto_8
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->playableTime:I

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    goto :goto_9

    :cond_a
    const-wide/16 v4, 0x0

    :goto_9
    iput-wide v4, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->fileSize:J

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v9

    goto :goto_a

    :cond_b
    const-wide/16 v9, 0x0

    :goto_a
    iput-wide v9, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v17

    :cond_c
    move/from16 v1, v17

    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->checkMD5Success:I

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    goto :goto_b

    :cond_d
    const/4 v1, -0x1

    :goto_b
    iput v1, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->trialTime:I

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    :cond_e
    iput-object v12, v14, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->cdnIP:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-object v14
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/DownloadFacade;->getVersion()[B

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/mg/Utils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initHLS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mIsInit:Z

    if-eqz p1, :cond_0

    const-string p0, "hls p2p is already init, return "

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->handlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DownloadFacadeHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->handlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    sget-object p1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    sget-object p1, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->handlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->initHandler(Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->initHandler(Landroid/os/Looper;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->initHandler(Landroid/os/Looper;)V

    goto :goto_0

    :cond_4
    const-string p1, "Download init, handler is not init"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/mgtv/downloader/p2p/MGP2pLoader;->loadLibrary()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 v0, 0x2

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    invoke-static {}, Lcom/mgtv/downloader/p2p/MGP2pLoader;->loadLibrary()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {}, Lcom/mgtv/downloader/p2p/MGP2pLoader;->isSoLoad()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/mgtv/downloader/p2p/DownloadFacade;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->mIsInit:Z

    :cond_8
    return p1

    :cond_9
    :goto_3
    const-string p0, "MgP2PMgr so load failed, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public pauseTask(I)I
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->pauseTask(I)I

    move-result p0

    return p0
.end method

.method public pushEvent(I)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->pushEvent(I)V

    return-void
.end method

.method public runTask(I)I
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->runTask(I)I

    move-result p0

    return p0
.end method

.method public setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V

    return-void
.end method

.method public setPlayTime(III)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setPlayTime(III)V

    return-void
.end method

.method public setPlayingPos(II)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setPlayingPos(II)V

    return-void
.end method

.method public setReportThreeListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setReportDownloadListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V

    return-void
.end method

.method public setServerConfig(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setServerConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->setUserData(Ljava/util/Map;)V

    return-void
.end method

.method public stopTask(I)I
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/DownloadFacade;->instance()Lcom/mgtv/downloader/p2p/DownloadFacade;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/DownloadFacade;->stopTask(I)I

    move-result p0

    return p0
.end method
