.class Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->deleteTask(Ljava/lang/String;)V
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

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    iput-object p2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->val$taskId:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 3

    .line 2
    const-string v0, "visha_cloud_CloudTaskManager"

    :try_start_0
    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    invoke-static {v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->a(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;)Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->val$taskId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/cloudcore/db/CloudTaskDao;->deleteTaskById(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task deleted successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->val$taskId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete task: "

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$5;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
