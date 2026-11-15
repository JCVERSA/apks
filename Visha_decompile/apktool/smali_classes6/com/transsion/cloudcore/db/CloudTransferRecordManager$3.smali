.class Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->updateDownloadTaskToFinished(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$downloadSource:I

.field final synthetic val$localFileName:Ljava/lang/String;

.field final synthetic val$localFilePath:Ljava/lang/String;

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    iput-object p2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$taskId:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$downloadSource:I

    iput-object p4, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$localFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$localFilePath:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$taskId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$downloadSource:I

    iget-object v3, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$localFileName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$localFilePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->b(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Download task update to finished completed for task: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$3;->val$taskId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_CloudTaskManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
