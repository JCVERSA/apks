.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lof7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->C(Ljava/lang/String;)Lof7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->i(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->j(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->k(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;Ljava/lang/Throwable;)Z
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->o(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic e(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;JJ)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->n(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;JJ)V

    return-void
.end method

.method public bridge synthetic f(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;Lr5b;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->l(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;Lr5b;)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->p(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->m(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V
    .locals 2

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->r(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->m(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V
    .locals 5

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getHasTranscodeTask()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasTranscodeTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->m(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->setFileId(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getHasTranscodeTask()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setFileName(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->setFileId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2, p1, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->j(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->COMPLETED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v0, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v0, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setFileName(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v0, v2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->setFileId(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u5b8c\u6210"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v3, "visha_cloud_CloudUploadManagerImpl"

    invoke-static {v3, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2, p1, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->s(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->m(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;
    .locals 0

    const-string p0, "taskId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sdkTaskInfo"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;->REPLACE:Lcom/transsion/cloud_drive/transfer/common/ConflictResolution;

    return-object p0
.end method

.method public l(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;Lr5b;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "errorInfo"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "CloudUploadManagerImpl"

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->FAILED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    invoke-virtual {p3}, Lr5b;->a()I

    move-result v1

    invoke-virtual {p3}, Lr5b;->b()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setErrorInfo(Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getErrorInfo()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p3, p1, p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->m(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V
    .locals 2

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {p2, v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->u(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;JJ)V
    .locals 8

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->o(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setCurrentBytes(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setUpdateTime(J)V

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->v(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;JJ)V

    return-void
.end method

.method public o(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;Ljava/lang/Throwable;)Z
    .locals 0

    const-string p0, "taskId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sdkTaskInfo"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public p(Ljava/lang/String;Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;)V
    .locals 2

    const-string v0, "sdkTaskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkTaskInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$b;->a:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->w(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V

    return-void
.end method
