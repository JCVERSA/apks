.class public final Lez0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lof7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez0;->t(Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)Lof7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lez0;

.field public final synthetic b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;


# direct methods
.method public constructor <init>(Lez0;Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lez0$b;->a:Lez0;

    iput-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lez0$b;->i(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lez0$b;->j(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lez0$b;->k(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;Ljava/lang/Throwable;)Z
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2, p3}, Lez0$b;->o(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic e(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;JJ)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual/range {p0 .. p6}, Lez0$b;->n(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;JJ)V

    return-void
.end method

.method public bridge synthetic f(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;Lr5b;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2, p3}, Lez0$b;->l(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Lr5b;)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lez0$b;->p(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lez0$b;->m(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V
    .locals 2

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkTaskInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    iget-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lez0;->l(Lez0;Ljava/lang/String;)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    invoke-static {p1}, Lez0;->k(Lez0;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p0, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V
    .locals 2

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->COMPLETED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    iget-object v0, p0, Lez0$b;->a:Lez0;

    invoke-static {v0}, Lez0;->k(Lez0;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-virtual {p2, p1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setFileName(Ljava/lang/String;)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    iget-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-static {p1, p2, v0}, Lez0;->m(Lez0;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    invoke-static {p1}, Lez0;->k(Lez0;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p0, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;
    .locals 0

    const-string p0, "taskId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sdkTaskInfo"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;->REPLACE:Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;

    return-object p0
.end method

.method public l(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Lr5b;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkTaskInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorInfo"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->FAILED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    new-instance p2, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    invoke-virtual {p3}, Lr5b;->a()I

    move-result v0

    invoke-virtual {p3}, Lr5b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setErrorInfo(Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    iget-object p2, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getErrorInfo()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    move-result-object p3

    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lez0;->n(Lez0;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    invoke-static {p1}, Lez0;->k(Lez0;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p0, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V
    .locals 2

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkTaskInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    sget-object p2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p1, p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p1, p0, Lez0$b;->a:Lez0;

    iget-object p0, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lez0;->o(Lez0;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;JJ)V
    .locals 8

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkTaskInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p1, p3, p4}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setCurrentBytes(J)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p1, p5, p6}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setFileSize(J)V

    iget-object p1, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object v2, p0, Lez0$b;->a:Lez0;

    iget-object p0, p0, Lez0$b;->b:Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lez0;->p(Lez0;Ljava/lang/String;JJ)V

    return-void
.end method

.method public o(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;Ljava/lang/Throwable;)Z
    .locals 0

    const-string p0, "taskId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sdkTaskInfo"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public p(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;)V
    .locals 1

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "taskInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lez0$b;->a:Lez0;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lez0;->q(Lez0;Ljava/lang/String;)V

    return-void
.end method
