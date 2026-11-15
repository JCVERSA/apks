.class public Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;",
        "",
        "taskId",
        "",
        "(Ljava/lang/String;)V",
        "fileSize",
        "",
        "getFileSize",
        "()J",
        "setFileSize",
        "(J)V",
        "status",
        "Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;",
        "getStatus",
        "()Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;",
        "setStatus",
        "(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V",
        "getTaskId",
        "()Ljava/lang/String;",
        "transferredSize",
        "getTransferredSize",
        "setTransferredSize",
        "cloud-drive-transfer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private fileSize:J

.field private status:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

.field private final taskId:Ljava/lang/String;

.field private transferredSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->taskId:Ljava/lang/String;

    sget-object p1, Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;->IDLE:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->status:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    return-void
.end method


# virtual methods
.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->fileSize:J

    return-wide v0
.end method

.method public final getStatus()Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->status:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    return-object p0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTransferredSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->transferredSize:J

    return-wide v0
.end method

.method public final setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->fileSize:J

    return-void
.end method

.method public final setStatus(Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->status:Lcom/transsion/cloud_drive/transfer/api/model/TransferStatus;

    return-void
.end method

.method public final setTransferredSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->transferredSize:J

    return-void
.end method
