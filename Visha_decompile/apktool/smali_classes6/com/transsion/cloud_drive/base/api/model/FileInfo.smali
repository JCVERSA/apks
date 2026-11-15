.class public final Lcom/transsion/cloud_drive/base/api/model/FileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J.\u0010a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u000b\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R&\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015R&\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001c\u0010\u000b\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R&\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008#\u0010\u000b\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u0010(\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008)\u0010\u000b\u001a\u0004\u0008*\u0010\u0013\"\u0004\u0008+\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0013R$\u0010-\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008.\u0010\u000b\u001a\u0004\u0008/\u0010\r\"\u0004\u00080\u0010\u000fR$\u00101\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00082\u0010\u000b\u001a\u0004\u00083\u0010\u0013\"\u0004\u00084\u0010\u0015R$\u00105\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00086\u0010\u000b\u001a\u0004\u00087\u0010\u0013\"\u0004\u00088\u0010\u0015R$\u00109\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008:\u0010\u000b\u001a\u0004\u0008;\u0010\u0013\"\u0004\u0008<\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u0013R$\u0010>\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008?\u0010\u000b\u001a\u0004\u0008@\u0010\u0013\"\u0004\u0008A\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\u0013R&\u0010C\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008E\u0010\u000b\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR&\u0010J\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008L\u0010\u000b\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR&\u0010Q\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008R\u0010\u000b\u001a\u0004\u0008S\u0010\u001e\"\u0004\u0008T\u0010 R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010\u0013R&\u0010V\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008W\u0010\u000b\u001a\u0004\u0008X\u0010\u001e\"\u0004\u0008Y\u0010 R&\u0010Z\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\\\u0010\u000b\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`\u00a8\u0006b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FileInfo;",
        "",
        "fileId",
        "",
        "name",
        "parentId",
        "type",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "autoDeleteLeftSec",
        "",
        "getAutoDeleteLeftSec$annotations",
        "()V",
        "getAutoDeleteLeftSec",
        "()J",
        "setAutoDeleteLeftSec",
        "(J)V",
        "category",
        "getCategory$annotations",
        "getCategory",
        "()Ljava/lang/String;",
        "setCategory",
        "(Ljava/lang/String;)V",
        "contentType",
        "getContentType$annotations",
        "getContentType",
        "setContentType",
        "createTime",
        "Ljava/time/LocalDateTime;",
        "getCreateTime$annotations",
        "getCreateTime",
        "()Ljava/time/LocalDateTime;",
        "setCreateTime",
        "(Ljava/time/LocalDateTime;)V",
        "dirInfo",
        "Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;",
        "getDirInfo$annotations",
        "getDirInfo",
        "()Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;",
        "setDirInfo",
        "(Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;)V",
        "fileExtension",
        "getFileExtension$annotations",
        "getFileExtension",
        "setFileExtension",
        "getFileId",
        "fileSize",
        "getFileSize$annotations",
        "getFileSize",
        "setFileSize",
        "idPath",
        "getIdPath$annotations",
        "getIdPath",
        "setIdPath",
        "mimeExtension",
        "getMimeExtension$annotations",
        "getMimeExtension",
        "setMimeExtension",
        "mimeType",
        "getMimeType$annotations",
        "getMimeType",
        "setMimeType",
        "getName",
        "namePath",
        "getNamePath$annotations",
        "getNamePath",
        "setNamePath",
        "getParentId",
        "thumbnailUrls",
        "Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;",
        "getThumbnailUrls$annotations",
        "getThumbnailUrls",
        "()Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;",
        "setThumbnailUrls",
        "(Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;)V",
        "thumbnailVersion",
        "Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;",
        "getThumbnailVersion$annotations",
        "getThumbnailVersion",
        "()Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;",
        "setThumbnailVersion",
        "(Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;)V",
        "trashedTime",
        "getTrashedTime$annotations",
        "getTrashedTime",
        "setTrashedTime",
        "getType",
        "updateTime",
        "getUpdateTime$annotations",
        "getUpdateTime",
        "setUpdateTime",
        "videoMetaInfo",
        "Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;",
        "getVideoMetaInfo$annotations",
        "getVideoMetaInfo",
        "()Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;",
        "setVideoMetaInfo",
        "(Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;)V",
        "copy",
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
.field private autoDeleteLeftSec:J

.field private category:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private createTime:Ljava/time/LocalDateTime;

.field private dirInfo:Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;

.field private fileExtension:Ljava/lang/String;

.field private final fileId:Ljava/lang/String;

.field private fileSize:J

.field private idPath:Ljava/lang/String;

.field private mimeExtension:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private namePath:Ljava/lang/String;

.field private final parentId:Ljava/lang/String;

.field private thumbnailUrls:Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

.field private thumbnailVersion:Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;

.field private trashedTime:Ljava/time/LocalDateTime;

.field private final type:Ljava/lang/String;

.field private updateTime:Ljava/time/LocalDateTime;

.field private videoMetaInfo:Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;


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
            name = "name"
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->name:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->parentId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->type:Ljava/lang/String;

    .line 6
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->category:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->idPath:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->namePath:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->contentType:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeType:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeExtension:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    .line 13
    const-string v0, ""

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/FileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/FileInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->parentId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->type:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAutoDeleteLeftSec$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "auto_delete_left_sec"
    .end annotation

    return-void
.end method

.method public static synthetic getCategory$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "category"
    .end annotation

    return-void
.end method

.method public static synthetic getContentType$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "content_type"
    .end annotation

    return-void
.end method

.method public static synthetic getCreateTime$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "created_at"
    .end annotation

    return-void
.end method

.method public static synthetic getDirInfo$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "dir_size_info"
    .end annotation

    return-void
.end method

.method public static synthetic getFileExtension$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "file_extension"
    .end annotation

    return-void
.end method

.method public static synthetic getFileSize$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "size"
    .end annotation

    return-void
.end method

.method public static synthetic getIdPath$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "id_path"
    .end annotation

    return-void
.end method

.method public static synthetic getMimeExtension$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "mime_extension"
    .end annotation

    return-void
.end method

.method public static synthetic getMimeType$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "mime_type"
    .end annotation

    return-void
.end method

.method public static synthetic getNamePath$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "name_path"
    .end annotation

    return-void
.end method

.method public static synthetic getThumbnailUrls$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "thumbnail_urls"
    .end annotation

    return-void
.end method

.method public static synthetic getThumbnailVersion$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "thumbnail_versions"
    .end annotation

    return-void
.end method

.method public static synthetic getTrashedTime$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "trashed_at"
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateTime$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "updated_at"
    .end annotation

    return-void
.end method

.method public static synthetic getVideoMetaInfo$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "video_media_metadata"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/model/FileInfo;
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/api/model/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileSize:J

    iput-wide p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileSize:J

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->category:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->category:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->idPath:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->idPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->namePath:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->namePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->contentType:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->contentType:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeType:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeType:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeExtension:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeExtension:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileExtension:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileExtension:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailUrls:Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailUrls:Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailVersion:Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailVersion:Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->dirInfo:Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->dirInfo:Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->videoMetaInfo:Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->videoMetaInfo:Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->trashedTime:Ljava/time/LocalDateTime;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->trashedTime:Ljava/time/LocalDateTime;

    iget-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->autoDeleteLeftSec:J

    iput-wide p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->autoDeleteLeftSec:J

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->createTime:Ljava/time/LocalDateTime;

    iput-object p1, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->createTime:Ljava/time/LocalDateTime;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->updateTime:Ljava/time/LocalDateTime;

    iput-object p0, v0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->updateTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method public final getAutoDeleteLeftSec()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->autoDeleteLeftSec:J

    return-wide v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreateTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->createTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getDirInfo()Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->dirInfo:Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;

    return-object p0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileSize:J

    return-wide v0
.end method

.method public final getIdPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->idPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMimeExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeExtension:Ljava/lang/String;

    return-object p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNamePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->namePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getThumbnailUrls()Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailUrls:Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

    return-object p0
.end method

.method public final getThumbnailVersion()Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailVersion:Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;

    return-object p0
.end method

.method public final getTrashedTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->trashedTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdateTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->updateTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getVideoMetaInfo()Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->videoMetaInfo:Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;

    return-object p0
.end method

.method public final setAutoDeleteLeftSec(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->autoDeleteLeftSec:J

    return-void
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setCreateTime(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->createTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final setDirInfo(Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->dirInfo:Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;

    return-void
.end method

.method public final setFileExtension(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->fileSize:J

    return-void
.end method

.method public final setIdPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->idPath:Ljava/lang/String;

    return-void
.end method

.method public final setMimeExtension(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeExtension:Ljava/lang/String;

    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public final setNamePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->namePath:Ljava/lang/String;

    return-void
.end method

.method public final setThumbnailUrls(Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailUrls:Lcom/transsion/cloud_drive/base/api/model/FileThumbnail;

    return-void
.end method

.method public final setThumbnailVersion(Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->thumbnailVersion:Lcom/transsion/cloud_drive/base/api/model/FileThumbnailVersion;

    return-void
.end method

.method public final setTrashedTime(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->trashedTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final setUpdateTime(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->updateTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final setVideoMetaInfo(Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileInfo;->videoMetaInfo:Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;

    return-void
.end method
