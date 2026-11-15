.class public final Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->D(Ljava/lang/String;)V
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
        "com/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1",
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
.field final synthetic $fileId:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->$fileId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    invoke-static {v0}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->k(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Lmq3;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->$fileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmq3;->delete(Ljava/lang/String;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->$fileId:Ljava/lang/String;

    .line 4
    instance-of v3, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete cloud file success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object v2, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->$fileId:Ljava/lang/String;

    .line 7
    instance-of v3, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    if-eqz v3, :cond_1

    .line 8
    move-object v3, v0

    check-cast v3, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;

    .line 9
    invoke-static {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getErrorCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete cloud file failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->this$0:Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->$fileId:Ljava/lang/String;

    .line 11
    instance-of v0, v0, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;

    if-eqz v0, :cond_2

    .line 12
    invoke-static {v1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;->n(Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete cloud file exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/cloudcore/cloudapi/impl/CloudUploadManagerImpl$deleteCloudFile$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
