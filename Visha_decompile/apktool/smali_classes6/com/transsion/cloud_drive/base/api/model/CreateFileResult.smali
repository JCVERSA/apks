.class public final Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R$\u0010\u0008\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000cR$\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\n\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000cR*\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008 \u0010\n\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010%\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008&\u0010\n\u001a\u0004\u0008\'\u0010\u0013\"\u0004\u0008(\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u000cR$\u0010*\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008+\u0010\n\u001a\u0004\u0008,\u0010\u000c\"\u0004\u0008-\u0010\u000e\u00a8\u0006."
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;",
        "",
        "fileId",
        "",
        "name",
        "parentId",
        "type",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "crc",
        "getCrc$annotations",
        "()V",
        "getCrc",
        "()Ljava/lang/String;",
        "setCrc",
        "(Ljava/lang/String;)V",
        "exist",
        "",
        "getExist$annotations",
        "getExist",
        "()Z",
        "setExist",
        "(Z)V",
        "getFileId",
        "hasTranscodeTask",
        "getHasTranscodeTask$annotations",
        "getHasTranscodeTask",
        "setHasTranscodeTask",
        "getName",
        "getParentId",
        "partInfoList",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;",
        "getPartInfoList$annotations",
        "getPartInfoList",
        "()Ljava/util/List;",
        "setPartInfoList",
        "(Ljava/util/List;)V",
        "rapidUpload",
        "getRapidUpload$annotations",
        "getRapidUpload",
        "setRapidUpload",
        "getType",
        "uploadId",
        "getUploadId$annotations",
        "getUploadId",
        "setUploadId",
        "cloud-drive-base_release"
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
.field private crc:Ljava/lang/String;

.field private exist:Z

.field private final fileId:Ljava/lang/String;

.field private hasTranscodeTask:Z

.field private final name:Ljava/lang/String;

.field private final parentId:Ljava/lang/String;

.field private partInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rapidUpload:Z

.field private final type:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "file_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "file_name"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "parent_file_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "type"
        .end annotation
    .end param

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->parentId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->type:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->uploadId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->crc:Ljava/lang/String;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->partInfoList:Ljava/util/List;

    return-void
.end method

.method public static synthetic getCrc$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "crc"
    .end annotation

    return-void
.end method

.method public static synthetic getExist$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "exist"
    .end annotation

    return-void
.end method

.method public static synthetic getHasTranscodeTask$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "has_transcode_task"
    .end annotation

    return-void
.end method

.method public static synthetic getPartInfoList$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "part_info_list"
    .end annotation

    return-void
.end method

.method public static synthetic getRapidUpload$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "rapid_upload"
    .end annotation

    return-void
.end method

.method public static synthetic getUploadId$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "upload_id"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getCrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->crc:Ljava/lang/String;

    return-object p0
.end method

.method public final getExist()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->exist:Z

    return p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getHasTranscodeTask()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->hasTranscodeTask:Z

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPartInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->partInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getRapidUpload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->rapidUpload:Z

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUploadId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->uploadId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCrc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->crc:Ljava/lang/String;

    return-void
.end method

.method public final setExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->exist:Z

    return-void
.end method

.method public final setHasTranscodeTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->hasTranscodeTask:Z

    return-void
.end method

.method public final setPartInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->partInfoList:Ljava/util/List;

    return-void
.end method

.method public final setRapidUpload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->rapidUpload:Z

    return-void
.end method

.method public final setUploadId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CreateFileResult;->uploadId:Ljava/lang/String;

    return-void
.end method
