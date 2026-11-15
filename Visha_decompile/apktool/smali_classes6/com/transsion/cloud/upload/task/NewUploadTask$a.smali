.class public Lcom/transsion/cloud/upload/task/NewUploadTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb41;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/upload/task/NewUploadTask;-><init>(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/upload/task/NewUploadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/task/NewUploadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->COMPLETED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    instance-of v0, p2, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    const-string v1, "visha_cloud_NewUploadTask"

    if-eqz v0, :cond_0

    check-cast p2, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete uploadTaskInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v0, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->setFileId(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComplete taskId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p2, p2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskInfo:Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;->getFileId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->n(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->h(Lcom/transsion/cloud/upload/task/NewUploadTask;)Lju4;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v0, p2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mTaskId:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->g(Lcom/transsion/cloud/upload/task/NewUploadTask;)Lb41;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Liu4;->i(Ljava/lang/String;Lb41;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/cloud/upload/task/NewUploadTask;->q(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const-string p2, "cloud_upload_finish"

    invoke-static {p0, p1, p2}, Lcz5;->j(JLjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->q(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCancel taskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_NewUploadTask"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->q(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {p0, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPause taskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_NewUploadTask"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->h(Lcom/transsion/cloud/upload/task/NewUploadTask;)Lju4;

    move-result-object v0

    invoke-interface {v0, p1}, Liu4;->e(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-result-object v0

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESSING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p1, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->s(Lcom/transsion/cloud/upload/task/NewUploadTask;I)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->transcodingProgress:I

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->transcodingProgress:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iput p2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->transcodingProgress:I

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->r(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->p(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_cloud_NewUploadTask"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 v6, 0x0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v1 .. v6}, Lcom/transsion/cloud/upload/task/NewUploadTask;->l(Lcom/transsion/cloud/upload/task/NewUploadTask;JJZ)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->q(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->h(Lcom/transsion/cloud/upload/task/NewUploadTask;)Lju4;

    move-result-object v0

    invoke-interface {v0, p1}, Liu4;->e(Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/cloudapi/model/CloudUploadTaskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-result-object v0

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PROCESS_FAIL:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p1, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    invoke-static {p0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->o(Lcom/transsion/cloud/upload/task/NewUploadTask;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->FAILED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_cloud_NewUploadTask"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->m(Lcom/transsion/cloud/upload/task/NewUploadTask;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getCode()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p0, p1}, Lcz5;->i(ZLjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->RUNNING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {v0, v1}, Lcom/transsion/cloud/upload/task/NewUploadTask;->k(Lcom/transsion/cloud/upload/task/NewUploadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_cloud_NewUploadTask"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->s(Lcom/transsion/cloud/upload/task/NewUploadTask;I)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->speed:J

    iget-object v2, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p1, v2, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v3, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide v5, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/transsion/cloud/upload/task/NewUploadTask;->l(Lcom/transsion/cloud/upload/task/NewUploadTask;JJZ)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/cloud/upload/task/NewUploadTask;->q(Lcom/transsion/cloud/upload/task/NewUploadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask$a;->a:Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object p0, p0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-wide p0, p0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const-string v0, "cloud_upload_start"

    invoke-static {p0, p1, v0}, Lcz5;->j(JLjava/lang/String;)V

    return-void
.end method
