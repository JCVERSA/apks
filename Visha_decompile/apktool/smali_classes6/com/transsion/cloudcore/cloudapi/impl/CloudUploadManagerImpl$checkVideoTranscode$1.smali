.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->B(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1",
        "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;",
        "Ljava/lang/Void;",
        "doInBackground",
        "()Ljava/lang/Void;",
        "result",
        "Lzfb;",
        "onSuccess",
        "(Ljava/lang/Void;)V",
        "cloudcore_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $taskId:Ljava/lang/String;

.field final synthetic $taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

.field final synthetic this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    iput-object p3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 11

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->k(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Lmq3;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lmq3;->f(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    .line 4
    instance-of v5, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v5, :cond_a

    .line 5
    move-object v5, v1

    check-cast v5, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    .line 6
    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 7
    invoke-static {v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->getStatus()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_6

    :cond_0
    move-object v7, v0

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkVideoTranscode onSuccess: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->getStatus()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x447f341d

    if-eq v7, v8, :cond_5

    const v8, 0x24a738

    if-eq v7, v8, :cond_4

    const v8, 0x7b29883d

    if-eq v7, v8, :cond_2

    goto :goto_3

    :cond_2
    const-string v7, "FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v4, v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 10
    new-instance v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v6

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-static {v2, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    goto :goto_5

    .line 12
    :cond_4
    const-string v7, "NONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_5
    const-string v7, "SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    :goto_2
    invoke-static {v2, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->x(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;)V

    goto :goto_5

    .line 14
    :cond_7
    :goto_3
    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->getCompletedTime()Ljava/time/LocalDateTime;

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v0

    :goto_4
    invoke-static {v2, v3, v4, v5}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->z(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/time/LocalDateTime;)V

    goto :goto_5

    .line 15
    :cond_9
    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v4, v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 16
    new-instance v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v6

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    .line 17
    :cond_a
    :goto_5
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    iget-object v4, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskId:Ljava/lang/String;

    .line 18
    instance-of v5, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v5, :cond_b

    .line 19
    move-object v5, v1

    check-cast v5, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    .line 20
    invoke-static {v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v7

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkVideoTranscode onError :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " messge\uff1a"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget-object v6, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v3, v6}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 22
    new-instance v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v5}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v4, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    .line 23
    :cond_b
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    iget-object v4, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskId:Ljava/lang/String;

    .line 24
    instance-of v5, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v5, :cond_f

    .line 25
    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    .line 26
    invoke-static {v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkVideoTranscode onException messge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v3, v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 28
    new-instance v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v6

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_c
    invoke-direct {v3, v6, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v4, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    goto :goto_7

    .line 29
    :cond_d
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v1, v2}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 30
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskId:Ljava/lang/String;

    new-instance v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 31
    :goto_6
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v2}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVideoTranscode error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    sget-object v3, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-virtual {v2, v3}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    .line 33
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->$taskId:Ljava/lang/String;

    new-instance v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->VIDEOTRANSCODE_STATUS_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-direct {v3, v5, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, p0, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    :cond_f
    :goto_7
    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$checkVideoTranscode$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
