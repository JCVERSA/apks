.class Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->createCloudTaskEntity(Lcom/transsion/cloudcore/db/CloudTaskEntity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

.field final synthetic val$needCheckFileType:Z

.field final synthetic val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;ZLcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    iput-boolean p2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$needCheckFileType:Z

    iput-object p3, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    const-string v0, "visha_cloud_CloudTaskManager"

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$needCheckFileType:Z

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v1, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->queryMediaItemFromPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    .line 5
    iget v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    .line 7
    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v1, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    .line 8
    iget-object v3, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lpp6;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lpp6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lpp6;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lpp6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lpp6;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileType:I

    .line 13
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    invoke-static {v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->a(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;)Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-interface {v1, v2}, Lcom/transsion/cloudcore/db/CloudTaskDao;->insertTask(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task created successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCloudTaskEntity failed for taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", error: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_CloudTaskManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createCloudTaskEntity success for taskId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$1;->val$task:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_CloudTaskManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
