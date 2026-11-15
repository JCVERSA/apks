.class public Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0016\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0017\"\u0004\u0008#\u0010\u0019R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;",
        "",
        "taskId",
        "",
        "fileName",
        "fileSize",
        "",
        "status",
        "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;",
        "currentBytes",
        "createTime",
        "updateTime",
        "errorInfo",
        "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V",
        "getTaskId",
        "()Ljava/lang/String;",
        "setTaskId",
        "(Ljava/lang/String;)V",
        "getFileName",
        "setFileName",
        "getFileSize",
        "()J",
        "setFileSize",
        "(J)V",
        "getStatus",
        "()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;",
        "setStatus",
        "(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V",
        "getCurrentBytes",
        "setCurrentBytes",
        "getCreateTime",
        "setCreateTime",
        "getUpdateTime",
        "setUpdateTime",
        "getErrorInfo",
        "()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;",
        "setErrorInfo",
        "(Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V",
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
.field private createTime:J

.field private currentBytes:J

.field private errorInfo:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private status:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

.field private taskId:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->taskId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->fileName:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->fileSize:J

    .line 5
    iput-object p5, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->status:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    .line 6
    iput-wide p6, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->currentBytes:J

    .line 7
    iput-wide p8, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->createTime:J

    .line 8
    iput-wide p10, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->updateTime:J

    .line 9
    iput-object p12, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->errorInfo:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    .line 10
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->WAITING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v10, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p8

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p10

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_4

    :cond_4
    move-object/from16 v14, p12

    :goto_4
    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 13
    invoke-direct/range {v2 .. v14}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-void
.end method


# virtual methods
.method public final getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->createTime:J

    return-wide v0
.end method

.method public final getCurrentBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->currentBytes:J

    return-wide v0
.end method

.method public final getErrorInfo()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->errorInfo:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->fileSize:J

    return-wide v0
.end method

.method public final getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->status:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    return-object p0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->updateTime:J

    return-wide v0
.end method

.method public final setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->createTime:J

    return-void
.end method

.method public final setCurrentBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->currentBytes:J

    return-void
.end method

.method public final setErrorInfo(Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->errorInfo:Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->fileSize:J

    return-void
.end method

.method public final setStatus(Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->status:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->taskId:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->updateTime:J

    return-void
.end method
