.class public final Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;
.super Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\n\"\u0004\u0008\u0016\u0010\u000cR\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\n\"\u0004\u0008\u0019\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;",
        "Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;",
        "taskId",
        "",
        "fileId",
        "fileName",
        "path",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "contentHash",
        "getContentHash",
        "()Ljava/lang/String;",
        "setContentHash",
        "(Ljava/lang/String;)V",
        "crcAlgorithm",
        "getCrcAlgorithm",
        "setCrcAlgorithm",
        "getFileId",
        "getFileName",
        "setFileName",
        "getPath",
        "tempFilePath",
        "getTempFilePath",
        "setTempFilePath",
        "url",
        "getUrl",
        "setUrl",
        "toString",
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
.field private contentHash:Ljava/lang/String;

.field private crcAlgorithm:Ljava/lang/String;

.field private final fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private tempFilePath:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->path:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->crcAlgorithm:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->contentHash:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->tempFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContentHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->contentHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getCrcAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->crcAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getTempFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->tempFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final setContentHash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->contentHash:Ljava/lang/String;

    return-void
.end method

.method public final setCrcAlgorithm(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->crcAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setTempFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->tempFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->crcAlgorithm:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->contentHash:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/DownloadTaskInfo;->tempFilePath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadTaskInfo(fileId=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', fileName=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', path=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', url=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',crcAlgorithm=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', contentHash=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', tempFilePath=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
