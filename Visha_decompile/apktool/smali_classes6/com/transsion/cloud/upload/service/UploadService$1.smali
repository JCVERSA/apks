.class Lcom/transsion/cloud/upload/service/UploadService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/upload/service/UploadService;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/cloud/upload/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/service/UploadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$1;->this$0:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getAllUploadingTask()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {v2}, Lxhb;->b(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    move-result-object v2

    iget v3, v2, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$1;->this$0:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p0, v0}, Lcom/transsion/cloud/upload/service/UploadService;->c(Lcom/transsion/cloud/upload/service/UploadService;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "download_task_restore"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
