.class Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->updateTaskStatusAndProgress(Ljava/lang/String;IF)V
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

.field final synthetic val$progress:F

.field final synthetic val$status:I

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;IF)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    iput-object p2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$taskId:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$status:I

    iput p4, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$progress:F

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
    invoke-virtual {p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->this$0:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    iget-object v1, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$taskId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$status:I

    iget p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$progress:F

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->c(Lcom/transsion/cloudcore/db/CloudTransferRecordManager;Ljava/lang/String;IF)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTaskStatusAndProgress failed for taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->val$taskId:Ljava/lang/String;

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

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
