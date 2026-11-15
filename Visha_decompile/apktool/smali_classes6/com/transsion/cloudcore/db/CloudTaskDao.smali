.class public interface abstract Lcom/transsion/cloudcore/db/CloudTaskDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deleteAllCloudTask()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM cloud_task WHERE task_type = 1 OR (task_type = 2 AND download_source = 1)"
    .end annotation
.end method

.method public abstract deleteAllTasks()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM cloud_task"
    .end annotation
.end method

.method public abstract deleteTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteTaskById(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM cloud_task WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract deleteTasks(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteTasksByIds(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM cloud_task WHERE task_id IN (:taskIds)"
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllDownloadedTask()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDownloadedTaskLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status = 5 ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllDownloadingTask()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDownloadingTaskLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 2 AND task_status != 5 ORDER BY create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllFinishTask()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFinishTaskLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_status = 5 ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllUploadedTask()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllUploadedTaskLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status = 5 ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllUploadingTask()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllUploadingTaskLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_type = 1 AND task_status != 5 ORDER BY create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTaskById(Ljava/lang/String;)Lcom/transsion/cloudcore/db/CloudTaskEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract getTaskByIdLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_id = :taskId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTaskCountByTypeAndStatus(II)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM cloud_task WHERE task_type = :taskType AND task_status = :taskStatus"
    .end annotation
.end method

.method public abstract getTaskCountLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM cloud_task"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTasksByCloudFileId(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE cloud_file_id = :cloudFileId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTasksByLocalFilePath(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE local_file_path = :localFilePath"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTasksByStatusWithPaging(III)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM cloud_task WHERE task_status = :taskStatus ORDER BY update_time DESC LIMIT :limit OFFSET :offset"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertTasks(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDownloadTaskToFinished(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, local_file_path = :localFilePath, file_name = :localFileName, download_source = :downloadSource,isLocalFileExist = 1,isCloudFileExist = CASE WHEN :downloadSource = 1 THEN 1 ELSE 0 END WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateDownloadTaskToFinished(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, local_file_path = :localFilePath, file_name = :localFileName, download_source = :downloadSource,mime_type =:mimeType,file_type =:fileType,isLocalFileExist = 1,isCloudFileExist = CASE WHEN :downloadSource = 1 THEN 1 ELSE 0 END WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updateTaskFileName(Ljava/lang/String;Ljava/lang/String;J)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET file_name = :fileName, update_time = :updateTime WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateTaskProgress(Ljava/lang/String;FJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET progress = :progress, update_time = :updateTime WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateTaskStatus(Ljava/lang/String;IJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET task_status = :status, update_time = :updateTime WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateTaskStatusAndProgress(Ljava/lang/String;IFJ)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET task_status = :status, progress = :progress, update_time = :updateTime WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateTasks(Ljava/util/List;)V
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloudcore/db/CloudTaskEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateUploadTaskToFinished(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, cloud_file_id = :cloudFileId, file_name = :fileName,isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = :taskId"
    .end annotation
.end method

.method public abstract updateUploadTaskToFinished(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE cloud_task SET local_file_id = :localFileId,progress = 1.0, task_status = 5, update_time = :updateTime, cloud_file_id = :cloudFileId, file_name = :fileName,mime_type =:mimeType,file_type =:fileType, isCloudFileExist = 1,isLocalFileExist = 1  WHERE task_id = :taskId"
    .end annotation
.end method
