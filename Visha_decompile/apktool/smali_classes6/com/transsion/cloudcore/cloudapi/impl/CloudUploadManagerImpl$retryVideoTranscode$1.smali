.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->b(Ljava/lang/String;)V
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
        "com/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1",
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

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    iput-object p3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->k(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Lmq3;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    invoke-virtual {v2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lmq3;->b(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    .line 4
    instance-of v5, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v5, :cond_0

    .line 5
    move-object v5, v1

    check-cast v5, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    .line 6
    invoke-static {v2, v3, v4, v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->z(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;Ljava/time/LocalDateTime;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    instance-of v4, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v4, :cond_1

    .line 8
    move-object v4, v1

    check-cast v4, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    .line 9
    new-instance v5, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v4}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v3, v5}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    .line 10
    :cond_1
    instance-of v4, v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v4, :cond_5

    .line 11
    check-cast v1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    .line 12
    new-instance v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v5, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->RETRY_VIDEOTRANSCODE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v6

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v5}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-direct {v4, v6, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskId:Ljava/lang/String;

    new-instance v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->RETRY_VIDEOTRANSCODE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->$taskId:Ljava/lang/String;

    new-instance v3, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    sget-object v4, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->RETRY_VIDEOTRANSCODE_ERROR:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getCode()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v4}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-direct {v3, v5, v1}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v2, p0, v3}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->t(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    :cond_5
    :goto_2
    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$retryVideoTranscode$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
