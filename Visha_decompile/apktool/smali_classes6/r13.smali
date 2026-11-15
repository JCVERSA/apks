.class public Lr13;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr13$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lt13;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lyx2;->h:Ljava/lang/String;

    iput-object v0, p0, Lr13;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lmv4;->c(Ljava/lang/String;)Z

    .line 5
    new-instance v0, Lt13;

    invoke-direct {v0}, Lt13;-><init>()V

    iput-object v0, p0, Lr13;->b:Lt13;

    .line 6
    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyv5;->d(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object p0

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->sM3U8DownloadListener:Ltz2;

    invoke-virtual {p0, v0}, Lyv5;->g(Ltz2;)V

    return-void
.end method

.method public synthetic constructor <init>(Ls13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr13;-><init>()V

    return-void
.end method

.method public static a(Lcom/transsion/videodownloader/model/VideoTaskItem;)Lcom/lzy/okgo/model/Progress;
    .locals 3

    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    iget-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->lastSize:J

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getSpeed()F

    move-result v1

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTransPeercent()F

    move-result v1

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTotalSize()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadCreateTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->date:J

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getSniffId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->sniffId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/Progress;->setOriginSite(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static b(Lbz0;)Lcom/transsion/cloud/clouddownload/CloudDownloadTask;
    .locals 3

    invoke-static {p0}, Lbz0;->c(Lbz0;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    invoke-direct {v1, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->save()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-static {v1}, Lr13;->l(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCloudDownloadTask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_DownloadTaskManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static c(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfe7;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    invoke-static {p0}, Lcom/transsion/sniffer_load/okdownload/a;->d(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/lzy/okgo/model/Progress;

    move-result-object v1

    iput-object v0, v1, Lcom/lzy/okgo/model/Progress;->request:Lcom/lzy/okgo/request/base/Request;

    new-instance v0, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;

    invoke-direct {v0, v1}, Lcom/transsion/sniffer_load/okdownload/SniffDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->save()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getDownloadTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "visha_DownloadTaskManager"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()Lr13;
    .locals 1

    invoke-static {}, Lr13$a;->a()Lr13;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 3

    invoke-static {p0}, Lcom/transsion/sniffer_load/okdownload/a;->d(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/lzy/okgo/model/Progress;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;

    invoke-direct {v1, v0}, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->setbM3U8Task(Z)V

    invoke-virtual {v1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->save()Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getM3U8Task:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_DownloadTaskManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static g(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyv5;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lr13;->f(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lr13;->c(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ".xdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static j(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/okdownload/a;->g()Ljava/lang/String;

    invoke-static {p0}, Lr13;->g(Lcom/transsion/sniffer_load/okdownload/a;)Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    move-result-object v0

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-boolean v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    iput-boolean v2, v1, Lcom/lzy/okgo/model/Progress;->isClient:Z

    iget-object v1, v0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v2, p0, Lcom/transsion/sniffer_load/okdownload/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/model/Progress;->setOriginSite(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " request_putMapTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "visha_DownloadTaskManager"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/lzy/okgo/model/Progress;
    .locals 4

    new-instance v0, Lcom/lzy/okgo/model/Progress;

    invoke-direct {v0}, Lcom/lzy/okgo/model/Progress;-><init>()V

    sget-object v1, Lbz0;->i:Lbz0$a;

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbz0$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-static {}, Lr13;->e()Lr13;

    move-result-object v1

    iget-object v1, v1, Lr13;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->folder:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    iget-wide v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iget v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    long-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->lastSize:J

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    iget-wide v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->date:J

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->taskId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->duration:J

    iput v3, v0, Lcom/lzy/okgo/model/Progress;->fraction:F

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lzy/okgo/model/Progress;->cloudFileId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    iput-object p0, v0, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " restoreCloudTaskFromDB:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "visha_DownloadTaskManager"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static l(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v0}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mCloudDownloadTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {v1}, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v1, v1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v1, v1, Lcom/lzy/okgo/model/Progress;->duration:J

    iput-wide v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    iget-object v1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->imgUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide v1, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iput-wide v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    iput-wide v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->createCloudTaskEntity(Lcom/transsion/cloudcore/db/CloudTaskEntity;Z)V

    :cond_0
    return-void
.end method

.method public static m(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v0}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sniff_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    iput p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->downloadSource:I

    const/4 p1, 0x2

    iput p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    const/4 p1, 0x5

    iput p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    iget-object p0, p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-wide p0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    iput-wide p0, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isCloudFileExist:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    iput-wide p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->createCloudTaskEntity(Lcom/transsion/cloudcore/db/CloudTaskEntity;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr13;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i()Lt13;
    .locals 0

    iget-object p0, p0, Lr13;->b:Lt13;

    return-object p0
.end method
