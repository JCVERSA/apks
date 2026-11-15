.class public final Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;
.super Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u001b\u001a\u00020\u0003H\u0016R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;",
        "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;",
        "taskId",
        "",
        "fileName",
        "fileSize",
        "",
        "fileId",
        "savePath",
        "checkFileHash",
        "",
        "fileHash",
        "status",
        "Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;",
        "currentBytes",
        "createTime",
        "updateTime",
        "errorInfo",
        "Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V",
        "getFileId",
        "()Ljava/lang/String;",
        "getSavePath",
        "getCheckFileHash",
        "()Z",
        "getFileHash",
        "toString",
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
.field private final checkFileHash:Z

.field private final fileHash:Ljava/lang/String;

.field private final fileId:Ljava/lang/String;

.field private final savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const-string v0, "taskId"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePath"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v5, p9

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move-wide/from16 v6, p10

    move-wide/from16 v8, p12

    move-wide/from16 v10, p14

    move-object/from16 v12, p16

    .line 5
    invoke-direct/range {v0 .. v12}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    .line 6
    iput-object v14, v13, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->fileId:Ljava/lang/String;

    .line 7
    iput-object v15, v13, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    move/from16 v0, p7

    .line 8
    iput-boolean v0, v13, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->checkFileHash:Z

    move-object/from16 v0, p8

    .line 9
    iput-object v0, v13, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->fileHash:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v9, v1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    .line 1
    sget-object v1, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;->WAITING:Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    const-wide/16 v3, 0x0

    move-wide v12, v3

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v14, p12

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v16, p14

    :goto_5
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    move-object/from16 v18, v2

    goto :goto_6

    :cond_6
    move-object/from16 v18, p16

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 4
    invoke-direct/range {v2 .. v18}, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;JJJLcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;)V

    return-void
.end method


# virtual methods
.method public final getCheckFileHash()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->checkFileHash:Z

    return p0
.end method

.method public final getFileHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->fileHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getFileSize()J

    move-result-wide v3

    iget-object v5, v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->fileId:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->savePath:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->checkFileHash:Z

    iget-object v8, v0, Lcom/transsion/cloudcore/cloudapi/model/CloudDownloadTaskInfo;->fileHash:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getStatus()Lcom/transsion/cloudcore/cloudapi/model/TransferTaskStatus;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getCurrentBytes()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getCreateTime()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getUpdateTime()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/cloudcore/cloudapi/model/TransferTaskInfo;->getErrorInfo()Lcom/transsion/cloudcore/cloudapi/model/TransferErrorInfo;

    move-result-object v0

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v14

    const-string v14, "CloudDownloadTaskInfo(taskId=\'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', savePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', checkFileHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
