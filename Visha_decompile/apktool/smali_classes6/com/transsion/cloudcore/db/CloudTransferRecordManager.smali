.class public Lcom/transsion/cloudcore/db/CloudTransferRecordManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "visha_cloud_CloudTaskManager"

.field private static volatile sInstance:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;


# instance fields
.field private mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "visha_cloud_CloudTaskManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->cloudTaskDao()Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    const-string p0, "CloudTaskManager initialized successfully"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize CloudTaskManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;)Lcom/transsion/cloudcore/db/CloudTaskDao;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->performDownloadTaskToFinished(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;IF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->performUpdateTaskStatusAndProgress(Ljava/lang/String;IF)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->performUpdateUploadTaskToFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;
    .locals 2

    sget-object v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->sInstance:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->sInstance:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    invoke-direct {v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->sInstance:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

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
    sget-object v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->sInstance:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    return-object v0
.end method

.method private performDownloadTaskToFinished(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "visha_cloud_CloudTaskManager"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->queryMediaItemFromPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {v2, p3}, Lpp6;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v9, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v10}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateDownloadTaskToFinished(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateDownloadTaskToFinished(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download task updated to finished successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", localFileName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", localFilePath: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", downloadSource: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update download task to finished: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private performUpdateTaskStatusAndProgress(Ljava/lang/String;IF)V
    .locals 7

    const-string v0, "visha_cloud_CloudTaskManager"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateTaskStatusAndProgress(Ljava/lang/String;IFJ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performUpdateTaskStatusAndProgress success for taskId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", progress: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "performUpdateTaskStatusAndProgress failed for taskId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private performUpdateUploadTaskToFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "visha_cloud_CloudTaskManager"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->queryMediaItemFromPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p4

    iget v1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {v1, p3}, Lpp6;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    iget v3, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v8, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v9}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateUploadTaskToFinished(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    iget v3, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateUploadTaskToFinished(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload task updated to finished successfully: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cloudFileId: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", fileName: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update upload task to finished: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static queryMediaItemFromPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 7

    const-string v3, "_data = ?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    new-instance p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "_id"

    const-string v5, "mime_type"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v1, "visha_cloud_CloudTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMediaIdFromPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-object p0

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public static release()V
    .locals 4

    const-string v0, "visha_cloud_CloudTaskManager"

    :try_start_0
    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->closeDatabase()V

    const/4 v1, 0x0

    sput-object v1, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->sInstance:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    const-string v1, "CloudTaskManager released"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to release CloudTaskManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAllTasks()V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$6;

    invoke-direct {v0, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$6;-><init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public createCloudTaskEntity(Lcom/transsion/cloudcore/db/CloudTaskEntity;Z)V
    .locals 2

    const-string v0, "visha_cloud_CloudTaskManager"

    if-nez p1, :cond_0

    const-string p0, "createCloudTaskEntity failed: task is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;-><init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;ZLcom/transsion/cloudcore/db/CloudTaskEntity;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "createCloudTaskEntity failed: taskId is null or empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public deleteTask(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;-><init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public deleteTaskByTaskId(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "visha_cloud_CloudTaskManager"

    if-ne v0, v1, :cond_0

    const-string v0, "deleteTaskByTaskId: called on main thread, switching to IO thread"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->deleteTask(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    invoke-interface {p0, p1}, Lcom/transsion/cloudcore/db/CloudTaskDao;->deleteTaskById(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteTaskByTaskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAllDownloadingTask()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "visha_cloud_CloudTaskManager"

    if-ne v0, v1, :cond_0

    const-string p0, "getAllDownloadingTask: called on main thread, this may block UI"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    invoke-interface {p0}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllDownloadingTask()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " downloading tasks from database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get all downloading tasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllFinishTask()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "visha_cloud_CloudTaskManager"

    if-ne v0, v1, :cond_0

    const-string p0, "getAllFinishTask: called on main thread, this may block UI"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    invoke-interface {p0}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllFinishTask()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " finished tasks from database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get all finished tasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllFinishTaskLiveData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    invoke-interface {p0}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllFinishTaskLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get all finished tasks LiveData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_cloud_CloudTaskManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllUploadingTask()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "visha_cloud_CloudTaskManager"

    if-ne v0, v1, :cond_0

    const-string p0, "getAllUploadingTask: called on main thread, this may block UI"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->mCloudTaskDao:Lcom/transsion/cloudcore/db/CloudTaskDao;

    invoke-interface {p0}, Lcom/transsion/cloudcore/db/CloudTaskDao;->getAllUploadingTask()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllUploadingTask Retrieved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uploading tasks from database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllUploadingTask Failed to get all uploading tasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public updateDownloadTaskToFinished(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "visha_cloud_CloudTaskManager"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const-string v1, "updateDownloadTaskToFinished: called on main thread, switching to IO thread"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;-><init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_0

    :cond_2
    const-string v1, "updateDownloadTaskToFinished: executing on background thread"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->performDownloadTaskToFinished(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "updateDownloadTaskToFinished: local file path is null or empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    const-string p0, "updateDownloadTaskToFinished: task id is null or empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateTaskStatusAndProgress(Ljava/lang/String;IF)V
    .locals 2

    const-string v0, "visha_cloud_CloudTaskManager"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;-><init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;IF)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->performUpdateTaskStatusAndProgress(Ljava/lang/String;IF)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateTaskStatusAndProgress failed: invalid progress value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    const-string p0, "updateTaskStatusAndProgress failed: taskId is null or empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateUploadTaskToFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "visha_cloud_CloudTaskManager"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_0
    const-string v1, ""

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p2

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "updateUploadTaskToFinished failed: cloudFileId is null or empty"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v1

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, p3

    goto :goto_3

    :cond_4
    :goto_2
    const-string p2, "updateUploadTaskToFinished failed: fileName is null or empty"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    move-object v6, v1

    :goto_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_5

    const-string p2, "updateUploadTaskToFinished: called on main thread, switching to IO thread"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$4;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$4;-><init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_4

    :cond_5
    const-string p2, "updateUploadTaskToFinished: executing on background thread"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v5, v6, p4}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->performUpdateUploadTaskToFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_6
    :goto_5
    const-string p0, "updateUploadTaskToFinished failed: taskId is null or empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
