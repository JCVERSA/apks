.class public abstract Lxhb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/transsion/cloud/upload/model/UploadingItem;)Lcom/transsion/cloud/upload/task/NewUploadTask;
    .locals 1

    sget-object v0, Lcom/transsion/cloud/upload/model/UploadingItem;->Companion:Lcom/transsion/cloud/upload/model/UploadingItem$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/upload/model/UploadingItem$Companion;->createUploadProgressInfo(Lcom/transsion/cloud/upload/model/UploadingItem;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    move-result-object p0

    new-instance v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;-><init>(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    invoke-static {v0}, Lxhb;->c(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    return-object v0
.end method

.method public static b(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;
    .locals 5

    new-instance v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-direct {v0}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;-><init>()V

    sget-object v1, Lcom/transsion/cloud/upload/model/UploadingItem;->Companion:Lcom/transsion/cloud/upload/model/UploadingItem$Companion;

    iget v2, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    iget-object v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/cloud/upload/model/UploadingItem$Companion;->generateTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    iput v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iget-wide v1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    iget-object v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    iput-wide v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->date:J

    iget-object v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->taskId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    iput-wide v3, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->duration:J

    iget p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->progress:F

    iput p0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fraction:F

    long-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-long v1, p0

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastSize:J

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " restoreCloudTaskFromDB:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "visha_cloud_UploadTaskUtils"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 4

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {v0}, Lcom/transsion/cloudcore/db/CloudTaskEntity;-><init>()V

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->mediaId:I

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    iput-wide v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskType:I

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v2, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->duration:J

    iput-wide v2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->updateTime:J

    iput-wide v2, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->createCloudTaskEntity(Lcom/transsion/cloudcore/db/CloudTaskEntity;Z)V

    :cond_0
    return-void
.end method
