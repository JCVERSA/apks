.class public Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb41;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/clouddownload/CloudDownloadTask;-><init>(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lzy/okgo/model/Progress;

.field public final synthetic b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iput-object p2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->o(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Z)V

    iget-object p2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->COMPLETED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {p2, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->m(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComplete taskId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "visha_cloud_CloudDownloadTask"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object p2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->postOnFinish(Lcom/lzy/okgo/model/Progress;Ljava/io/File;)V

    iget-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    invoke-static {p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->i(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Lfu4;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object v0, p2, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->mTaskId:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->j(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;)Lb41;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Liu4;->i(Ljava/lang/String;Lb41;)V

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    iget-wide p0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-string p2, "cloud_download_finish"

    invoke-static {p0, p1, p2}, Lcz5;->j(JLjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->o(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->CANCELED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {p0, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->m(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCancel taskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_CloudDownloadTask"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->o(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    sget-object v0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->PAUSED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {p0, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->m(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPause taskId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_CloudDownloadTask"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;JJ)V
    .locals 8

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

    const-string v0, "visha_cloud_CloudDownloadTask"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object v2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    const/4 v7, 0x0

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->n(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;JJZ)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->o(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Z)V

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->FAILED:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {v0, v2}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->m(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError taskId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_cloud_CloudDownloadTask"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v3}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->access$000(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    iget-object p0, p0, Lcom/lzy/okgo/model/Progress;->fileName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;->getCode()I

    move-result p1

    invoke-static {v1, p0, p1}, Lcz5;->i(ZLjava/lang/String;I)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->RUNNING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    invoke-static {v0, v1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->m(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lzy/okgo/model/Progress;->status:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/lzy/okgo/model/Progress;->speed:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_cloud_CloudDownloadTask"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object v2, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    iget-wide v3, v2, Lcom/lzy/okgo/model/Progress;->currentSize:J

    iget-wide v5, v2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->n(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;JJZ)V

    iget-object p1, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->o(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Z)V

    iget-object p0, p0, Lcom/transsion/cloud/clouddownload/CloudDownloadTask$a;->a:Lcom/lzy/okgo/model/Progress;

    iget-wide p0, p0, Lcom/lzy/okgo/model/Progress;->totalSize:J

    const-string v0, "cloud_download_start"

    invoke-static {p0, p1, v0}, Lcz5;->j(JLjava/lang/String;)V

    return-void
.end method
