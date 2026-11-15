.class public final Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;
.super Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010#\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0008\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008R \u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;",
        "Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;",
        "taskId",
        "",
        "file",
        "parentId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getFile",
        "()Ljava/lang/String;",
        "fileId",
        "getFileId",
        "setFileId",
        "(Ljava/lang/String;)V",
        "fileInfo",
        "Lcom/transsion/cloud_drive/base/api/model/FileInfo;",
        "getFileInfo",
        "()Lcom/transsion/cloud_drive/base/api/model/FileInfo;",
        "setFileInfo",
        "(Lcom/transsion/cloud_drive/base/api/model/FileInfo;)V",
        "fileName",
        "getFileName",
        "hasTranscodeTask",
        "",
        "getHasTranscodeTask",
        "()Z",
        "setHasTranscodeTask",
        "(Z)V",
        "getParentId",
        "tags",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;",
        "getTags",
        "()Ljava/util/List;",
        "setTags",
        "(Ljava/util/List;)V",
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
.field private final file:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileInfo:Lcom/transsion/cloud_drive/base/api/model/FileInfo;

.field private final fileName:Ljava/lang/String;

.field private hasTranscodeTask:Z

.field private final parentId:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->file:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->parentId:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getName(...)"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileName:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileId:Ljava/lang/String;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->tags:Ljava/util/List;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/transfer/api/model/BaseTaskInfo;->setFileSize(J)V

    return-void
.end method


# virtual methods
.method public final getFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->file:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileInfo()Lcom/transsion/cloud_drive/base/api/model/FileInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileInfo:Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHasTranscodeTask()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->hasTranscodeTask:Z

    return p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->tags:Ljava/util/List;

    return-object p0
.end method

.method public final setFileId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileId:Ljava/lang/String;

    return-void
.end method

.method public final setFileInfo(Lcom/transsion/cloud_drive/base/api/model/FileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileInfo:Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    return-void
.end method

.method public final setHasTranscodeTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->hasTranscodeTask:Z

    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/FileUserTag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->file:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->parentId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/api/model/UploadTaskInfo;->fileId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UploadTaskInfo(file=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', parentId=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', fileName=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', fileId=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
