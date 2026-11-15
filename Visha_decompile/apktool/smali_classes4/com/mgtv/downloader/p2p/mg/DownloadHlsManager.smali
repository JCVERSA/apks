.class public Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadSDK_1.8.0"

.field private static instance:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;


# instance fields
.field private HLS_DOWNLOAD_SELECT:I

.field private hasReportCDN3:I

.field public iDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

.field public iReportThreeListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mHlsInitState:I

.field private final mM3u8Version_1:Ljava/lang/String;

.field private taskInfo:Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->HLS_DOWNLOAD_SELECT:I

    iput v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->hasReportCDN3:I

    iput v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mErrorCode:I

    const-string v0, "playlist.m3u8"

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mM3u8Version_1:Ljava/lang/String;

    new-instance v0, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    invoke-direct {v0}, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->taskInfo:Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    new-instance v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;

    invoke-direct {v0, p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$1;-><init>(Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;)V

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->iDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    new-instance v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;

    invoke-direct {v0, p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager$2;-><init>(Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;)V

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->iReportThreeListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;

    return-void
.end method

.method public static getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;
    .locals 2

    sget-object v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->instance:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->instance:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    invoke-direct {v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->instance:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

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
    sget-object v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->instance:Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    return-object v0
.end method

.method private isHlsVersion(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "playlist.m3u8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static setUpdatePath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setUpdatePath(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createDownloadTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)I
    .locals 12

    move-object v0, p0

    move-object v6, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createDownloadTask]start, taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", videoId: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", definition: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", free: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", fileId: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", path: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", url: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    const/4 v11, -0x1

    if-gez v1, :cond_0

    const-string v0, "[createDownloadTask][error] init state failed"

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v11

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->isHlsVersion(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    const-string v1, "v1 version url"

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    cmp-long v1, p7, v10

    if-lez v1, :cond_4

    invoke-virtual {p0, v5, v7}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "already exist\uff0cdelete"

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    if-ne v1, v8, :cond_3

    const-string v1, "v2 version url"

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "other version url"

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHlsDownloadSelect(I)V

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHasReportCDN3(I)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v0

    const/16 v8, 0xa

    const/4 v10, 0x0

    move v1, p1

    move v2, v8

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, p2

    move-object/from16 v7, p6

    move/from16 v8, p9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create task failed, taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_5
    return v0

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createDownloadTask][error] videoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v11
.end method

.method public createOfflinePlayTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    const-string p0, "hls sdk not init, can`t offline play"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0xb

    const-string v6, ""

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v9}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create task , taskID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    if-gez p0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create task failed, taskID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_2
    return p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "param is error, videoID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", definition: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", fileID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public createPlayTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)I
    .locals 11

    move-object v0, p0

    move-object v6, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createPlayTask]start, taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", videoId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", definition: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", free: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", fileId: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", url: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    const/4 v10, -0x1

    if-gez v1, :cond_0

    const-string v0, "[createPlayTask][error] init state failed"

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v10

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHlsDownloadSelect(I)V

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setHasReportCDN3(I)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v0

    const/4 v5, 0x1

    const-string v9, ""

    move v1, p1

    move v2, v5

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, p2

    move-object v7, v9

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->createTask(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createPlayTask]create task failed, taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v1, v0, v2, v3}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setPlayTime(III)V

    return v0

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createPlayTask][error] videoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v10
.end method

.method public deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteOfflineCache failed, fileID: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete hls Task fileID= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "hls"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->deleteOfflineCache(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public downloaderDeinitialize()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string p0, "hls deinitialize"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->deinitHLS()V

    const/4 p0, 0x0

    return p0
.end method

.method public downloaderInitialize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    const-string v0, "init hls error\uff1a"

    iget v1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-ltz v1, :cond_0

    const-string p0, "downloader already init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_0

    :cond_1
    move-object v7, p2

    :goto_0
    const-string p2, "hls module start init"

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mContext:Landroid/content/Context;

    if-nez p2, :cond_2

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mContext:Landroid/content/Context;

    :cond_2
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/dir/a;->e()Lcom/mgtv/downloader/dir/DownloadDirInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "no cur dir, ask DownloadDirManager to initialize dirs again"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/dir/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/dir/a;->e()Lcom/mgtv/downloader/dir/DownloadDirInfo;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p2

    iget-object v1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->iDownloadListener:Lcom/mgtv/downloader/p2p/mg/IP2PListener;

    invoke-virtual {p2, v1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p2

    iget-object v1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->iReportThreeListener:Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;

    invoke-virtual {p2, v1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setReportThreeListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V

    iget-object p1, p1, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hls"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 p1, -0x1

    :try_start_0
    const-string p2, "mobile_company"

    invoke-static {}, Lcom/mgtv/downloader/util/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileCompany error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    :goto_2
    :try_start_2
    const-string p2, "network_type"

    invoke-static {}, Lcom/mgtv/downloader/util/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetWorkType error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    :goto_3
    :try_start_4
    const-string p2, "guid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGUID error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_10

    :goto_4
    :try_start_6
    const-string p2, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    :goto_5
    :try_start_8
    const-string p2, "uuid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p2

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUUId error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    :goto_6
    :try_start_a
    const-string p2, "sid"

    invoke-static {}, Lcom/mgtv/downloader/util/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p2

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSid error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    :goto_7
    :try_start_c
    const-string p2, "net"

    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p2

    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetwork error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    :goto_8
    :try_start_e
    const-string p2, "mf"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p2

    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMf error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    :goto_9
    :try_start_10
    const-string p2, "mod"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception p2

    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModel error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    :goto_a
    :try_start_12
    const-string p2, "sver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p2

    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOsVersionWithAphone error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    :goto_b
    :try_start_14
    const-string p2, "aver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception p2

    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersionNameByTablet error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    :goto_c
    :try_start_16
    const-string p2, "ch"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p2

    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannel error\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    :goto_d
    :try_start_18
    const-string p2, "gps"

    const-string v1, "PREF_GPS_MSG"

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception p2

    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREF_GPS_MSG error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    :goto_e
    :try_start_1a
    const-string p2, "imei"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    goto :goto_f

    :catchall_d
    move-exception p2

    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImei error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    :goto_f
    :try_start_1c
    const-string p2, "mac"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception p2

    :try_start_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMacAddress error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    :goto_10
    :try_start_1e
    const-string p2, "ua"

    invoke-static {}, Lcom/mgtv/downloader/util/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p2

    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUA error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_11
    const-string p2, "platform"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "isdebug"

    const-string v1, "0"

    invoke-interface {v8, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    :try_start_20
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mContext:Landroid/content/Context;

    move-object v5, v6

    invoke-virtual/range {v3 .. v8}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->initHLS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result p2

    iput p2, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception p2

    iput p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_15

    :catchall_10
    move-exception p2

    goto :goto_13

    :catch_1
    move-exception p2

    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init parameter error\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    :try_start_22
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mContext:Landroid/content/Context;

    move-object v5, v6

    invoke-virtual/range {v3 .. v8}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->initHLS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result p2

    iput p2, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2

    goto :goto_15

    :catch_2
    move-exception p2

    iput p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_12

    :goto_13
    :try_start_23
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mContext:Landroid/content/Context;

    move-object v5, v6

    invoke-virtual/range {v3 .. v8}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->initHLS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v1

    iput v1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3

    goto :goto_14

    :catch_3
    move-exception v1

    iput p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_14
    throw p2

    :cond_5
    :goto_15
    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    return p0
.end method

.method public getDownloadInfoParameter(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 6

    iget v0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getTaskInfo(I)Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setTaskInfo(Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;)V

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget-wide v4, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->fileSize:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->fileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Long;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/downloader/net/entity/a;->i(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget-wide v0, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->downloadSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget p1, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->httpSpeed:I

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget p1, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->httpSpeed:I

    shr-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget p1, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->vipSpeed:I

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget p1, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->vipSpeed:I

    shr-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/downloader/net/entity/a;->c(Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget p1, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->trialTime:I

    if-ltz p1, :cond_6

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p1

    iget p1, p1, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->trialTime:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    move-result-object p0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;->trialTime:I

    invoke-static {p0}, Lcom/mgtv/downloader/util/d;->a(I)V

    goto :goto_0

    :cond_5
    const-string p0, "getTaskInfo= null"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mErrorCode:I

    return p0
.end method

.method public getHasReportCDN3()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->hasReportCDN3:I

    return p0
.end method

.method public getHlsDownloadSelect()I
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->HLS_DOWNLOAD_SELECT:I

    return p0
.end method

.method public getOfflineM3U8Path(I)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getOfflineM3U8Path(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlayUrl(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", can`t get hls play url"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_1

    const-string p0, "hls sdk not init, can`t get hls play url"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->buildURL(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTaskInfo()Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->taskInfo:Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

    return-object p0
.end method

.method public isInitHls()Z
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pauseTask(I)I
    .locals 1

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hls not init, pause hls Task failed, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pause task taskID= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->pauseTask(I)I

    move-result p0

    return p0
.end method

.method public pushEvent(ILjava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->pushEvent(I)V

    return-void
.end method

.method public runTask(I)I
    .locals 1

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hls not init, run Task failed, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "run Task failed, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->runTask(I)I

    move-result p0

    return p0
.end method

.method public setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setDownloadListener(Lcom/mgtv/downloader/p2p/mg/IP2PListener;)V

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mErrorCode:I

    return-void
.end method

.method public setHasReportCDN3(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->hasReportCDN3:I

    return-void
.end method

.method public setHlsDownloadSelect(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->HLS_DOWNLOAD_SELECT:I

    return-void
.end method

.method public setReportThreeListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setReportThreeListener(Lcom/mgtv/downloader/p2p/mg/IReportThreeListener;)V

    return-void
.end method

.method public setServerConfig(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setServerConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setTaskInfo(Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->taskInfo:Lcom/mgtv/downloader/p2p/mg/MGTaskInfo;

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

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->setUserData(Ljava/util/Map;)V

    return-void
.end method

.method public stopTask(I)I
    .locals 1

    iget p0, p0, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->mHlsInitState:I

    if-gez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hls not init, stop Task failed, taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stop task taskID= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->getInstance()Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/MgP2pMgr;->stopTask(I)I

    move-result p0

    return p0
.end method
