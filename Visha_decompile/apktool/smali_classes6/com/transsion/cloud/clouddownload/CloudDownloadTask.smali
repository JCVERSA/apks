.class public Lcom/transsion/cloud/clouddownload/CloudDownloadTask;
.super Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
.source "SourceFile"


# static fields
.field private static final FORCE_UPDATE_INTERVAL:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "visha_cloud_CloudDownloadTask"


# instance fields
.field private final mCloudDownloadManager:Lfu4;

.field public mCloudDownloadTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

.field private final mCloudTransferListener:Lb41;

.field private mHadDownloadFinish:Z

.field private volatile mIsDownloading:Z

.field private final mProgressHandler:Landroid/os/Handler;

.field private final mProgressUpdateRunnable:Ljava/lang/Runnable;

.field private mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

.field public mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Progress;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->WAITING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    iput-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mIsDownloading:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$1;-><init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    iput-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    sget-object v0, La41;->a:La41;

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, La41;->d(Landroid/content/Context;)Lfu4;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    new-instance v7, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;

    invoke-direct {v7, p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;-><init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    iput-object v7, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudTransferListener:Lb41;

    :try_start_0
    iget-object v3, p1, Lcom/lzy/okgo/model/Progress;->cloudFileId:Ljava/lang/String;

    iget-object v4, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    sget-object v5, Lyx2;->h:Ljava/lang/String;

    iget-object v6, p1, Lcom/lzy/okgo/model/Progress;->taskId:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lfu4;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb41;)Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    iput-object v0, p1, Lcom/lzy/okgo/model/Progress;->taskId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p1, Lcom/lzy/okgo/model/Progress;->taskId:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnError(Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;ZFLcom/lzy/okgo/model/Progress;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->lambda$postLoading$0(ZFLcom/lzy/okgo/model/Progress;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->lambda$postOnProgress$1(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->lambda$postOnRemove$2(Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Lfu4;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Lb41;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudTransferListener:Lb41;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mIsDownloading:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic lambda$postLoading$0(ZFLcom/lzy/okgo/model/Progress;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    if-nez p1, :cond_0

    iget p1, p4, Lcom/lzy/okgo/model/Progress;->fraction:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0, p4}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->updateDatabase(Lcom/lzy/okgo/model/Progress;)V

    :cond_1
    iget p1, p3, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p4}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->postOnProgress(Lcom/lzy/okgo/model/Progress;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$postOnProgress$1(Lcom/lzy/okgo/model/Progress;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Luz2;

    invoke-interface {v1, p1}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    iget-wide v3, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-static {v0, v3, v4}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljf;->c()Landroid/app/Application;

    move-result-object v0

    iget-wide v4, p1, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-static {v0, v4, v5}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->simpleView:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->complexView:Landroid/widget/RemoteViews;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->updateNotification(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic lambda$postOnRemove$2(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

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

    check-cast v1, Luz2;

    invoke-interface {v1, p1, p2}, Lwh8;->e(Lcom/lzy/okgo/model/Progress;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;JJZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->postLoading(Lcom/lzy/okgo/model/Progress;JJZ)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->stopOrStartProgressUpdate(Z)V

    return-void
.end method

.method private postLoading(Lcom/lzy/okgo/model/Progress;JJZ)V
    .locals 7

    iget-wide v1, p1, Lcom/lzy/okgo/model/Progress;->currentSize:J

    sub-long v1, p2, v1

    iget v3, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    move-wide v1, v4

    :cond_0
    new-instance v5, Lgz0;

    invoke-direct {v5, p0, p6, v3, p1}, Lgz0;-><init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;ZFLcom/lzy/okgo/model/Progress;)V

    move-object v0, p1

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JJLcom/lzy/okgo/model/Progress$a;)Lcom/lzy/okgo/model/Progress;

    return-void
.end method

.method private postOnProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnProgress-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_CloudDownloadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lfz0;

    invoke-direct {v0, p0, p1}, Lfz0;-><init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnRemove-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_CloudDownloadTask"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lhz0;

    invoke-direct {v0, p0, p1, p2}, Lhz0;-><init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->deleteTask(Ljava/lang/String;)V

    return-void
.end method

.method private stopOrStartProgressUpdate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mIsDownloading:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public noNetPause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, p0}, Liu4;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public pause(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1}, Liu4;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postPause(Lcom/lzy/okgo/model/Progress;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->stopOrStartProgressUpdate(Z)V

    return-void
.end method

.method public postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/lzy/okgo/model/Progress;->speed:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/4 v0, 0x5

    iput v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mHadDownloadFinish:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnFinish-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_cloud_CloudDownloadTask"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    iget-object v3, p1, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lyx2;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->updateDownloadTaskToFinished(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luz2;

    invoke-interface {v1, p1}, Lwh8;->a(Lcom/lzy/okgo/model/Progress;)V

    invoke-interface {v1, p2, p1}, Lwh8;->b(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->stopNotification()V

    return-void
.end method

.method public register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->register(Luz2;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    return-object p0
.end method

.method public remove(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1}, Liu4;->cancel(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0, v0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->postOnRemove(Lcom/lzy/okgo/model/Progress;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->stopOrStartProgressUpdate(Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide p0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-string v0, "cloud_download_cancel"

    invoke-static {p0, p1, v0}, Lcz5;->j(JLjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->start()V

    return-void
.end method

.method public start()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {v1}, Lcom/lzy/okgo/model/Progress;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_CloudDownloadTask"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the task with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the download queue, current task status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p0, p0, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lie7;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postOnStart(Lcom/lzy/okgo/model/Progress;)V

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1}, Liu4;->e(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mSdkTransferTaskStatus:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudTransferListener:Lb41;

    invoke-interface {v0, v1, p0}, Liu4;->c(Ljava/lang/String;Lb41;)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudTransferListener:Lb41;

    invoke-interface {v1, v0, p0}, Liu4;->f(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;Lb41;)Ljava/lang/String;

    :cond_4
    :goto_2
    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->unRegister(Ljava/lang/String;)V

    return-void
.end method

.method public updateDatabase(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mHadDownloadFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    iget v1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-virtual {v0, p0, v1, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->updateTaskStatusAndProgress(Ljava/lang/String;IF)V

    return-void
.end method

.method public waiting()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadManager:Lfu4;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1}, Liu4;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->postWaiting(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
